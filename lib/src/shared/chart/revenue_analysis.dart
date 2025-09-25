import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class RevenueAnalysisChart extends StatefulWidget {
  RevenueAnalysisChart({super.key});

  @override
  State<RevenueAnalysisChart> createState() => _RevenueAnalysisChartState();
}

class _RevenueAnalysisChartState extends State<RevenueAnalysisChart> {
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
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF0D1428), // Background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MdSnsText(
                "Revenue Analysis (2020–2025)",
                color: AppColors.color0xB3FFFFFF,
                variant: TextVariant.h2,
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.textalignJustifycenter.path,
                    height: 14.h,
                    width: 16.55.w,
                    color: AppColors.colo2C3754,
                  ),
                  SizedBox(width: 10.w),
                  Image.asset(
                    Assets.images.chart.path,
                    height: 14.h,
                    color: AppColors.fieldTextColor,
                    width: 14.w,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          // 🔹 Toggle Tabs
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _tabButton("Revenue"),
              SizedBox(width: 12),
              _tabButton("Net Income"),
              SizedBox(width: 12),
              _tabButton("EPS"),
            ],
          ),

          SizedBox(height: 20),

          // 🔹 Bar Chart
          SizedBox(
            height: 250,
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
                          return SizedBox.shrink();
                        }
                        return MdSnsText(
                          years[index].toString(),
                          color: AppColors.white,
                          variant: TextVariant.h4,
                        );
                      },
                    ),
                  ),
                ),
                barGroups: values.asMap().entries.map((entry) {
                  int index = entry.key;
                  double val = entry.value;

                  return BarChartGroupData(
                    x: index,
                    barRods: [
                      BarChartRodData(
                        toY: val,
                        width: 30,
                        borderRadius: BorderRadius.circular(10),
                        color: index.isEven
                            ? Color(0xFF1976D2)
                            : Color(0xFF03A9F4),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
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
          variant: TextVariant.h5,
          fontWeight: isSelected
              ? TextFontWeightVariant.h1
              : TextFontWeightVariant.h4,

          color: AppColors.white,
        ),
      ),
    );
  }
}
