import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class CashdebtWidgets extends StatefulWidget {
  String? title;
  String? cash;
  String? debt;
  CashdebtWidgets({super.key, this.title, this.cash, this.debt});

  @override
  State<CashdebtWidgets> createState() => _CashdebtWidgetsState();
}

class _CashdebtWidgetsState extends State<CashdebtWidgets> {
  String selectedTab = "Net Income"; // Default selected tab

  final List<int> years = [2021, 2020, 2019, 2018, 2017];
  final List<double> revenue = [180, 250, 90, 200, 120];
  final List<double> netIncome = [120, 210, 80, 274.52, 100];
  final List<double> eps = [2.1, 3.0, 1.2, 2.7, 1.8];

  @override
  Widget build(BuildContext context) {
    List<double> values;
    if (selectedTab == "Revenue") {
      values = revenue;
    } else if (selectedTab == "Net Income") {
      values = netIncome;
    } else {
      values = eps;
    }

    return Container(
      height: 370,
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
            color: AppColors.color0xB3FFFFFF,
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,
          ),
          MdSnsText(
            "Dummy Text",
            color: AppColors.fieldTextColor,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 40),

          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        if (index < 0 || index >= years.length) {
                          return const SizedBox.shrink();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 6,
                          ), // 👈 yahan neeche shift kiya
                          child: MdSnsText(
                            years[index].toString(),
                            color: AppColors.white,
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // 👇 yahan spacing remove kar diya
                groupsSpace: 0,
                barGroups: values.asMap().entries.map((entry) {
                  int index = entry.key;
                  double val = entry.value;

                  return BarChartGroupData(
                    x: index,
                    barsSpace: 0, // 👈 rods ke beech ka gap bhi 0
                    barRods: [
                      BarChartRodData(
                        toY: val,
                        width: 30, // half width
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF1976D2), // Dark Blue
                      ),
                      BarChartRodData(
                        toY: val,
                        width: 30, // half width
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF03A9F4), // Light Blue
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
          // 🔹 Chart ke neeche legend Row
          SizedBox(height: 16),
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
                      color: Color(0xFF03A9F4),
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
                      color: const Color(0xFF1976D2), // Dark Blue (Debt)
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
          color: isSelected ? Color(0xFF1C2245) : Colors.transparent,
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
