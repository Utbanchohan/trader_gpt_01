import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/model/analysis_data/analysis_data_model.dart';
import 'dart:math';

class CustomCandleChart extends StatefulWidget {
  final String name;
  final List<ChartData> data;
  final void Function(String id) onPressed;
  const CustomCandleChart({
    super.key,
    required this.data,
    required this.onPressed,
    required this.name,
    th,
  });

  @override
  State<CustomCandleChart> createState() => _CustomCandleChartState();
}

class _CustomCandleChartState extends State<CustomCandleChart> {
  double calculateInterval(double minY, double maxY, {int targetSteps = 6}) {
    final range = (maxY - minY).abs();
    if (range == 0) return 1; // avoid divide-by-zero
    final rawInterval = range / targetSteps;
    // round interval to a “nice” number (like 1, 2, 5, 10, 100, etc.)
    final magnitude = pow(10, (log(rawInterval) / ln10).floor());
    final normalized = rawInterval / magnitude;
    double niceNormalized;
    if (normalized < 1.5) {
      niceNormalized = 1;
    } else if (normalized < 3) {
      niceNormalized = 2;
    } else if (normalized < 7) {
      niceNormalized = 5;
    } else {
      niceNormalized = 10;
    }
    return niceNormalized * magnitude;
  }

  final List<String> labels = ['H', 'D', 'W', 'M'];

  int selectedIndex = 1;

  setItem(index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side text
              Visibility(
                visible: widget.name.isNotEmpty,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MdSnsText(
                      widget.name,
                      color: AppColors.fieldTextColor,
                      fontWeight: TextFontWeightVariant.h3,
                      variant: TextVariant.h3,
                    ),
                    SizedBox(height: 2),
                    MdSnsText(
                      "Description about OHLC chart",
                      color: AppColors.fieldTextColor,
                      fontWeight: TextFontWeightVariant.h4,
                      variant: TextVariant.h4,
                    ),
                  ],
                ),
              ),

              // Right side buttons (wrap in Row)
              Row(
                children: List.generate(labels.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setItem(index);

                      widget.onPressed(labels[index]);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal:
                            8, // (aap yahan width/height adjust kar sakte ho)
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? AppColors.color0E1738
                            : AppColors.colo2C3754,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MdSnsText(
                        labels[index],
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white70,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 260.h,
            child: BarChart(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInOutCubic,
              BarChartData(
                // backgroundColor: Colors.transparent,
                alignment: BarChartAlignment.spaceAround,

                // ✅ GRID LINES
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine:
                      true, // Agar vertical lines bhi chahiye to true rakho
                  horizontalInterval: 20,
                  verticalInterval: 1, // optional: adjust as needed
                  getDrawingHorizontalLine: (value) => FlLine(
                    color:
                        AppColors.colorB3B3B3, // 👈 ye color zyada visible hoga
                    strokeWidth: 1.2,
                  ),
                  getDrawingVerticalLine: (value) => FlLine(
                    color: AppColors.colorB3B3B3, // thoda soft vertical line
                    strokeWidth: 0.8,
                  ),
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
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: calculateInterval(
                        chartData.isNotEmpty
                            ? chartData
                                  .map((e) => e.low)
                                  .reduce((a, b) => a < b ? a : b)
                            : 0.0,
                        chartData.isNotEmpty
                            ? chartData
                                  .map((e) => e.high)
                                  .reduce((a, b) => a > b ? a : b)
                            : 0.0,
                      ),
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
                barGroups: getBarGroups(),

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
