import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/financial_data_model/financial_data_model.dart';

class CustomLineChart extends StatelessWidget {
  String? title;
  Color lineColor;
  Color areaColor;
  final List<FinancialDataPoint> chartData;

  CustomLineChart({
    super.key,
    this.title,
    required this.lineColor,
    required this.areaColor,
    required this.chartData,
  });

  @override
  Widget build(BuildContext context) {
    final yValues = chartData.map((e) => (e.y as num).toDouble()).toList();
    final minY = chartData.isNotEmpty
        ? chartData.map((e) => e.y).reduce((a, b) => a > b ? a : b).toDouble()
        : 0.0;
    final maxY = chartData.isNotEmpty
        ? chartData.map((e) => e.y).reduce((a, b) => a < b ? a : b).toDouble()
        : 0.0;
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
            // "data",
            title ?? "",
            color: AppColors.fieldTextColor,
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 12),

          // 🔹 Line Chart
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: LineChart(
                duration: Duration(milliseconds: 100),

                LineChartData(
                  minX: minX,
                  maxX: maxX,
                  minY: minY,
                  maxY: maxY,
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
                  extraLinesData: ExtraLinesData(
                    horizontalLines: [
                      HorizontalLine(
                        y: 0,
                        color: Colors.white24,
                        strokeWidth: 1,
                      ),
                    ],
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                        reservedSize: 10,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                        reservedSize: 30,
                        interval: (maxY - minY) / 5,
                        //  (maxY / 5e9).ceilToDouble(),
                        getTitlesWidget: (value, meta) {
                          String label;
                          if (value.abs() >= 1e9) {
                            label = '\$${(value / 1e9).toStringAsFixed(0)}B';
                          } else if (value.abs() >= 1e6) {
                            label = '\$${(value / 1e6).toStringAsFixed(0)}M';
                          } else {
                            label = '\$${value.toStringAsFixed(0)}';
                          }
                          return Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: MdSnsText(
                              label,
                              variant: TextVariant.h5,
                              fontWeight: TextFontWeightVariant.h6,
                              color: AppColors.white,
                              maxLines: 2,
                            ),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 20,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index < 0 || index >= chartData.length)
                            return const SizedBox.shrink();
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: MdSnsText(
                              DateFormat(
                                'MMM yyyy',
                              ).format(DateTime.parse(chartData[index].x)),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h7,
                              color: AppColors.white.withOpacity(0.95),
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border(
                      left: BorderSide(color: Colors.transparent, width: 1),
                      bottom: BorderSide(color: Colors.transparent),
                      right: BorderSide(color: Colors.transparent),
                      top: BorderSide(color: Colors.transparent),
                    ),
                  ),

                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      barWidth: 3,
                      color: areaColor,

                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            areaColor.withOpacity(0.25),
                            Colors.transparent,
                            Colors.transparent,
                          ],

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

                  lineTouchData: LineTouchData(
                    enabled: true,
                    touchTooltipData: LineTouchTooltipData(
                      getTooltipColor: (touchedSpot) => Colors.white,
                      tooltipBorderRadius: BorderRadius.circular(10),
                      tooltipPadding: const EdgeInsets.all(6),
                      getTooltipItems: (spots) {
                        return spots.map((spot) {
                          return LineTooltipItem(
                            "\$${spot.y / 5e9.ceilToDouble()}",
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
