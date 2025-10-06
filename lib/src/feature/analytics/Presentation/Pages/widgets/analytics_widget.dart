import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';

class AnalyticsWidget extends StatelessWidget {
  final List<AnalystRatingData> data;
  const AnalyticsWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: const Color(0xFF0B132B),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF0B132B),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MdSnsText(
              'ANALYST RATINGS',
              variant: TextVariant.h7,
              fontWeight: TextFontWeightVariant.h4,
              color: AppColors.white,
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
                    SizedBox(height: 10.h),

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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MdSnsText(
                            'Bearish',
                            color: AppColors.redFF3B3B,
                            variant: TextVariant.h4,
                          ),
                          SizedBox(width: 5.w),
                          MdSnsText(
                            'Hold',
                            color: AppColors.white,
                            variant: TextVariant.h4,
                          ),
                          SizedBox(width: 5.w),
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

const Color bearishColor = Color(0xFFE53935); // Red
const Color holdColor = Color(0xFFFFF176); // Yellow
const Color bullishColor = Color(0xFF4CAF50); // Green

class GaugePainter extends CustomPainter {
  // Value from 0.0 (Bearish) to 1.0 (Bullish)
  final double ratingValue;

  GaugePainter({required this.ratingValue});

  @override
  void paint(Canvas canvas, Size size) {
    // --- 1. Define Key Geometry ---

    // The center of the circle (placed at the bottom center of the widget area)
    final Offset center = Offset(size.width / 2, size.height);
    // The radius is constrained by the width/2 or height
    final double radius = min(size.width / 2, size.height) * 0.9;

    // The bounding box for the arc (rectangle that would enclose the full circle)
    final Rect rect = Rect.fromCircle(center: center, radius: radius);

    // Starting the arc at 180 degrees (pi) and ending at 360 degrees (2*pi)
    const double startAngle = pi;
    const double sweepAngle = pi; // 180 degrees

    // --- 2. Draw the Colored Segments ---

    // The arc segment size (180 degrees / 3 segments = 60 degrees/segment = pi/3 radians)
    final double segmentAngle = pi / 3;
    final double arcWidth = 3; // Thickness of the arc

    void drawSegment(double start, double sweep, Color color) {
      final Paint segmentPaint = Paint()
        ..color = color
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = arcWidth;

      canvas.drawArc(rect, start, sweep, false, segmentPaint);
    }

    // Bearish (Red) - pi to pi + pi/3
    drawSegment(startAngle, segmentAngle, bearishColor);
    drawSegment(startAngle + 1, segmentAngle, bearishColor);

    // Hold (Yellow/Orange) - pi + pi/3 to pi + 2*pi/3
    drawSegment(startAngle + segmentAngle, segmentAngle, holdColor);

    // Bullish (Green) - pi + 2*pi/3 to 2*pi
    drawSegment(startAngle + 2 * segmentAngle, segmentAngle, bullishColor);

    // --- 3. Draw the Needle/Pointer ---

    // Map the ratingValue (0.0 to 1.0) to the angular sweep (pi to 2*pi)
    // The angle of the needle, relative to the horizontal (x-axis)
    final double needleAngle = startAngle + (ratingValue * sweepAngle);

    // Calculate the end point of the needle using polar to cartesian coordinates
    // x = center.x + radius * cos(angle)
    // y = center.y + radius * sin(angle)
    final double needleRadius = radius * 0.8; // Shorter than the arc radius
    final Offset needleEndPoint = Offset(
      center.dx + needleRadius * cos(needleAngle),
      center.dy + needleRadius * sin(needleAngle),
    );

    // Needle Paint
    final Paint needlePaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    // Draw the needle
    canvas.drawLine(center, needleEndPoint, needlePaint);

    // --- 4. Draw the Center Pin (Pivot) ---

    final Paint pinPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, 5.0, pinPaint);
  }

  @override
  bool shouldRepaint(covariant GaugePainter oldDelegate) {
    // Only repaint if the rating value changes
    return oldDelegate.ratingValue != ratingValue;
  }
}
