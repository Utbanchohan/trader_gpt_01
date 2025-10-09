import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class CashdebtWidgets extends StatefulWidget {
  String? title;
  String? cash;
  String? debt;
  final List<List<num?>> rawCash;
  final List<List<num?>> rawDebt;

  CashdebtWidgets({
    super.key,
    this.title,
    this.cash,
    this.debt,
    required this.rawCash,
    required this.rawDebt,
  });

  @override
  State<CashdebtWidgets> createState() => _CashdebtWidgetsState();
}

class _CashdebtWidgetsState extends State<CashdebtWidgets> {
  String selectedTab = "Net Income"; // Default selected tab

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = [];
    List<double> cashValues = [];
    List<double> debtValues = [];
    final rawCash = widget.rawCash;
    final rawDebt = widget.rawDebt;

    // Step 1: Group by year and keep the latest entry for each year
    Map<int, List<dynamic>> latestCashByYear = {};
    for (var entry in rawCash) {
      final ts = entry[0] as int;
      final year = DateTime.fromMillisecondsSinceEpoch(ts).year;
      if (!latestCashByYear.containsKey(year) ||
          ts > (latestCashByYear[year]![0] as int)) {
        latestCashByYear[year] = entry;
      }
    }

    Map<int, List<dynamic>> latestDebtByYear = {};
    for (var entry in rawDebt) {
      final ts = entry[0] as int;
      final year = DateTime.fromMillisecondsSinceEpoch(ts).year;
      if (!latestDebtByYear.containsKey(year) ||
          ts > (latestDebtByYear[year]![0] as int)) {
        latestDebtByYear[year] = entry;
      }
    }

    // Step 2: Take all years that appear in *either* cash or debt
    final allYears = <int>{
      ...latestCashByYear.keys,
      ...latestDebtByYear.keys,
    }.toList()..sort();

    // Step 3: Build sorted and aligned lists, filling missing ones with 0
    dates = allYears.map((year) {
      // Pick timestamp from whichever exists, fallback to Jan 1 of that year
      final ts =
          latestCashByYear[year]?[0] ??
          latestDebtByYear[year]?[0] ??
          DateTime(year).millisecondsSinceEpoch;
      return DateTime.fromMillisecondsSinceEpoch(ts);
    }).toList();

    cashValues = allYears.map((year) {
      final entry = latestCashByYear[year];
      return entry != null ? (entry[1] as num).toDouble() : 0.0;
    }).toList();

    debtValues = allYears.map((year) {
      final entry = latestDebtByYear[year];
      return entry != null ? (entry[1] as num).toDouble() : 0.0;
    }).toList();

    return Container(
      height: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        color: AppColors.color091224, // dark background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            widget.title ?? "",
            color: AppColors.fieldTextColor,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h3,
          ),

          SizedBox(height: 20),

          Container(
            height: 200,
            padding: const EdgeInsets.all(16.0),
            child: widget.rawCash.isNotEmpty && widget.rawDebt.isNotEmpty
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
                          sideTitles: SideTitles(
                            showTitles: false,
                            reservedSize: 40,
                          ),
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
                          barsSpace: 6,
                          barRods: [
                            BarChartRodData(
                              toY: cashValues[i],
                              color: AppColors.color0xFF01507a,
                              width: 20.w,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(4),
                              ),
                            ),
                            BarChartRodData(
                              toY: debtValues[i],
                              color: AppColors.color0xFF3372d6,
                              width: 20.w,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(4),
                              ),
                            ),
                          ],
                          // ✅ show value labels on top
                        );
                      }),
                      barTouchData: BarTouchData(
                        enabled: false,
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              '${rod.toY.toStringAsFixed(0)}',
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ),

          // SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🔹 Cash
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.color0xFF3372d6,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: AppColors.white, width: 1),
                    ),
                  ),
                  SizedBox(width: 4),
                  MdSnsText(
                    widget.cash ?? "",
                    color: AppColors.colorFAFAFC,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),
              SizedBox(width: 20),
              // 🔹 Debt
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.color0xFF01507a, // Dark Blue (Debt)
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.white, // 👈 border ka color
                        width: 1, // 👈 border ki thickness
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  MdSnsText(
                    widget.debt ?? "",
                    color: AppColors.colorFAFAFC,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Custom Tab Button
  Widget _tabButton(String text) {
    final bool isSelected = selectedTab == text;
    return GestureDetector(
      onTap: () => setState(() => selectedTab = text),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.color1B254B : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: MdSnsText(
          text,
          variant: TextVariant.h4,
          fontWeight: TextFontWeightVariant.h4,

          color: AppColors.white,
        ),
      ),
    );
  }
}
