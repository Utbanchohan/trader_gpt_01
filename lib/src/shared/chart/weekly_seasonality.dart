import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/weekly_model/weekly_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/monthly_model/monthly_model.dart';

class WeeklySeasonalityChart extends StatelessWidget {
  final ProbabilityResponse data;
  final bool isWeekly;
  final WeeklyModel weeklyModel;

  WeeklySeasonalityChart({
    required this.data,
    required this.isWeekly,
    required this.weeklyModel,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> weeklyData = isWeekly
        ? [
            {
              "day": "Monday",
              "value": weeklyModel.probability!.monday! * 100,
              "amount": weeklyModel.probability!.monday!,
            },
            {
              "day": "Tuesday",
              "value": weeklyModel.probability!.tuesday! * 100,
              "amount": weeklyModel.probability!.tuesday,
            },
            {
              "day": "Wednesday",
              "value": weeklyModel.probability!.wednesday! * 100,
              "amount": weeklyModel.probability!.wednesday!,
            },
            {
              "day": "Thursday",
              "value": weeklyModel.probability!.thursday! * 100,
              "amount": weeklyModel.probability!.thursday,
            },
            {
              "day": "Friday",
              "value": weeklyModel.probability!.friday! * 100,
              "amount": weeklyModel.probability!.friday,
            },
          ]
        : [
            {
              "day": "Jan",
              "value": data.probability!.january! * 100,
              "amount": data.probability!.january,
            },
            {
              "day": "Feb",
              "value": data.probability!.february! * 100,
              "amount": data.probability!.february,
            },
            {
              "day": "Mar",
              "value": data.probability!.march! * 100,
              "amount": data.probability!.march,
            },
            {
              "day": "Apr",
              "value": data.probability!.april! * 100,
              "amount": data.probability!.april,
            },
            {
              "day": "May",
              "value": data.probability!.may! * 100,
              "amount": data.probability!.may,
            },
            {
              "day": "Jun",
              "value": data.probability!.june! * 100,
              "amount": data.probability!.june,
            },
            {
              "day": "Jul",
              "value": data.probability!.july! * 100,
              "amount": data.probability!.july,
            },
            {
              "day": "Aug",
              "value": data.probability!.august! * 100,
              "amount": data.probability!.august,
            },
            {
              "day": "Sep",
              "value": data.probability!.september! * 100,
              "amount": data.probability!.september,
            },
            {
              "day": "Oct",
              "value": data.probability!.october! * 100,
              "amount": data.probability!.october,
            },
            {
              "day": "Nov",
              "value": data.probability!.november! * 100,
              "amount": data.probability!.november,
            },
            {
              "day": "Dec",
              "value": data.probability!.december! * 100,
              "amount": data.probability!.december,
            },
          ];
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: const Color(0xFF0B132B),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MdSnsText(
              isWeekly ? "Weekly Seasonality" : "Monthly Seasonality",
              variant: TextVariant.h1,
              color: AppColors.fieldTextColor,
              fontWeight: TextFontWeightVariant.h1,
            ),
            const SizedBox(height: 16),

            // Chart
            AspectRatio(
              aspectRatio: 1.6,
              child: RotatedBox(
                quarterTurns: 1,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    minY: 0,
                    maxY: 100,
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      drawVerticalLine: false,
                      horizontalInterval: 20,
                      getDrawingHorizontalLine: (value) =>
                          FlLine(color: Colors.white24, strokeWidth: 1),
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 80,
                          getTitlesWidget: (value, meta) {
                            int index = value.toInt();
                            if (index >= 0 && index < weeklyData.length) {
                              return Transform.rotate(
                                angle: -1.5708,
                                child: Container(
                                  margin: EdgeInsets.only(top: 30.h),

                                  child: MdSnsText(
                                    weeklyData[index]["day"],
                                    variant: TextVariant.h4,
                                    color: Color(0xB3FFFFFF),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: const Border(
                        bottom: BorderSide(color: Colors.white30, width: 1),
                        right: BorderSide(
                          color: Colors.white30,
                          width: 1,
                        ), // ✅ right line
                        left: BorderSide.none,
                        top: BorderSide.none,
                      ),
                    ),
                    barGroups: weeklyData.asMap().entries.map((entry) {
                      return BarChartGroupData(
                        x: entry.key,
                        barRods: [
                          BarChartRodData(
                            toY: entry.value["value"] * 1.0,
                            width: 10,
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ],
                      );
                    }).toList(),
                    barTouchData: BarTouchData(
                      enabled: true,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipMargin: 8,
                        tooltipPadding: const EdgeInsets.all(8),
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          final data = weeklyData[group.x.toInt()];
                          return BarTooltipItem(
                            '\$${data["amount"].toStringAsFixed(2)}\n${data["value"].toStringAsFixed(0)}%',
                            const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // ✅ Neeche custom text
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
