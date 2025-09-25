import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 260,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 192,
          maxY: 202,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) =>
                FlLine(color: AppColors.white.withOpacity(0.1), strokeWidth: 1),
            getDrawingVerticalLine: (value) =>
                FlLine(color: Colors.transparent),
          ),
          titlesData: FlTitlesData(
            // ✅ LEFT OFF, RIGHT ON
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false, // text hide, सिर्फ space लेगा
                reservedSize: 16, // 👈 left space मिलेगा
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22.sp, // 👈 space कम कर दिया
                getTitlesWidget: (value, meta) {
                  return Align(
                    alignment: Alignment.centerRight, // 👈 text right align
                    child: MdSnsText(
                      value.toInt().toString(),
                      variant: TextVariant.h5,
                      fontWeight: TextFontWeightVariant.h4,
                      color: AppColors.white,
                    ),
                  );
                },
              ),
            ),

            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return MdSnsText("6:00", color: AppColors.white);
                    case 1:
                      return MdSnsText("10:00", color: AppColors.white);
                    case 2:
                      return MdSnsText("14:00", color: AppColors.white);
                    case 3:
                      return MdSnsText("18:00", color: AppColors.white);
                    case 4:
                      return MdSnsText("22:00", color: AppColors.white);
                    case 5:
                      return MdSnsText("2:00", color: AppColors.white);
                  }
                  return MdSnsText("");
                },
              ),
            ),
            // ✅ TOP
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 20,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return MdSnsText(
                        "1D",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );

                    case 1:
                      return MdSnsText(
                        "1W",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );
                    case 2:
                      return MdSnsText(
                        "1M",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );
                    case 3:
                      return MdSnsText(
                        "6M",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );
                    case 4:
                      return MdSnsText(
                        "1Y",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );
                    case 5:
                      return MdSnsText(
                        "5Y",
                        color: AppColors.white,
                        variant: TextVariant.h4,
                      );
                  }
                  return MdSnsText("");
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              left: BorderSide(
                color: Colors.transparent,
                width: 16,
              ), // 👈 left gap
              bottom: BorderSide(color: Colors.transparent),
              right: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              barWidth: 3,
              color: Colors.greenAccent,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [Colors.green.withOpacity(0.3), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              dotData: FlDotData(
                show: true,
                checkToShowDot: (spot, barData) => spot.x == 4,
                getDotPainter: (spot, percent, barData, index) =>
                    FlDotCirclePainter(
                      radius: 5,
                      color: Colors.white,
                      strokeWidth: 2,
                      strokeColor: Colors.green,
                    ),
              ),
              spots: const [
                FlSpot(0, 196),
                FlSpot(1, 194),
                FlSpot(2, 200),
                FlSpot(3, 197),
                FlSpot(4, 194.84),
                FlSpot(5, 198),
                FlSpot(6, 200),
              ],
            ),
          ],
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (touchedSpot) => Colors.white,
              tooltipBorderRadius: BorderRadius.circular(10),
              tooltipPadding: EdgeInsets.all(6),
              getTooltipItems: (spots) {
                return spots.map((spot) {
                  return LineTooltipItem(
                    "\$${spot.y.toStringAsFixed(2)}",
                    const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
