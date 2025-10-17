import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/weekly_model/weekly_model.dart';
import 'package:trader_gpt/src/shared/widgets/WeeklyBarChart_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/monthly_model/monthly_model.dart';
import 'dart:math';

class WeeklySeasonalityChart extends ConsumerStatefulWidget {
  final ProbabilityResponse data;
  final bool isWeekly;
  final WeeklyModel weeklyModel;

  WeeklySeasonalityChart({
    required this.data,
    required this.isWeekly,
    required this.weeklyModel,
  });
  @override
  ConsumerState<WeeklySeasonalityChart> createState() =>
      _WeeklySeasonalityChartState();
}

class _WeeklySeasonalityChartState
    extends ConsumerState<WeeklySeasonalityChart> {
  String selectedValue = "Radar";

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> weeklyData = widget.isWeekly
        ? [
            {
              "day": "Monday",
              "value": widget.weeklyModel.probability!.monday! * 100,
              "amount": widget.weeklyModel.probability!.monday!,
            },
            {
              "day": "Tuesday",
              "value": widget.weeklyModel.probability!.tuesday! * 100,
              "amount": widget.weeklyModel.probability!.tuesday,
            },
            {
              "day": "Wednesday",
              "value": widget.weeklyModel.probability!.wednesday! * 100,
              "amount": widget.weeklyModel.probability!.wednesday!,
            },
            {
              "day": "Thursday",
              "value": widget.weeklyModel.probability!.thursday! * 100,
              "amount": widget.weeklyModel.probability!.thursday,
            },
            {
              "day": "Friday",
              "value": widget.weeklyModel.probability!.friday! * 100,
              "amount": widget.weeklyModel.probability!.friday,
            },
          ]
        : [
            {
              "day": "Jan",
              "value": widget.data.probability!.january! * 100,
              "amount": widget.data.probability!.january,
            },
            {
              "day": "Feb",
              "value": widget.data.probability!.february! * 100,
              "amount": widget.data.probability!.february,
            },
            {
              "day": "Mar",
              "value": widget.data.probability!.march! * 100,
              "amount": widget.data.probability!.march,
            },
            {
              "day": "Apr",
              "value": widget.data.probability!.april! * 100,
              "amount": widget.data.probability!.april,
            },
            {
              "day": "May",
              "value": widget.data.probability!.may! * 100,
              "amount": widget.data.probability!.may,
            },
            {
              "day": "Jun",
              "value": widget.data.probability!.june! * 100,
              "amount": widget.data.probability!.june,
            },
            {
              "day": "Jul",
              "value": widget.data.probability!.july! * 100,
              "amount": widget.data.probability!.july,
            },
            {
              "day": "Aug",
              "value": widget.data.probability!.august! * 100,
              "amount": widget.data.probability!.august,
            },
            {
              "day": "Sep",
              "value": widget.data.probability!.september! * 100,
              "amount": widget.data.probability!.september,
            },
            {
              "day": "Oct",
              "value": widget.data.probability!.october! * 100,
              "amount": widget.data.probability!.october,
            },
            {
              "day": "Nov",
              "value": widget.data.probability!.november! * 100,
              "amount": widget.data.probability!.november,
            },
            {
              "day": "Dec",
              "value": widget.data.probability!.december! * 100,
              "amount": widget.data.probability!.december,
            },
          ];
    final bar = [
      {"day": "Mon", "value": 40.0, "amount": 123.45},
      {"day": "Tue", "value": 70.0, "amount": 89.12},
      {"day": "Wed", "value": 50.0, "amount": 54.33},
      {"day": "Thu", "value": 80.0, "amount": 142.11},
      {"day": "Fri", "value": 65.0, "amount": 99.99},
    ];
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side text
                MdSnsText(
                  widget.isWeekly
                      ? "Weekly Seasonality"
                      : "Monthly Seasonality",
                  variant: TextVariant.h3,
                  color: AppColors.fieldTextColor,
                  fontWeight: TextFontWeightVariant.h4,
                ),

                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.fieldTextColor,
                      width: 1.2,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      value: selectedValue,
                      items: ["Radar", "Bar"].map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: MdSnsText(
                            value,
                            variant: TextVariant.h5,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.fieldTextColor,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },

                      // 👇 Custom button with down arrow icon before text
                      customButton: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MdSnsText(
                            selectedValue,
                            variant: TextVariant.h5,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.fieldTextColor,
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.fieldTextColor,
                            size: 18,
                          ),
                        ],
                      ),

                      dropdownStyleData: DropdownStyleData(
                        offset: const Offset(0, 5),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            if (selectedValue == "Radar")
              Stack(
                alignment: Alignment.center,
                children: [
                  // Divider line behind chart
                  Positioned.fill(
                    child: CustomPaint(painter: BackgroundDividerPainter()),
                  ),

                  // The actual chart on top
                  MonthlySpiderChart(
                    isWeekly: widget.isWeekly,
                    lables: !widget.isWeekly
                        ? [
                            "January",
                            "February",
                            "March",
                            "April",
                            "May",
                            "June",
                            "July",
                            "August",
                            "September",
                            "October",
                            "November",
                            "December",
                          ]
                        : [
                            "Monday",
                            "Tuesday",
                            "Wednesday",
                            "Thursday",
                            "Friday",
                          ],
                    values: widget.isWeekly
                        ? [
                            weeklyData[0]['value'],
                            weeklyData[1]['value'],
                            weeklyData[2]['value'],
                            weeklyData[3]['value'],
                            weeklyData[4]['value'],
                          ]
                        : [
                            weeklyData[0]['value'],
                            weeklyData[1]['value'],
                            weeklyData[2]['value'],
                            weeklyData[3]['value'],
                            weeklyData[4]['value'],
                            weeklyData[5]['value'],
                            weeklyData[6]['value'],
                            weeklyData[7]['value'],
                            weeklyData[8]['value'],
                            weeklyData[9]['value'],
                            weeklyData[10]['value'],
                            weeklyData[11]['value'],
                          ],
                    maxValue: 100,
                  ),
                ],
              ),

            if (selectedValue == "Bar")
              WeeklyBarChartWidget(
                weeklyData: [
                  {"day": "Mon", "value": 40.0, "amount": 123.45},
                  {"day": "Tue", "value": 70.0, "amount": 89.12},
                  {"day": "Wed", "value": 50.0, "amount": 54.33},
                  {"day": "Thu", "value": 80.0, "amount": 142.11},
                  {"day": "Fri", "value": 65.0, "amount": 99.99},
                ],
              ),
            SizedBox(height: 12),
            Center(
              child: MdSnsText(
                variant: TextVariant.h4,
                color: Color(0xB3FFFFFF),
                "Data represents weekly % with total amount",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MonthlySpiderChart extends StatelessWidget {
  final List<double> values; // values for 12 months
  final double maxValue;
  final bool? isWeekly;
  final List<String> lables;

  const MonthlySpiderChart({
    super.key,
    required this.values,
    required this.isWeekly,
    required this.lables,
    this.maxValue = 100.0,
  }) : assert(values.length == lables.length);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(350, 350),
      painter: _SpiderPainter(values, lables, maxValue, isWeekly!),
    );
  }
}

class BackgroundDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors
          .colorB3B3B3 // light line
      ..strokeWidth = 0.8;

    final double spacing = size.height / 6; // 5 lines
    for (int i = 1; i < 6; i++) {
      final y = spacing * i;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _SpiderPainter extends CustomPainter {
  final List<double> values;
  final List<String> labels;
  final double maxValue;
  final bool isWeekly;

  _SpiderPainter(this.values, this.labels, this.maxValue, this.isWeekly);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final sides = values.length;
    final radius = min(size.width, size.height) / 2 - 40;

    final Paint gridPaint = Paint()
      ..color = Colors.grey.shade400
      ..style = PaintingStyle.stroke;

    final Paint dataPaint = Paint()
      ..color = isWeekly
          ? AppColors.color0098E4.withOpacity(0.3)
          : AppColors.colorab75b8.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    final Paint dataBorderPaint = Paint()
      ..color = isWeekly ? AppColors.color0098E4 : AppColors.colorab75b8
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Paint circlePoint = Paint()
      ..color = isWeekly
          ? AppColors.color0098E4.withOpacity(0.3)
          : AppColors.colorab75b8.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    final Paint circleBorderPont = Paint()
      ..color = isWeekly ? AppColors.color0098E4 : AppColors.colorab75b8
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    for (int i = 1; i <= 5; i++) {
      final r = radius * i / 5;
      final path = Path();
      for (int j = 0; j < sides; j++) {
        final angle = (2 * pi / sides) * j - pi / 2;
        final point = center + Offset(r * cos(angle), r * sin(angle));
        if (j == 0) {
          path.moveTo(point.dx, point.dy);
        } else {
          path.lineTo(point.dx, point.dy);
        }
      }
      path.close();
      canvas.drawPath(path, gridPaint);
    }

    // --- Draw axes + labels
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (int i = 0; i < sides; i++) {
      final angle = (2 * pi / sides) * i - pi / 2;
      final end = center + Offset(radius * cos(angle), radius * sin(angle));
      canvas.drawLine(center, end, gridPaint);

      // Label
      final labelOffset =
          center +
          Offset((radius + 20) * cos(angle), (radius + 20) * sin(angle));
      textPainter.text = TextSpan(
        text: labels[i],
        style: GoogleFonts.plusJakartaSans(
          fontSize: 12,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(
          labelOffset.dx - textPainter.width / 2,
          labelOffset.dy - textPainter.height / 2,
        ),
      );
    }

    // --- Draw data polygon
    final dataPath = Path();
    for (int i = 0; i < sides; i++) {
      final angle = (2 * pi / sides) * i - pi / 2;
      final r = radius * (values[i] / maxValue);
      final point = center + Offset(r * cos(angle), r * sin(angle));
      if (i == 0) {
        dataPath.moveTo(point.dx, point.dy);
      } else {
        dataPath.lineTo(point.dx, point.dy);
      }
      canvas.drawCircle(point, 7, circlePoint);
      canvas.drawCircle(point, 7, circleBorderPont);
    }

    dataPath.close();
    canvas.drawPath(dataPath, dataPaint);

    canvas.drawPath(dataPath, dataBorderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
