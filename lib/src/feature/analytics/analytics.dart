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
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsScreen extends StatefulWidget {
  final ChatRouting? chatRouting;

  const AnalyticsScreen({super.key, this.chatRouting});

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Analytics & History
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: AppColors.color091224,
          elevation: 0,
          toolbarHeight: 100, // AppBar height for custom tab
          title: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Delivery Tab
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isToggle(true);
                      tabController.animateTo(0);
                    },
                    child: _buildTab(
                      isSelected: isTabSelected,
                      title: "Delivery",

                      iconPath: Assets.images.searchNormal.path,
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // Collection Tab
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isToggle(false);
                      tabController.animateTo(1);
                    },
                    child: _buildTab(
                      isSelected: !isTabSelected,
                      title: "Collection",

                      iconPath: Assets.images.searchNormal.path,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // --------- Analytics Tab ---------
            _buildAnalyticsTab(),

            // --------- History Tab ---------
            const Center(
              child: Text(
                "History Content Here",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Analytics Tab Content
  Widget _buildAnalyticsTab() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            // ---------- SEARCH BAR ----------
            TextFormField(
              controller: search,
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.search,
              // onChanged: (value) {
              //   debounceSearch(value);
              // },
              // onFieldSubmitted: (value) {
              //   debounceSearch(value);
              // },
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.fieldColor,
                hintText: 'Search here',
                hintStyle: TextStyle(color: Color(0xFF8B8B97)),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0), // Rounded corners
                  borderSide: BorderSide.none,
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    // debounceSearch(search.text);
                  },
                  child: Image.asset(
                    Assets.images.searchNormal.path,
                    scale: 5,
                    // width: 20.w,
                    // height: 20.h,
                  ),
                ),
              ),
            ),
            // SizedBox(height: 14.h),

            // ---------- FILTER CHIPS ----------
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                height: 36.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final String? imagePath = categoryImages[index];

                    final bool isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12.w),
                        height: 36.h,
                        width: 109.w,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.color1B254B
                              : Colors.transparent, // Default color
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(179, 179, 179, 0.1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Show image if available
                            if (imagePath != null && imagePath.isNotEmpty) ...[
                              Image.asset(imagePath, width: 14.w, height: 14.h),
                              SizedBox(width: 10.w),
                            ],

                            // Category text
                            MdSnsText(
                              categories[index],

                              color: AppColors.white,
                              variant: TextVariant.h3,
                              fontWeight: TextFontWeightVariant.h4,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 14.h),

            // ---------- STOCK INFO ----------
            Row(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 53.w,
                        height: 53.h,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child:
                            selectedStock != null &&
                                selectedStock!.logoUrl.isNotEmpty
                            ? Image.network(
                                selectedStock!.logoUrl,
                                width: 31.w,
                                height: 31.h,
                              )
                            : Image.asset(
                                Assets.images.tesla.path,
                                width: 31.w,
                                height: 31.h,
                              ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 22.w,
                        height: 22.h,
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                          color: AppColors.color1A1F2C,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          Assets.images.tradersGPTLogo.path,
                          width: 15.w,
                          height: 15.h,
                        ),
                      ),
                    ),
                  ],
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

            // ---------- PRICE COMPARISON ----------
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
