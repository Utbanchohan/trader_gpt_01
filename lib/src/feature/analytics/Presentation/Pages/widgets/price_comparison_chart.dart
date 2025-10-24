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
  List<FlSpot> spots1 = [];
  List<FlSpot> spots2 = [];

  List<FlSpot> buildSpots(Map<String, double> values, bool isFirst) {
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
    }
    if (isFirst) {
      spots1 = spots;
    } else {
      spots2 = spots;
    }
    return spots;
  }

  List<double> setSpots(List<FlSpot> spots1, List<FlSpot> spots2) {
    final allSpots = [...spots1, ...spots2];

    // Find combined bounds
    final double minX = allSpots
        .map((s) => s.x)
        .reduce((a, b) => a < b ? a : b);
    final double maxX = allSpots
        .map((s) => s.x)
        .reduce((a, b) => a > b ? a : b);
    final double minY = allSpots
        .map((s) => s.y)
        .reduce((a, b) => a < b ? a : b);
    final double maxY = allSpots
        .map((s) => s.y)
        .reduce((a, b) => a > b ? a : b);

    // Add padding (so lines don’t touch the edge)
    const double paddingFactor = 0.05;
    final double rangeX = (maxX - minX).abs().clamp(1e-9, double.infinity);
    final double rangeY = (maxY - minY).abs().clamp(1e-9, double.infinity);

    final double paddedMinX = minX - rangeX * paddingFactor;
    final double paddedMaxX = maxX + rangeX * paddingFactor;
    final double paddedMinY = minY - rangeY * paddingFactor;
    final double paddedMaxY = maxY + rangeY * paddingFactor;

    return [paddedMinX, paddedMaxX, paddedMinY, paddedMaxY];
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            "Price Comparison",
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h3,

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
                            true,
                          ),
                          isCurved: true,
                          color: AppColors.color274E87,
                          barWidth: 2,
                          dotData: FlDotData(show: false),
                        ),

                        LineChartBarData(
                          spots: widget.twoCharts
                              ? buildSpots(
                                  widget
                                      .priceComparisonModel!
                                      .data
                                      .data['SPY']!,
                                  false,
                                )
                              : buildSpots(
                                  widget
                                      .priceComparisonModel!
                                      .data
                                      .data['${widget.symbol}']!,
                                  false,
                                ),
                          isCurved: true,
                          color: widget.twoCharts
                              ? AppColors.white
                              : AppColors.color274E87,
                          barWidth: 2,
                          dotData: FlDotData(show: false),
                        ),
                      ],
                      minX: setSpots(spots1, spots2)[0],
                      maxX: setSpots(spots1, spots2)[1],
                      minY: setSpots(spots1, spots2)[2],
                      maxY: setSpots(spots1, spots2)[3],
                    ),
                  ),
                )
              : SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.color274E87,
                      border: Border.all(color: AppColors.white, width: 0.5),
                    ),
                  ),
                  SizedBox(width: 2),
                  MdSnsText(
                    widget.symbol,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h1,
                    color: AppColors.white,
                  ),
                ],
              ),

              SizedBox(width: 10),

              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.borderColor,
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  MdSnsText(
                    "SPY",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h1,
                    color: AppColors.borderColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
