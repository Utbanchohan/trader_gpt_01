import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class EarningsChart extends StatelessWidget {
  const EarningsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),

        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 260,
        padding: const EdgeInsets.all(16),
        child: ScatterChart(
          ScatterChartData(
            minX: 0,
            maxX: 5,
            minY: 2.6,
            maxY: 3.6,
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) => FlLine(
                color: Colors.white.withOpacity(0.15),
                strokeWidth: 1,
                dashArray: [4, 4],
              ),
            ),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 45,
                  interval: 0.2,
                  getTitlesWidget: (value, meta) => MdSnsText(
                    "\$${value.toStringAsFixed(2)}",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  reservedSize: 50, // 👈 extra space for BEAT text
                  getTitlesWidget: (value, meta) {
                    final quarters = [
                      "Q3-2023",
                      "Q4-2023",
                      "Q1-2024",
                      "Q2-2024",
                      "Q3-2024",
                      "Q4-2024",
                      "Q1-2025",
                    ];
                    if (value.toInt() < quarters.length) {
                      return Container(
                        margin: EdgeInsets.only(top: 15, right: 25),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MdSnsText(
                              quarters[value.toInt()],
                              variant: TextVariant.h5,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.color0xB3FFFFFF,
                            ),

                            MdSnsText(
                              "BEAT",
                              variant: TextVariant.h5,
                              fontWeight: TextFontWeightVariant.h4,

                              color: Colors.green,
                            ),
                          ],
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            scatterSpots: [
              ScatterSpot(
                0,
                2.7,
                dotPainter: FlDotCirclePainter(radius: 6, color: Colors.green),
              ),
              ScatterSpot(
                1,
                2.9,
                dotPainter: FlDotCirclePainter(radius: 6, color: Colors.green),
              ),
              ScatterSpot(
                2,
                3.0,
                dotPainter: FlDotCirclePainter(radius: 6, color: Colors.green),
              ),
              ScatterSpot(
                3,
                3.0,
                dotPainter: FlDotCirclePainter(radius: 6, color: Colors.green),
              ),
              ScatterSpot(
                5,
                3.45,
                dotPainter: FlDotCirclePainter(radius: 6, color: Colors.green),
              ),

              // ✅ Hollow white dots
              ScatterSpot(
                0,
                2.6,
                dotPainter: FlDotCirclePainter(
                  radius: 6,
                  color: Colors.transparent,
                  strokeColor: AppColors.white,
                  strokeWidth: 2,
                ),
              ),
              ScatterSpot(
                1,
                2.85,
                dotPainter: FlDotCirclePainter(
                  radius: 6,
                  color: Colors.transparent,
                  strokeColor: AppColors.white,
                  strokeWidth: 2,
                ),
              ),
              ScatterSpot(
                2,
                3.0,
                dotPainter: FlDotCirclePainter(
                  radius: 6,
                  color: Colors.transparent,
                  strokeColor: AppColors.white,
                  strokeWidth: 2,
                ),
              ),
              ScatterSpot(
                3,
                3.15,
                dotPainter: FlDotCirclePainter(
                  radius: 6,
                  color: Colors.transparent,
                  strokeColor: AppColors.white,
                  strokeWidth: 2,
                ),
              ),
              ScatterSpot(
                4,
                3.2,
                dotPainter: FlDotCirclePainter(
                  radius: 6,
                  color: Colors.transparent,
                  strokeColor: AppColors.white,
                  strokeWidth: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
