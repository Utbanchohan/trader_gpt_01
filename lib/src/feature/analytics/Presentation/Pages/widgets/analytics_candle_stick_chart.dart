import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/model/analysis_data/analysis_data_model.dart';

class CustomCandleChart extends StatefulWidget {
  final List<ChartData> data;
  final VoidCallback onPressed;
  const CustomCandleChart({
    super.key,
    required this.data,
    required this.onPressed,
  });

  @override
  State<CustomCandleChart> createState() => _CustomCandleChartState();
}

class _CustomCandleChartState extends State<CustomCandleChart> {
  final List<String> labels = ['H', 'D', 'W', 'M'];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final List<OhlcData> chartData = widget.data.map((item) {
      final open = item.y != null && item.y!.isNotEmpty ? item.y![0] : 0.0;
      final high = item.y != null && item.y!.length > 0 ? item.y![1] : 0.0;
      final low = item.y != null && item.y!.length > 1 ? item.y![2] : 0.0;
      final close = item.y != null && item.y!.length > 2 ? item.y![3] : 0.0;
      return OhlcData(
        date: DateTime.parse(item.x!),
        open: open,
        high: high,
        low: low,
        close: close,
      );
    }).toList();
    // We'll map data to BarChartGroupData
    List<BarChartGroupData> getBarGroups() {
      return chartData.asMap().entries.map((entry) {
        final index = entry.key;
        final data = entry.value;

        // Colors matching the image
        final bullColor = AppColors.color00FF55; // Green
        final bearColor = AppColors.color0xFFCD3438; // Red
        final barColor = data.isBullish ? bullColor : bearColor;

        // 1. Calculate the 'empty' space below the body (from low to bodyMin)
        final lowToBodyHeight = data.bodyMin - data.low;

        // 2. Calculate the height of the actual body (from bodyMin to bodyMax)
        final bodyHeight = data.bodyMax - data.bodyMin;

        // 3. Calculate the 'empty' space above the body (from bodyMax to high)
        final bodyToHighHeight = data.high - data.bodyMax;

        // This is the core data point for fl_chart's BarChart
        return BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              // The entire rod spans from 'low' to 'high'
              fromY: data.low,
              toY: data.high,
              width: 1, // Set a fixed width for the candle
              borderRadius: BorderRadius.zero,

              // We use stacked items to draw the wicks and the body
              rodStackItems: [
                // 1. Lower Wick (from low to bodyMin) - Transparent bar
                BarChartRodStackItem(
                  data.low,
                  data.bodyMin,
                  Colors.transparent,
                  // Use a thin border for the wick
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),

                // 2. Candle Body (from bodyMin to bodyMax) - The colored rectangle
                BarChartRodStackItem(
                  data.bodyMin,
                  data.bodyMax,
                  barColor,
                  // Use a thin border for the body
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),

                // 3. Upper Wick (from bodyMax to high) - Transparent bar
                BarChartRodStackItem(
                  data.bodyMax,
                  data.high,
                  Colors.transparent,
                  // Use a thin border for the wick
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),
              ],
            ),
          ],
        );
      }).toList();
    }

    return Container(
      alignment: Alignment.center,
      height: 360.h,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(labels.length, (index) {
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  widget.onPressed();
                  selectedIndex = index;
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.color0E1738
                        : AppColors.colo2C3754,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MdSnsText(
                    labels[index],

                    color: isSelected ? Colors.white : Colors.white70,
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 280.h,
            child: BarChart(
              BarChartData(
                backgroundColor: Colors.transparent, // Dark background
                alignment: BarChartAlignment.spaceAround,

                // Grid and Titles Configuration (similar to previous solution)
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 20, // Match Y-axis interval
                  getDrawingHorizontalLine: (value) =>
                      FlLine(color: Colors.white10, strokeWidth: 1),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    // Y-axis on the right
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: 20,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toStringAsFixed(2),
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.left,
                        );
                      },
                    ),
                  ),
                  bottomTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),

                borderData: FlBorderData(show: false),

                // Bar Groups Data
                barGroups: getBarGroups(),

                // Axis Ranges
                maxY: chartData.isNotEmpty
                    ? chartData
                          .map((e) => e.high)
                          .reduce((a, b) => a > b ? a : b)
                    : 0.0,
                minY: chartData.isNotEmpty
                    ? chartData
                          .map((e) => e.low)
                          .reduce((a, b) => a < b ? a : b)
                    : 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OhlcData {
  final DateTime date;
  final double open;
  final double high;
  final double low;
  final double close;
  final bool
  isBullish; // Bullish (up): close > open, Bearish (down): close < open

  OhlcData({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  }) : isBullish = close > open;

  // Gets the top of the candle body
  double get bodyMax => isBullish ? close : open;

  // Gets the bottom of the candle body
  double get bodyMin => isBullish ? open : close;
}

// ... (Your rawData mapping into chartData as done in the previous response) ...
// The list conversion remains the same, just ensure you include the OhlcData class.
