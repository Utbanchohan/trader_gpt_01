import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class OutstandingSharesChart extends StatelessWidget {
  const OutstandingSharesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: AppColors.white,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(20),
      ),
      // margin: const EdgeInsets.all(16),
      // decoration: BoxDecoration(
      //   color: const Color(0xFF0D1B2A), // Dark background
      //   borderRadius: BorderRadius.circular(12),
      // ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MdSnsText(
              "Outstanding Shares",
              color: AppColors.fieldTextColor,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
            SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(color: AppColors.color0xFF0B1224),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 👇 Top Text
                  MdSnsText(
                    "Outstanding Shares", // apna title yahan likho
                    fontWeight: TextFontWeightVariant.h4,
                    variant: TextVariant.h4,
                    color: AppColors.color0xB3FFFFFF,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 210,
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          getDrawingHorizontalLine: (value) => FlLine(
                            color: AppColors.color0x0x1AB3B3B3,
                            strokeWidth: 1,
                          ),
                          horizontalInterval:
                              0.05, // 👈 y-axis ke range ke hisaab se adjust karo
                        ),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 45,
                              getTitlesWidget: (value, meta) {
                                return MdSnsText(
                                  "\$${value.toStringAsFixed(2)}B",
                                  fontWeight: TextFontWeightVariant.h4,
                                  variant: TextVariant.h8,
                                  color: AppColors.color0xB3FFFFFF,
                                );
                              },
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                  ), // 👈 thoda sa gap diya
                                  child: MdSnsText(
                                    value.toInt().toString(),
                                    fontWeight: TextFontWeightVariant.h4,
                                    variant: TextVariant.h8,
                                    color: AppColors.color0xB3FFFFFF,
                                  ),
                                );
                              },
                            ),
                          ),

                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: const Border(
                            left: BorderSide(
                              color: AppColors.color0x0x1AB3B3B3,
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: AppColors.color0x0x1AB3B3B3,
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Color.fromARGB(0, 151, 10, 10),
                            ),
                            top: BorderSide(color: AppColors.color0x0x1AB3B3B3),
                          ),
                        ),
                        minX: 2020,
                        maxX: 2025,
                        minY: 7.45,
                        maxY: 7.65,
                        lineBarsData: [
                          LineChartBarData(
                            spots: const [
                              FlSpot(2020, 7.65),
                              FlSpot(2021, 7.60),
                              FlSpot(2022, 7.50),
                              FlSpot(2023, 7.49),
                              FlSpot(2024, 7.48),
                              FlSpot(2025, 7.47),
                            ],
                            isCurved: false,
                            color: Colors.blueAccent,
                            barWidth: 3,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
