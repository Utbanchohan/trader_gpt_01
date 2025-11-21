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

  bool showSymbol = true;
  bool showSpy = true;

  List<FlSpot> buildSpots(Map<String, double> values, bool isFirst) {
    final List<FlSpot> spots = [];

    if (values.isNotEmpty) {
      double i = 0;

      for (final entry in values.entries) {
        final ts = int.tryParse(entry.key) ?? 0;
        final price = entry.value;
        spots.add(FlSpot(i, price));
        i++;
      }

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
    if (allSpots.isEmpty) return [0, 1, 0, 1];

    final minX = allSpots.map((s) => s.x).reduce((a, b) => a < b ? a : b);
    final maxX = allSpots.map((s) => s.x).reduce((a, b) => a > b ? a : b);
    final minY = allSpots.map((s) => s.y).reduce((a, b) => a < b ? a : b);
    final maxY = allSpots.map((s) => s.y).reduce((a, b) => a > b ? a : b);

    const paddingFactor = 0.05;
    final rangeX = (maxX - minX).abs().clamp(1e-9, double.infinity);
    final rangeY = (maxY - minY).abs().clamp(1e-9, double.infinity);

    return [
      minX - rangeX * paddingFactor,
      maxX + rangeX * paddingFactor,
      minY - rangeY * paddingFactor,
      maxY + rangeY * paddingFactor,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final hasData =
        widget.priceComparisonModel != null &&
        widget.priceComparisonModel!.data.data['${widget.symbol}'] != null;

    if (!hasData) {
      return const SizedBox();
    }

    final showBoth =
        widget.twoCharts &&
        widget.priceComparisonModel!.data.data['SPY'] != null;

    // Build chart lines dynamically
    final List<LineChartBarData> lines = [];
    if (showSymbol) {
      lines.add(
        LineChartBarData(
          spots: buildSpots(
            widget.priceComparisonModel!.data.data['${widget.symbol}']!,
            true,
          ),
          isCurved: true,
          color: AppColors.color274E87,
          barWidth: 2,
          dotData: FlDotData(show: false),
        ),
      );
    }

    if (showBoth && showSpy) {
      lines.add(
        LineChartBarData(
          spots: buildSpots(
            widget.priceComparisonModel!.data.data['SPY']!,
            false,
          ),
          isCurved: true,
          color: AppColors.white,
          barWidth: 2,
          dotData: FlDotData(show: false),
        ),
      );
    }

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
          SizedBox(height: 30.h),

          SizedBox(
            height: 240.h,
            child: LineChart(
              LineChartData(
                backgroundColor: AppColors.color091224,
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) =>
                      FlLine(color: AppColors.color1B254B, strokeWidth: 1),
                  getDrawingVerticalLine: (value) =>
                      FlLine(color: Colors.transparent, strokeWidth: 1),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 50, // ⬅️ more space for text (fix overlap)
                      interval: 100,

                      getTitlesWidget: (value, meta) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: MdSnsText(
                            value.toInt().toString(),
                            color: AppColors.white,
                            variant: TextVariant.h5,
                            height: 1.6,
                          ),
                        );
                      },
                    ),
                  ),

                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 50,
                      getTitlesWidget: (value, meta) => Padding(
                        padding: EdgeInsets.only(top: 10, right: 10),
                        child: MdSnsText(
                          value.toInt().toString(),
                          color: AppColors.white,
                          variant: TextVariant.h5,
                        ),
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
                lineBarsData: lines,

                minX: null,
                maxX: null,
                minY: null,
                maxY: null,
              ),
            ),
          ),

          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() => showSymbol = !showSymbol),
                child: Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: showSymbol
                            ? AppColors.color274E87
                            : AppColors.color274E87.withOpacity(0.3),
                        border: Border.all(color: AppColors.white, width: 0.5),
                      ),
                    ),
                    SizedBox(width: 4),
                    MdSnsText(
                      widget.symbol,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h1,
                      color: showSymbol
                          ? AppColors.white
                          : AppColors.white.withOpacity(0.4),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              if (showBoth)
                GestureDetector(
                  onTap: () => setState(() => showSpy = !showSpy),
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: showSpy
                              ? AppColors.borderColor
                              : AppColors.borderColor.withOpacity(0.3),
                          border: Border.all(
                            color: AppColors.borderColor,
                            width: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      MdSnsText(
                        "SPY",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h1,
                        color: showSpy
                            ? AppColors.borderColor
                            : AppColors.borderColor.withOpacity(0.4),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
