import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'dart:math' as math;

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

    // compute dynamic Y bounds so points always fit within the chart area
    double rawMinY = double.infinity;
    double rawMaxY = double.negativeInfinity;
    for (var d in chartData) {
      rawMinY = math.min(rawMinY, math.min(d.actual, d.estimate));
      rawMaxY = math.max(rawMaxY, math.max(d.actual, d.estimate));
    }
    if (rawMinY == double.infinity || rawMaxY == double.negativeInfinity) {
      rawMinY = 0.0;
      rawMaxY = 1.0;
    }
    final paddingY = (rawMaxY - rawMinY) * 0.15;
    final minYVal = (rawMinY - paddingY).clamp(0.0, double.infinity);
    final maxYVal = rawMaxY + paddingY;

    // compute a small set of Y ticks (4 ticks) to avoid overlapping labels
    final int tickCount = 4;
    final List<double> yTicks = [];
    if (maxYVal - minYVal <= 0) {
      yTicks.addAll([minYVal]);
    } else {
      for (int i = 0; i <= tickCount; i++) {
        yTicks.add(minYVal + (maxYVal - minYVal) * (i / tickCount));
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 260,
        // pad top so dots don't overlap the border
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 10),

        child: LineChart(
          LineChartData(
            backgroundColor: Colors.transparent,
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) {
                return FlLine(color: AppColors.colorB3B3B3, strokeWidth: 1);
              },
            ),
            titlesData: FlTitlesData(
              show: true,
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  // keep a compact reserved size but render only a few ticks
                  reservedSize: 40,
                  interval: (maxYVal - minYVal) / 4,
                  getTitlesWidget: (value, meta) {
                    // only display labels for our computed ticks to avoid overlap
                    final tolerance = (maxYVal - minYVal) / 40;
                    for (final tick in yTicks) {
                      if ((value - tick).abs() <= tolerance) {
                        return SizedBox(
                          width: 40,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: MdSnsText(
                              '\$${tick.toStringAsFixed(2)}',
                              color: AppColors.color0xB3FFFFFF,
                              variant: TextVariant.h5,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        );
                      }
                    }
                    return Container();
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    final dataIndex = value.toInt();
                    if (dataIndex >= 0 && dataIndex < chartData.length) {
                      final parts = chartData[dataIndex].quarter.split('\n');
                      final leftPart = parts.isNotEmpty
                          ? (parts[0].contains('-')
                                ? parts[0].split('-').last
                                : parts[0])
                          : '';
                      final rightPart = parts.length > 1
                          ? parts[1].capitalize()
                          : '';
                      return SizedBox(
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            MdSnsText(
                              leftPart,
                              color: AppColors.color0xB3FFFFFF,
                              variant: TextVariant.h8,
                              textAlign: TextAlign.center,
                            ),
                            MdSnsText(
                              rightPart,
                              color: chartData[dataIndex].isBeat
                                  ? const Color(0xFF4EEB9E)
                                  : AppColors.color0xFFCD3438,
                              variant: TextVariant.h8,
                              fontWeight: TextFontWeightVariant.h2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
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
            borderData: FlBorderData(show: false),
            lineBarsData: [
              // Actual Points
              LineChartBarData(
                spots: chartData
                    .asMap()
                    .entries
                    .map(
                      (entry) =>
                          FlSpot(entry.key.toDouble(), entry.value.actual),
                    )
                    .toList(),
                isCurved: false,
                color: Colors.transparent,
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

              // Estimate Points
              LineChartBarData(
                spots: chartData
                    .asMap()
                    .entries
                    .map(
                      (entry) =>
                          FlSpot(entry.key.toDouble(), entry.value.estimate),
                    )
                    .toList(),
                isCurved: false,
                color: Colors.transparent,
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) {
                    return FlDotCirclePainter(
                      radius: 5,
                      color: Colors.transparent,
                      strokeWidth: 1.5,
                      strokeColor: Colors.white70,
                    );
                  },
                ),
              ),
            ],
            minX: -0.5,
            maxX: chartData.length - 0.5,
            minY: minYVal,
            maxY: maxYVal,
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
  final bool isBeat;

  QuarterlyData({
    required this.quarter,
    required this.actual,
    required this.estimate,
    required this.isBeat,
  });
}

// Your dataset
