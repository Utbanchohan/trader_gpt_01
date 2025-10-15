import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';

class PriceComparisonChart extends StatefulWidget {
  final String symbol;
  final PriceComparisonModel? priceComparisonModel;
  final bool twoCharts;
  const PriceComparisonChart({
    super.key,
    required this.priceComparisonModel,
    required this.symbol,
    required this.twoCharts,
  });

  @override
  State<PriceComparisonChart> createState() => _PriceComparisonChartState();
}

class _PriceComparisonChartState extends State<PriceComparisonChart> {
  double? maxY;
  double? maxX;

  List<FlSpot> buildSpots(Map<String, double> values) {
    final List<FlSpot> spots = [];

    if (values.isNotEmpty) {
      double i = 0;

      values.entries.forEach((entry) {
        final ts = int.parse(entry.key); // timestamp string
        final date = DateTime.fromMillisecondsSinceEpoch(ts);
        final price = (entry.value as num).toDouble();

        spots.add(FlSpot(i, price));
        i++;
      });

      // sort by time
      spots.sort((a, b) => a.x.compareTo(b.x));

      maxY = spots.last.y;
      maxX = spots.last.x;
    }

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MdSnsText(
            "Price Comparison",
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,

            color: AppColors.fieldTextColor,
          ),
          SizedBox(height: 16.h),
          widget.priceComparisonModel != null &&
                  widget.priceComparisonModel!.data.data['${widget.symbol}'] !=
                      null &&
                  (!widget.twoCharts ||
                      (widget.twoCharts &&
                          widget.priceComparisonModel!.data.data['SPY'] !=
                              null))
              ? SizedBox(
                  height: 180,
                  child: LineChart(
                    LineChartData(
                      backgroundColor: AppColors.color091224,
                      gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: AppColors.color1B254B,
                          strokeWidth: 1,
                        ),
                        getDrawingVerticalLine: (value) =>
                            FlLine(color: Colors.transparent, strokeWidth: 1),
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            interval: 100,
                            getTitlesWidget: (value, meta) => MdSnsText(
                              value.toInt().toString(),
                              color: AppColors.white,

                              variant: TextVariant.h5,
                            ),
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 50,
                            getTitlesWidget: (value, meta) => MdSnsText(
                              value.toInt().toString(),
                              color: AppColors.white,
                              variant: TextVariant.h5,
                            ),
                          ),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: buildSpots(
                            widget
                                .priceComparisonModel!
                                .data
                                .data['${widget.symbol}']!,
                          ),
                          isCurved: true,
                          color: AppColors.color274E87,
                          barWidth: 2,
                          dotData: FlDotData(show: false),
                        ),

                        LineChartBarData(
                          spots: buildSpots(
                            widget
                                .priceComparisonModel!
                                .data
                                .data['${widget.symbol}']!,
                          ),
                          isCurved: true,
                          color: AppColors.color274E87,
                          barWidth: 2,
                          dotData: FlDotData(show: false),
                        ),
                      ],
                      minX: 1,
                      maxX: maxX ?? 100,
                      minY: 0,
                      maxY: maxY ?? 100,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
