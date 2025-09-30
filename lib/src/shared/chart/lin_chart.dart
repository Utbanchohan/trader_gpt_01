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
          maxX: 10,
          minY: 192,
          maxY: 202,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            getDrawingHorizontalLine: (value) => FlLine(
              color: AppColors.white.withOpacity(0.08),
              strokeWidth: 1,
            ),
            getDrawingVerticalLine: (value) =>
                FlLine(color: Colors.transparent),
          ),
          titlesData: FlTitlesData(
            // ✅ LEFT OFF, RIGHT ON
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false, reservedSize: 16),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32, // thoda roomy
                interval: 2, // readability ke liye
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: MdSnsText(
                      value.toInt().toString(),
                      variant: TextVariant.h5,
                      fontWeight: TextFontWeightVariant.h6,
                      color: AppColors.white.withOpacity(0.9),
                    ),
                  );
                },
              ),
            ),

            // ✅ BOTTOM (time labels)
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  String text = "";
                  switch (value.toInt()) {
                    case 0:
                      text = "6:00";
                      break;
                    case 2:
                      text = "10:00";
                      break;
                    case 4:
                      text = "14:00";
                      break;
                    case 6:
                      text = "18:00";
                      break;
                    case 8:
                      text = "22:00";
                      break;
                    case 10:
                      text = "2:00";
                      break;
                  }

                  return Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                    ), // 👈 thoda gap diya chart se
                    child: MdSnsText(
                      text,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h7,
                      color: AppColors.white.withOpacity(0.95),
                    ),
                  );
                },
              ),
            ),

            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  String text = "";
                  switch (value.toInt()) {
                    case 0:
                      text = "1D";
                      break;
                    case 2:
                      text = "1W";
                      break;
                    case 4:
                      text = "1M";
                      break;
                    case 6:
                      text = "6M";
                      break;
                    case 8:
                      text = "1Y";
                      break;
                    case 10:
                      text = "5Y";
                      break;
                  }

                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 8, // 👈 chart se thoda neeche
                    ),
                    child: MdSnsText(
                      text,
                      variant: TextVariant.h4, // same as bottom
                      fontWeight: TextFontWeightVariant.h7, // same boldness
                      color: AppColors.white.withOpacity(0.95),
                    ),
                  );
                },
              ),
            ),
          ),

          // ✅ Border
          borderData: FlBorderData(
            show: true,
            border: Border(
              left: BorderSide(color: Colors.transparent, width: 8),
              bottom: BorderSide(color: Colors.transparent),
              right: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
            ),
          ),

          // ✅ Chart Line
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              barWidth: 3,
              color: Colors.greenAccent,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [Colors.green.withOpacity(0.25), Colors.transparent],
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
                FlSpot(6, 196),
                FlSpot(7, 198),
                FlSpot(8, 194),
                FlSpot(9, 200),
                FlSpot(10, 197),
              ],
            ),
          ],

          // ✅ Tooltip
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (touchedSpot) => Colors.white,
              tooltipBorderRadius: BorderRadius.circular(10),
              tooltipPadding: const EdgeInsets.all(6),
              getTooltipItems: (spots) {
                return spots.map((spot) {
                  return LineTooltipItem(
                    "\$${spot.y.toStringAsFixed(2)}",
                    const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
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
