import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/showinfopopap.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';

class AnalyticsWidget extends StatelessWidget {
  final List<AnalystRatingData> data;
  final ChatRouting chatRouting;
  const AnalyticsWidget({
    super.key,
    required this.data,
    required this.chatRouting,
  });

  @override
  Widget build(BuildContext context) {
    String question =
        "Analyze analyst sentiment for ${chatRouting!.companyName}";
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.colorB3B3B3),
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShowInfoPopup(
              chatRouting: chatRouting,
              question: question,
              text: "Analyst Sentiment",
              child: MdSnsText(
                'ANALYST RATINGS'.capitalize(),
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h3,
                color: AppColors.fieldTextColor,
              ),
            ),

            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Left Column: Buy / 77 Analyst
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MdSnsText(
                      'Buy',
                      variant: TextVariant.h3,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.color00FF55,
                    ),

                    // SizedBox(height: 10.h),
                    MdSnsText(
                      '${data[0].analystCount} Analyst',
                      variant: TextVariant.h3,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.color00FF55,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    CustomPaint(
                      painter: GaugePainter(ratingValue: 0.70),
                      size: Size(110, 90),
                    ),
                    SizedBox(height: 20.h),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MdSnsText(
                            'Bearish',
                            color: AppColors.redFF3B3B,
                            variant: TextVariant.h4,
                          ),
                          SizedBox(width: 30.w),
                          MdSnsText(
                            'Hold',
                            color: AppColors.white,
                            variant: TextVariant.h4,
                          ),
                          SizedBox(width: 30.w),
                          MdSnsText(
                            'Bullish',
                            color: AppColors.color00FF55,
                            variant: TextVariant.h4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

const Color color1 = Color(0xFFE53935); // Red
const Color color2 = Color(0xFFFF9800); // Orange
const Color color3 = Color(0xFFFFF176); // Yellow
const Color color4 = Color(0xFF81C784); // Light Green
const Color color5 = Color(0xFF4CAF50); // Green

class GaugePainter extends CustomPainter {
  final double ratingValue;

  GaugePainter({required this.ratingValue});

  @override
  void paint(Canvas canvas, Size size) {
    // 🔽 Move the center lower to make arc taller
    final Offset center = Offset(size.width / 2, size.height);
    final double radius = min(size.width / 2, size.height) * 1.3;
    final Rect rect = Rect.fromCircle(center: center, radius: radius);

    const double startAngle = pi;
    const double sweepAngle = pi;
    final int totalSegments = 5;
    final double segmentAngle = sweepAngle / totalSegments;
    final double arcWidth = 4;
    final double gap = 0.05;

    void drawSegment(double start, double sweep, Color color) {
      final Paint paint = Paint()
        ..color = color
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = arcWidth;

      canvas.drawArc(rect, start, sweep, false, paint);
    }

    final List<Color> colors = [color1, color2, color3, color4, color5];

    for (int i = 0; i < totalSegments; i++) {
      final double start = startAngle + i * (segmentAngle + gap);
      drawSegment(start, segmentAngle - gap, colors[i]);
    }

    // 🕹️ Needle
    final double needleAngle = startAngle + (ratingValue * sweepAngle);
    final double needleRadius = radius * 0.8;
    final Offset needleEndPoint = Offset(
      center.dx + needleRadius * cos(needleAngle),
      center.dy + needleRadius * sin(needleAngle),
    );

    final Paint needlePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawLine(center, needleEndPoint, needlePaint);

    // ⚪ Center Pin
    final Paint pinPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 5.0, pinPaint);
  }

  @override
  bool shouldRepaint(covariant GaugePainter oldDelegate) =>
      oldDelegate.ratingValue != ratingValue;
}
