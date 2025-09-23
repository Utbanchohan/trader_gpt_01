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
                      color:  Color(0xFF1B254B), // Selected tab background
                      borderRadius: BorderRadius.circular(30),
                    ),
                    indicatorPadding: EdgeInsets.zero,
                    labelPadding:  EdgeInsets.symmetric(horizontal: 8),
                    labelColor: Colors.white,
                    unselectedLabelColor:  Color(0xFFB2B2B7),
                    tabs: [
                      // ---- First Tab (with icon + text) ----
                      Tab(
                        child: Container(
                          padding:  EdgeInsets.symmetric(
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
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
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
              style:  TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.fieldColor,
                hintText: 'Search here',
                hintStyle:  TextStyle(color: Color(0xFF8B8B97)),
                contentPadding:  EdgeInsets.symmetric(
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
            margin: EdgeInsets.only(left: 16),
            child: TabBar(
              physics: NeverScrollableScrollPhysics(),
              // indicatorSize:TabBarIndicatorSize.tab,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                color: AppColors.color1B254B,
                borderRadius: BorderRadius.circular(50),
              ),
              indicatorPadding:  EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 4,
              ),
              labelColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
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

                /// Financial Tab Content
                Center(
                  child: Text(
                    "Financial Content",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                /// Earning Tab Content
                Center(
                  child: Text(
                    "Earning Content",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                /// Analytics Tab Content
                Center(
                  child: Text(
                    "Analytics Content",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                /// Technical Tab Content
                Center(
                  child: Text(
                    "Technical Content",
                    style: TextStyle(color: Colors.white),
                  ),
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
        padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            // Aapka poora Overview ka content (Stock Info, Charts, PerformanceTable, etc.)
            CustomLineChart(),
            SizedBox(height: 20.h),
            RevenueAnalysisChart(),
            SizedBox(height: 20.h),
            PerformanceTable(),
            SizedBox(height: 20.h),
            WeeklySeasonalityChart(),
            SizedBox(height: 20.h),
            ShareStructureCard(),
          ],
        ),
      ),
    );
  }
}
