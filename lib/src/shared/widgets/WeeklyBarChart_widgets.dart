import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class WeeklyBarChartWidget extends StatelessWidget {
  final List<Map<String, dynamic>> weeklyData;

  const WeeklyBarChartWidget({super.key, required this.weeklyData});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
                        angle: -1.5708, // -90 degrees
                        child: Container(
                          margin: EdgeInsets.only(top: 30.h),
                          child: MdSnsText(
                            weeklyData[index]["day"],
                            variant: TextVariant.h4,
                            color: const Color(0xB3FFFFFF),
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
                right: BorderSide(color: Colors.white30, width: 1),
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
    );
  }
}
