import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../domain/model/earning_chart_model/earning_chart_model.dart';

// ... (Use the data structures from Section 2) ...

class QuarterlyPerformanceChart extends StatelessWidget {
  final List<EarningChartData> data;
  const QuarterlyPerformanceChart({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    final List<QuarterlyData> chartData = data.map((item) {
      final x0 = item.x.isNotEmpty ? item.x[0] : '';
      final x1 = item.x.length > 1 ? item.x[1] : '';
      final y0 = item.y.isNotEmpty ? item.y[0] : 0.0;
      final y1 = item.y.length > 1 ? item.y[1] : 0.0;

      return QuarterlyData(
        quarter: "$x0\n$x1",
        actual: y0,
        estimate: y1,
        isBeat: y0 >= y1,
      );
    }).toList();

    return Container(
      decoration: BoxDecoration(
        // color: Colors.amber,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),

        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 260,
        padding: const EdgeInsets.all(12),
        child: LineChart(
          LineChartData(
            // 1. Grid and Background Styling
            backgroundColor: Colors.transparent, // Dark background
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: AppColors.colorB3B3B3, // Subtle horizontal lines
                  strokeWidth: 1,
                );
              },
            ),
            titlesData: FlTitlesData(
              show: true,
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 35,
                  interval: 0.05,
                  getTitlesWidget: (value, meta) {
                    // Custom formatting for the Y-axis (e.g., $0.60)
                    return MdSnsText(
                      '\$${value.toStringAsFixed(1)}',

                      color: AppColors.color0xB3FFFFFF,
                      variant: TextVariant.h5,

                      textAlign: TextAlign.right,
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 45,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    // Custom formatting for the X-axis (Q4-2023, BEAT, etc.)
                    final dataIndex = value.toInt();
                    if (dataIndex >= 0 && dataIndex < chartData.length) {
                      final parts = chartData[dataIndex].quarter.split('\n');
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 1),
                          MdSnsText(
                            parts[0].toString().split("-")[1],

                            color: AppColors.color0xB3FFFFFF,
                            variant: TextVariant.h8,
                          ),
                          MdSnsText(
                            parts[1].capitalize(),

                            color: chartData[dataIndex].isBeat
                                ? const Color(0xFF4EEB9E)
                                : AppColors.color0xFFCD3438,
                            variant: TextVariant.h8,
                            fontWeight: TextFontWeightVariant.h2,
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(show: false), // No chart border
            // 2. Plotting the Data Points
            lineBarsData: [
              // This is a trick to plot points without connecting lines.
              // We'll create two 'lines': one for 'Actual' and one for 'Estimate'.

              // Actual Points (Colored Green/Red)
              LineChartBarData(
                spots: chartData.asMap().entries.map((entry) {
                  return FlSpot(entry.key.toDouble(), entry.value.actual);
                }).toList(),
                isCurved: false,
                color: Colors.transparent, // No connecting line
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) {
                    final dataPoint = chartData[index];
                    return FlDotCirclePainter(
                      radius: 5,
                      color: dataPoint.isBeat
                          ? const Color(0xFF4EEB9E)
                          : const Color(0xFFE43A59),
                      strokeWidth: 1.5,
                      strokeColor: dataPoint.isBeat
                          ? const Color(0xFF4EEB9E)
                          : const Color(0xFFE43A59),
                    );
                  },
                ),
              ),

              // Estimate Points (Hollow Circles)
              LineChartBarData(
                spots: chartData.asMap().entries.map((entry) {
                  return FlSpot(entry.key.toDouble(), entry.value.estimate);
                }).toList(),
                isCurved: false,
                color: Colors.transparent, // No connecting line
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) {
                    return FlDotCirclePainter(
                      radius: 5,
                      color: Colors.transparent, // Inner fill is transparent
                      strokeWidth: 1.5,
                      strokeColor: Colors.white70, // White outline
                    );
                  },
                ),
              ),
            ],

            // 3. View Window Configuration
            minX: -0.5,
            maxX:
                chartData.length - 0.5, // Provide a little padding on the sides
            minY: 0.60,
            maxY: 0.80,

            // Tooltip (optional, for interactivity)
            lineTouchData: const LineTouchData(enabled: false),
          ),
        ),
      ),
    );
  }
}

class QuarterlyData {
  final String quarter;
  final double actual;
  final double estimate;
  final bool isBeat; // true for Beat, false for Missed

  QuarterlyData({
    required this.quarter,
    required this.actual,
    required this.estimate,
    required this.isBeat,
  });
}

// Your dataset
