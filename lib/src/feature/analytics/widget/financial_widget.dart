import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class FinancialDashboard extends StatelessWidget {
  FinancialDashboard({super.key});

  final List<String> categories = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 3 Tabs
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Last Updated Text
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Financial",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Last Updated: 01-19-2023 10:30:33 EST",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Custom TabBar
              Container(
                margin: EdgeInsets.only(left: 10.w),

                child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabAlignment: TabAlignment.start,
                  indicator: BoxDecoration(
                    color: AppColors.color1B254B,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  indicatorPadding: EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 6,
                  ),
                  labelColor: Colors.white,
                  labelPadding: EdgeInsets.symmetric(horizontal: 4.w),
                  unselectedLabelColor: AppColors.colorB2B2B7,
                  dividerColor: Colors.transparent,
                  tabs: List.generate(
                    categories.length,
                    (index) => Tab(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.colorB2B2B7.withOpacity(0.4),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // TabBar Content
              Expanded(
                child: TabBarView(
                  children: [
                    const SummaryTab(),
                    Center(
                      child: Text(
                        "Income Statement Data",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Balance Sheet Data",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryTab extends StatelessWidget {
  const SummaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        _buildChartCard("Cash and Debt", ["Cash", "Debt"]),
        _buildChartCard("Assets and Stockholders", [
          "Total Assets",
          "Total Stockholder",
        ]),
        _buildChartCard("Outstanding Shares & Buyback", [
          "Outstanding Shares",
          "Buyback %",
        ]),
        _buildChartCard("Revenue and Income", ["Revenue", "Income"]),
        _buildChartCard("Cash Flow Data", [
          "Operating CF",
          "Free CF",
          "Net Income",
          "Dividends",
        ]),
      ],
    );
  }

  static Widget _buildChartCard(String title, List<String> legends) {
    return Card(
      color: AppColors.primaryColor,
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.color18202F, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "Dummy Text",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.h),
              height: 200.h,
              decoration: BoxDecoration(color: AppColors.color091224),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),

                  // Axis titles
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text(
                                "Jun 21",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              );
                            case 1:
                              return const Text(
                                "Mar 22",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              );
                            case 2:
                              return const Text(
                                "Dec 22",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              );
                          }
                          return const SizedBox();
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),

                  // Bars
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          toY: 8,
                          width: 20,
                          color: AppColors.color01507A,

                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        BarChartRodData(
                          toY: 5,
                          width: 20,
                          color: AppColors.color3372D6,

                          borderRadius: BorderRadius.circular(3.r),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          toY: 6,
                          width: 20,
                          color: AppColors.color01507A,

                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        BarChartRodData(
                          toY: 4,
                          width: 20,
                          color: AppColors.color3372D6,
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          toY: 7,
                          width: 20,
                          color: AppColors.color01507A,
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        BarChartRodData(
                          toY: 3,
                          width: 20,
                          color: AppColors.color3372D6,

                          borderRadius: BorderRadius.circular(3.r),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: legends.map((l) {
                final color = legends.indexOf(l) == 0
                    ? Colors.blueAccent
                    : Colors.lightBlueAccent;
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Row(
                    children: [
                      Container(width: 10, height: 10, color: color),
                      const SizedBox(width: 6),
                      Text(
                        l,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
