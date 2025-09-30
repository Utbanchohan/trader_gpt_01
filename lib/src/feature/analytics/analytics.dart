import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/performance_table.dart';
import 'package:trader_gpt/src/shared/chart/revenue_analysis.dart';
import 'package:trader_gpt/src/shared/chart/share_structure_widget.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/utils/constant.dart';

class AnalyticsScreen extends StatefulWidget {
  final ChatRouting? chatRouting;

  AnalyticsScreen({super.key, this.chatRouting});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  late TabController tabController;

  final List<String> categories = [
    "Overview",
    "Company",
    "Financial",
    "Earning",
    "Analytics",
    "Technical",
  ];
  bool isTabSelected = true; // Default delivery tab selected

  void isToggle(bool value) {
    isTabSelected = value;
  }

  final List<String?> categoryImages = [
    Assets.images.categoryc1.path,
    Assets.images.c2.path,
    Assets.images.diagramc3.path,
    Assets.images.directboxNotifc4.path,
    Assets.images.categoryc1.path,
    Assets.images.categoryc1.path,
  ];

  Stock? selectedStock;

  final TextEditingController search = TextEditingController();
  int selectedIndex = -1;
  @override
  void initState() {
    super.initState();

    selectedStock =
        widget.chatRouting != null && widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            avgVolume: 0,
            change: 0,
            changesPercentage: widget.chatRouting!.changePercentage,
            dayHigh: 0.0,
            dayLow: 0.0,
            earningsAnnouncement: "",
            eps: 0.0,
            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            name: widget.chatRouting!.companyName,
            open: 0,
            pe: 0,
            previousClose: 0.0,
            price: widget.chatRouting!.price,
            priceAvg200: 0,
            priceAvg50: 0,
            sharesOutstanding: 0,
            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,
            timestamp: 0,
            volume: 0,
            yearHigh: 0,
            yearLow: 0.0,
            logoUrl: widget.chatRouting!.image,
            type: "",
            count: 0,
            dateHours: "",
            ticks: 0,
            primaryLogoUrl: widget.chatRouting!.image,
            secondaryLogoUrl: widget.chatRouting!.image,
            tertiaryLogoUrl: widget.chatRouting!.image,
            status: "",
            updatedFrom: "",
            country: "us",
            exchangeSortOrder: 0,
          )
        : Stock(
            avgVolume: 0,
            change: 0,
            changesPercentage: 0,
            dayHigh: 0.0,
            dayLow: 0.0,
            earningsAnnouncement: "",
            eps: 0.0,
            exchange: "",
            fiveDayTrend: [],
            marketCap: 0,
            name: "",
            open: 0,
            pe: 0,
            previousClose: 0.0,
            price: 0,
            priceAvg200: 0,
            priceAvg50: 0,
            sharesOutstanding: 0,
            stockId: "",
            symbol: "",
            timestamp: 0,
            volume: 0,
            yearHigh: 0,
            yearLow: 0.0,
            logoUrl: "",
            type: "",
            count: 0,
            dateHours: "",
            ticks: 0,
            primaryLogoUrl: "",
            secondaryLogoUrl: "",
            tertiaryLogoUrl: "",
            status: "",
            updatedFrom: "",
            country: "us",
            exchangeSortOrder: 0,
          );
  }

  final List<Map<String, dynamic>> priceData = [
    {
      "previousPrice": "173.19",
      "afterHoursPrice": "176.22",
      "percentage": "+0.25%",
    },
    {
      "previousPrice": "210.50",
      "afterHoursPrice": "212.30",
      "percentage": "+0.85%",
    },
    {
      "previousPrice": "150.00",
      "afterHoursPrice": "149.50",
      "percentage": "-0.33%",
    },
    {
      "previousPrice": "305.75",
      "afterHoursPrice": "310.25",
      "percentage": "+1.48%",
    },
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 71.h,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.shapeRightSide.path),
                      ),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      Assets.images.message.path,

                      width: 25.w,
                      height: 21.h,
                    ),
                  ),

                  TabBar(
                    physics: NeverScrollableScrollPhysics(),
                    isScrollable: true,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xFF1B254B),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xFFB2B2B7),
                    tabs: [
                      // ---- First Tab (with icon + text) ----
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/analytics.png", // yahan apna asset icon
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "ANALYTICS",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ---- Second Tab (only text) ----
                      Tab(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "History",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),

                  children: [
                    _buildAnalyticsTab(),

                    Center(
                      child: Text(
                        "History Content Here",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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

  /// Analytics Tab Content
  Widget _buildAnalyticsTab() {
    return DefaultTabController(
      length:
          categories.length, // <- overview categories ko nested TabBar banaya
      child: Column(
        children: [
          /// 🔹 SEARCH BAR
          Padding(
            padding: EdgeInsets.all(16),
            child: TextFormField(
              controller: search,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.fieldColor,
                hintText: 'Search here',
                hintStyle: TextStyle(color: Color(0xFF8B8B97)),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    // debounceSearch(search.text);
                  },
                  child: Image.asset(Assets.images.searchNormal.path, scale: 5),
                ),
              ),
            ),
          ),

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
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: AppColors.colorB2B2B7.withOpacity(0.4),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (categoryImages[index] != null)
                          Image.asset(
                            categoryImages[index]!,
                            width: 14.w,
                            height: 14.h,
                          ),
                        if (categoryImages[index] != null) SizedBox(width: 8.w),
                        Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          /// 🔹 Nested TabBarView
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),

              children: [
                /// Overview Tab Content
                _overviewContent(),

                /// Company Tab Content
                Center(
                  child: Text(
                    "Company Content",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MdSnsText(
                          "#${selectedStock!.symbol}",
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
                        const SizedBox(width: 4),
                        MdSnsText(
                          selectedStock!.name.split("-").first.trim(),
                          color: AppColors.colorB2B2B7,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.white,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MdSnsText(
                          " ${selectedStock!.changesPercentage.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          selectedStock!.changesPercentage.toString().contains(
                                "-",
                              )
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${selectedStock!.changesPercentage.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Overview Content (jo aapka pehle likha hua UI tha)
  Widget _overviewContent() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            Row(
              children: [
                Image.asset(
                  Assets.images.frame1171275460.path,
                  height: 53.h,
                  width: 53.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MdSnsText(
                          "#TSLA",
                          // "#${selectedStock!.symbol}",
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
                        const SizedBox(width: 4),
                        MdSnsText(
                          "TESLA INC",
                          // selectedStock!.name.split("-").first.trim(),
                          color: AppColors.colorB2B2B7,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.white,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MdSnsText(
                          " ${selectedStock!.changesPercentage.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          selectedStock!.changesPercentage.toString().contains(
                                "-",
                              )
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${selectedStock!.changesPercentage.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.changesPercentage
                                  .toString()
                                  .contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.h10,
            SizedBox(
              height: 122.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal, // Horizontal scrolling
                // padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: priceData.length,
                physics: const BouncingScrollPhysics(), // Smooth scrolling
                itemBuilder: (context, index) {
                  final item = priceData[index];
                  return PriceCardWidget(
                    previousPrice: item["previousPrice"],
                    afterHoursPrice: item["afterHoursPrice"],
                    percentage: item["percentage"],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20.w);
                },
              ),
            ),
            SizedBox(height: 20.h),
            CustomLineChart(),

            SizedBox(height: 20.h),

            RevenueAnalysisChart(),
            SizedBox(height: 20.h),

            // ---------- PERFORMANCE OVERVIEW ----------
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.colorB3B3B3),
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MdSnsText(
                        "Performance Overview",
                        color: AppColors.white,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h4,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Assets.images.textalignJustifycenter.path,
                            height: 14.h,
                            width: 16.55.w,
                          ),
                          SizedBox(width: 10.w),
                          Image.asset(
                            Assets.images.chart.path,
                            height: 14.h,
                            width: 14.w,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  PerformanceTable(),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.color091224,
                borderRadius: BorderRadius.circular(12),
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
                  SizedBox(
                    height: 180,
                    child: LineChart(
                      LineChartData(
                        backgroundColor: AppColors.color091224,
                        gridData: FlGridData(
                          show: true,
                          getDrawingHorizontalLine: (value) => FlLine(
                            color: AppColors.color1B254B,
                            strokeWidth: 3,
                          ),
                          getDrawingVerticalLine: (value) =>
                              FlLine(color: Colors.transparent, strokeWidth: 1),
                        ),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 28,
                              interval: 10,
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
                              interval: 1,
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
                            spots: [
                              FlSpot(1, 35),
                              FlSpot(2, 40),
                              FlSpot(3, 20),
                              FlSpot(4, 55),
                              FlSpot(5, 60),
                              FlSpot(6, 45),
                              FlSpot(7, 38),
                              FlSpot(8, 42),
                              FlSpot(9, 41),
                              FlSpot(10, 50),
                              FlSpot(11, 55),
                              FlSpot(12, 37),
                            ],
                            isCurved: true,
                            color: AppColors.color0098E4,
                            barWidth: 3,
                            dotData: FlDotData(show: false),
                          ),
                          LineChartBarData(
                            spots: [
                              FlSpot(1, 25),
                              FlSpot(2, 35),
                              FlSpot(3, 30),
                              FlSpot(4, 40),
                              FlSpot(5, 45),
                              FlSpot(6, 72),
                              FlSpot(7, 20),
                              FlSpot(8, 28),
                              FlSpot(9, 26),
                              FlSpot(10, 60),
                              FlSpot(11, 70),
                              FlSpot(12, 58),
                            ],
                            isCurved: true,
                            color: AppColors.color06D54E,
                            barWidth: 3,
                            dotData: FlDotData(show: false),
                          ),
                        ],
                        minX: 1,
                        maxX: 12,
                        minY: 10,
                        maxY: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            WeeklySeasonalityChart(),
            SizedBox(height: 20.h),
            ShareStructureCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab({
    required bool isSelected,
    required String title,
    required String iconPath,
  }) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.color091224 : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 20,
            width: 20,
            color: isSelected ? AppColors.color00FF55 : Colors.white,
          ),
        ],
      ),
    );
  }
}

/// Custom Chip Widget
Widget _chip(String label, {bool isSelected = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: isSelected ? Colors.blueAccent : const Color(0xFF142233),
      borderRadius: BorderRadius.circular(20),
    ),
    child: MdSnsText(label, color: AppColors.white, variant: TextVariant.h3),
  );
}
