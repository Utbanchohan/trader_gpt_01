import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ShortVolumeChart extends StatelessWidget {
  final List<ChartData> data;

  const ShortVolumeChart({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Center(
        child: Text("No data available", style: TextStyle(color: Colors.white)),
      );
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        // color: AppColors.white,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Title + Right text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MdSnsText(
                "Short Volume",
                color: AppColors.fieldTextColor,
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h4,
              ),
              MdSnsText(
                "Shel",
                color: AppColors.fieldTextColor,
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h4,
              ),
            ],
          ),
          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: AppColors.color0xFF0B1224),
            child: Column(
              children: [
                SizedBox(
                  height: 240,
                  child: LineChart(
                    LineChartData(
                      backgroundColor: AppColors.color0xFF0B1224,
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: AppColors.color0x0x1AB3B3B3,

                          strokeWidth: 1,
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 30,
                            getTitlesWidget: (value, meta) => MdSnsText(
                              "${NumberFormat.compact().format(value)}",
                              fontWeight: TextFontWeightVariant.h4,
                              variant: TextVariant.h8,
                              color: AppColors.color0xB3FFFFFF,
                            ),
                          ),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 25,
                            getTitlesWidget: (value, meta) => MdSnsText(
                              "${NumberFormat.compact().format(value)}",
                              fontWeight: TextFontWeightVariant.h4,
                              variant: TextVariant.h8,
                              color: AppColors.color0xB3FFFFFF,
                            ),
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: (data.length / 5).floorToDouble().clamp(
                              1,
                              double.infinity,
                            ),
                            getTitlesWidget: (value, meta) {
                              final index = value.toInt();
                              if (index >= 0 && index < data.length) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: MdSnsText(
                                    DateFormat(
                                      "MMM d\nyyyy",
                                    ).format(data[index].date), // do line text
                                    fontWeight: TextFontWeightVariant.h4,
                                    variant: TextVariant.h8,
                                    color: AppColors.color0xB3FFFFFF,
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      // ✅ straight red line added
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: 0, // jis level par red baseline chahiye
                            color: Colors.red,
                            strokeWidth: 2,
                          ),
                        ],
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: data
                              .asMap()
                              .entries
                              .map(
                                (e) =>
                                    FlSpot(e.key.toDouble(), e.value.shortPar),
                              )
                              .toList(),
                          isCurved: false,
                          color: Colors.blue,
                          barWidth: 1.5,
                          dotData: FlDotData(show: false),
                        ),
                        LineChartBarData(
                          spots: data
                              .asMap()
                              .entries
                              .map(
                                (e) =>
                                    FlSpot(e.key.toDouble(), e.value.totalPar),
                              )
                              .toList(),
                          isCurved: false,
                          color: Colors.orange,
                          barWidth: 1.5,
                          dotData: FlDotData(show: false),
                        ),
                        LineChartBarData(
                          spots: data
                              .asMap()
                              .entries
                              .map(
                                (e) => FlSpot(
                                  e.key.toDouble(),
                                  e.value.shortExempt,
                                ),
                              )
                              .toList(),
                          isCurved: false,
                          color: Colors.greenAccent,
                          barWidth: 1.5,
                          dotData: FlDotData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildLegendDot(Colors.blue, "Short Par Quantity"),
                        const SizedBox(width: 16),
                        _buildLegendDot(Colors.orange, "Total Par Quantity"),
                      ],
                    ),
                    const SizedBox(height: 8), // thoda gap niche
                    _buildLegendDot(
                      Colors.greenAccent,
                      "Short Exempt Par Quantity",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendDot(Color color, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        MdSnsText(
          text,
          color: AppColors.white,
          variant: TextVariant.h5,
          fontWeight: TextFontWeightVariant.h6,
        ),
      ],
    );
  }
}

class ChartData {
  final DateTime date;
  final double shortPar;
  final double totalPar;
  final double shortExempt;

  ChartData(this.date, this.shortPar, this.totalPar, this.shortExempt);
}
