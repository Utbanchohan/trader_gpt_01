import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../feature/analytics/domain/model/financial_data_model/financial_data_model.dart';

class CustomLineChart extends StatelessWidget {
  final String? title;
  final Color lineColor;
  final Color areaColor;
  final List<FinancialDataPoint> chartData;

  const CustomLineChart({
    super.key,
    this.title,
    required this.lineColor,
    required this.areaColor,
    required this.chartData,
  });

  @override
  Widget build(BuildContext context) {
    final compactFormatter = NumberFormat.compact();

    if (chartData.isEmpty) {
      return const Center(child: Text("No Data"));
    }

    final yValues = chartData.map((e) => (e.y as num).toDouble()).toList();
    final minY = yValues.reduce(min);
    final maxY = yValues.reduce(max);
    final minX = 0.0;
    final maxX = (chartData.length - 1).toDouble();

    return Container(
      alignment: Alignment.center,
      height: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Heading Text
          MdSnsText(
            title ?? "",
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h3,

            color: AppColors.fieldTextColor,
          ),
          const SizedBox(height: 12),

          // 🔹 Chart Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: LineChart(
                LineChartData(
                  minX: minX,
                  maxX: maxX,
                  minY: minY,
                  maxY: maxY,

                  // ✅ Background Grid Lines (Horizontal + subtle)
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: (maxY - minY) / 5 > 0
                        ? (maxY - minY) / 5
                        : 1,
                    getDrawingHorizontalLine: (value) => FlLine(
                      color: Colors.white.withOpacity(0.1),
                      strokeWidth: 1,
                    ),
                  ),

                  // ✅ Optional zero baseline
                  extraLinesData: ExtraLinesData(
                    horizontalLines: [
                      HorizontalLine(
                        y: 0,
                        color: Colors.white24,
                        strokeWidth: 1,
                        dashArray: [6, 4],
                      ),
                    ],
                  ),

                  // ✅ Axis Titles
                  titlesData: FlTitlesData(
                    show: true,

                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        maxIncluded: false,
                        minIncluded: false,
                        showTitles: true,
                        reservedSize: 45,
                        // interval: 1000,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: MdSnsText(
                                compactFormatter.format(value),
                                variant: TextVariant.h5,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors
                                    .color0xFFc0c0c8, // your desired color
                                textAlign: TextAlign.right,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    // ✅ Fixed Bottom Date Labels
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        maxIncluded: false,
                        minIncluded: false,
                        showTitles: true,
                        reservedSize: 35,
                        interval: (chartData.length / 4).floorToDouble().clamp(
                          1,
                          4,
                        ),
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < 0 || index >= chartData.length) {
                            return const SizedBox.shrink();
                          }

                          final formattedDate = DateFormat(
                            'MMM yyyy',
                          ).format(DateTime.parse(chartData[index].x));

                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 30),
                            child: Transform.translate(
                              offset: const Offset(0, 6),
                              child: MdSnsText(
                                formattedDate,
                                variant: TextVariant.h5,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.color0xFFc0c0c8,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),

                  // ✅ Remove chart borders
                  borderData: FlBorderData(show: false),

                  // ✅ Line Chart Data
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      color: lineColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            areaColor.withOpacity(0.3),
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) =>
                            FlDotCirclePainter(
                              radius: 3.5,
                              color: Colors.white,
                              strokeWidth: 1.5,
                              strokeColor: lineColor,
                            ),
                      ),
                      spots: List.generate(
                        chartData.length,
                        (i) => FlSpot(
                          i.toDouble(),
                          (chartData[i].y as num).toDouble(),
                        ),
                      ),
                    ),
                  ],

                  // ✅ Tooltip Styling
                  lineTouchData: LineTouchData(
                    enabled: true,
                    touchTooltipData: LineTouchTooltipData(
                      tooltipBorderRadius: BorderRadius.circular(10),
                      tooltipPadding: const EdgeInsets.all(8),
                      getTooltipColor: (_) => Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }
}
