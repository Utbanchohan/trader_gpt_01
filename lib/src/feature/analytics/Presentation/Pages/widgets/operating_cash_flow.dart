import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class OperatingCashFlow extends StatefulWidget {
  final String? title;
  final List<List<num?>> rawCash;
  final List<List<num?>> rawDebt;
  final List<List<num?>> rawEquity;
  final List<List<num?>> rawAssets;
  final String? cashLabel;
  final String? debtLabel;
  final String? equityLabel;
  final String? assetsLabel;

  const OperatingCashFlow({
    super.key,
    this.title,
    required this.rawCash,
    required this.rawDebt,
    required this.rawEquity,
    required this.rawAssets,
    this.cashLabel = "Operating Cash Flow",
    this.debtLabel = "Free Cash Flow",
    this.equityLabel = "Net Income",
    this.assetsLabel = "Cash Flow Dividends",
  });

  @override
  State<OperatingCashFlow> createState() => _OperatingCashFlowState();
}

class _OperatingCashFlowState extends State<OperatingCashFlow> {
  List<DateTime> dates = [];
  List<double> cashValues = [];
  List<double> debtValues = [];
  List<double> equityValues = [];
  List<double> assetValues = [];

  @override
  Widget build(BuildContext context) {
    _prepareData();

    return Container(
      height: 420,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            widget.title ?? "Chart",
            color: AppColors.color0xB3FFFFFF,
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,
          ),
          const SizedBox(height: 40),

          // 🔹 Bar Chart
          SizedBox(
            height: 230,
            child:
                (widget.rawCash.isNotEmpty ||
                    widget.rawDebt.isNotEmpty ||
                    widget.rawEquity.isNotEmpty ||
                    widget.rawAssets.isNotEmpty)
                ? BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              final index = value.toInt();
                              if (index < 0 || index >= dates.length)
                                return const SizedBox();
                              final label = DateFormat(
                                "MMM yy",
                              ).format(dates[index]);
                              return SideTitleWidget(
                                meta: meta,
                                child: MdSnsText(
                                  label,
                                  color: Colors.white,
                                  variant: TextVariant.h4,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      barGroups: List.generate(dates.length, (i) {
                        return BarChartGroupData(
                          x: i,
                          barsSpace: 4,
                          barRods: [
                            _barRod(cashValues[i], AppColors.color274E87),
                            _barRod(debtValues[i], AppColors.color0098E4),
                            _barRod(equityValues[i], AppColors.color00FF55),
                            _barRod(assetValues[i], AppColors.color0xFF1C2648),
                          ],
                        );
                      }),
                    ),
                  )
                : const SizedBox(),
          ),

          const SizedBox(height: 20),

          // 🔹 Legends
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 10,
            children: [
              _legend(AppColors.color274E87, widget.cashLabel ?? "Cash"),
              _legend(AppColors.color0098E4, widget.debtLabel ?? "Debt"),
              _legend(AppColors.color00FF55, widget.equityLabel ?? "Equity"),
              _legend(
                AppColors.color0xFF1C2648,
                widget.assetsLabel ?? "Assets",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Helper: Build one legend item
  Widget _legend(Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 10, height: 10, color: color),
        const SizedBox(width: 6),
        MdSnsText(
          label,
          color: AppColors.white,
          variant: TextVariant.h4,
          fontWeight: TextFontWeightVariant.h4,
        ),
      ],
    );
  }

  // 🔹 Helper: Build one bar
  BarChartRodData _barRod(double value, Color color) {
    return BarChartRodData(
      toY: value,
      color: color,
      width: 14.w,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
    );
  }

  // 🔹 Prepare all data lists aligned by year
  void _prepareData() {
    final lists = {
      'cash': widget.rawCash,
      'debt': widget.rawDebt,
      'equity': widget.rawEquity,
      'assets': widget.rawAssets,
    };

    // Group latest entry per year for each dataset
    Map<String, Map<int, List<dynamic>>> grouped = {};
    for (var key in lists.keys) {
      final raw = lists[key]!;
      grouped[key] = {};
      for (var entry in raw) {
        final ts = entry[0] as int;
        final year = DateTime.fromMillisecondsSinceEpoch(ts).year;
        if (!grouped[key]!.containsKey(year) ||
            ts > (grouped[key]![year]![0] as int)) {
          grouped[key]![year] = entry;
        }
      }
    }

    // Collect all unique years
    final allYears = <int>{};
    for (var map in grouped.values) {
      allYears.addAll(map.keys);
    }

    final sortedYears = allYears.toList()..sort();

    // Build final aligned lists
    dates = sortedYears.map((y) {
      final ts =
          grouped['cash']![y]?[0] ??
          grouped['debt']![y]?[0] ??
          grouped['equity']![y]?[0] ??
          grouped['assets']![y]?[0] ??
          DateTime(y).millisecondsSinceEpoch;
      return DateTime.fromMillisecondsSinceEpoch(ts);
    }).toList();

    cashValues = sortedYears
        .map(
          (y) => grouped['cash']![y] != null
              ? (grouped['cash']![y]![1] as num).toDouble()
              : 0.0,
        )
        .toList();
    debtValues = sortedYears
        .map(
          (y) => grouped['debt']![y] != null
              ? (grouped['debt']![y]![1] as num).toDouble()
              : 0.0,
        )
        .toList();
    equityValues = sortedYears
        .map(
          (y) => grouped['equity']![y] != null
              ? (grouped['equity']![y]![1] as num).toDouble()
              : 0.0,
        )
        .toList();
    assetValues = sortedYears
        .map(
          (y) => grouped['assets']![y] != null
              ? (grouped['assets']![y]![1] as num).toDouble()
              : 0.0,
        )
        .toList();
  }
}
