import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data/weekly_data.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/performance_table.dart';
import 'package:trader_gpt/src/shared/chart/revenue_analysis.dart';
import 'package:trader_gpt/src/shared/chart/share_structure_widget.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/InfoBox_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/company_detail.widgets.dart';
import 'package:trader_gpt/src/shared/widgets/earning_wigdets.dart'
    hide CompanyDetailsCard;
import 'package:trader_gpt/src/shared/widgets/financialtable_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/insiderTrader_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/outstanding_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/profileCard_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/security_short_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/securityownership_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/shortvalue.widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/utils/constant.dart';

import '../../../../core/extensions/symbol_image.dart';
import '../../../../core/routes/routes.dart';
import '../../data/dto/overview_dto/overview_dto.dart';
import '../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../../domain/model/matrics_data_model/matrics_data_model.dart';
import '../../domain/model/monthly_model/monthly_model.dart';
import '../../domain/model/overview_model/overview_model.dart';
import '../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../domain/model/stock_price_model/stock_price_model.dart';
import '../../domain/model/weekly_model/weekly_model.dart';
import '../provider/monthly_data/monthly_data.dart';

class AnalyticsScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;

  AnalyticsScreen({super.key, this.chatRouting});

  @override
  ConsumerState<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen> {
  late TabController tabController;
  StockPriceModel? stockPrices;
  StockResponse? stockResponse;
  PriceComparisonModel? priceComparisonModel;
  MatricsResponse? matricData;
  ProbabilityResponse? probabilityResponse;
  WeeklyModel? weeklyData;
  ProbabilityResponse? monthlyData;

  getOverview(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .getOverview(symbol);
    if (res != null) {
      stockResponse = res;
    }
  }

  getMatricsData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .matricsData(symbol);
    if (res != null) {
      matricData = res;
    }
  }

  priceComparison(PriceComparisonDto priceComparisonDto) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .priceComparison(priceComparisonDto);
    if (res != null) {
      priceComparisonModel = res;
    }
  }

  final List<String> categories = [
    "Overview",
    "Company",
    "Financial",
    "Earning",
    "Analytics",
    "Technical",
  ];
  final companyInfo = [
    {"icon": Icons.home, "title": "Headquarter", "value": "One Microsoft Way"},
    {"icon": Icons.location_on, "title": "Country", "value": "US"},
    {"icon": Icons.groups, "title": "Employees", "value": "228000"},
    {
      "icon": Icons.language,
      "title": "Website",
      "value": "https://www.microsoft.com",
    },
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
    if (widget.chatRouting != null) {
      getOverview(SymbolDto(symbol: widget.chatRouting!.symbol));
      getMatricsData(SymbolDto(symbol: widget.chatRouting!.symbol));
      priceComparison(
        PriceComparisonDto(
          daysBack: 365,
          symbol1: widget.chatRouting!.symbol,
          symbol2: "SPY",
        ),
      );
      getWeeklyData(widget.chatRouting!.symbol);
      getMonthlyData(widget.chatRouting!.symbol);
    }

    selectedStock =
        widget.chatRouting != null && widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            companyName: widget.chatRouting!.companyName,
            pctChange: widget.chatRouting!.changePercentage,
            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            previousClose: 0.0,
            price: widget.chatRouting!.price,
            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,
            type: "",
          )
        : emptyStock();
  }

  final List<ChartData> chartData = [
    ChartData(DateTime(2024, 1, 1), 200, 500, 100),
    ChartData(DateTime(2024, 2, 1), 300, 600, 150),
    ChartData(DateTime(2024, 3, 1), 250, 700, 200),
    ChartData(DateTime(2024, 4, 1), 400, 900, 220),
    ChartData(DateTime(2024, 5, 1), 350, 800, 180),
  ];

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

  getWeeklyData(symbol) async {
    weeklyData = await ref
        .read(weeklyDataProvider.notifier)
        .getWeeklyData(symbol);
  }

  getMonthlyData(symbol) async {
    monthlyData = await ref
        .read(monthlyDataProvider.notifier)
        .getMonthlyData(symbol);
    setState(() {});
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
                  InkWell(
                    onTap: () {
                      context.pushNamed(
                        AppRoutes.swipeScreen.name,
                        extra: {
                          "chatRouting": widget.chatRouting,
                          "initialIndex": 1,
                        },
                      );
                    },
                    child: Container(
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
                _companyContent(),
                _financialContent(),
                _companyContent(),
                _companyContent(),

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
                          selectedStock!.companyName.split("-").first.trim(),
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
                          "\$${selectedStock!.price.toStringAsFixed(2)}",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          selectedStock!.pctChange.toString().contains("-")
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${selectedStock!.pctChange.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
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

  Widget _overviewContent() {
    double? maxY;
    double? maxX;

    List<FlSpot> buildSpots(Map<String, double> values) {
      final List<FlSpot> spots = [];
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

      maxY = spots.last.y;
      maxX = spots.last.x;
      return spots;
    }

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            Row(
              children: [
                // Image.asset(
                //   Assets.images.frame1171275460.path,
                //   height: 53.h,
                //   width: 53.w,
                // ),
                SizedBox(width: 10),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: SvgPicture.network(
                      getItemImage(
                        // selectedStock!.type.toLowerCase() == "stock"
                        // ?
                        ImageType.stock,
                        //     : ImageType.crypto,
                        selectedStock!.symbol,
                      ),
                      fit: BoxFit.cover,
                      placeholderBuilder: (context) => SizedBox(
                        height: 26.h,
                        width: 26.w,
                        child: SizedBox(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
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
                          selectedStock!.companyName.split("-").first.trim(),
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
                          "\$${selectedStock!.price.toStringAsFixed(2)}",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          selectedStock!.pctChange.toString().contains("-")
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${selectedStock!.pctChange.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
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
            Visibility(
              visible:
                  stockResponse != null &&
                  stockResponse!.data.previousClose != null,
              child: SizedBox(
                height: 122.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  // padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(), // Smooth scrolling
                  itemBuilder: (context, index) {
                    final item = priceData[0];
                    return index == 0
                        ? PriceCardWidget(
                            firstColor: AppColors.white,
                            secondColor: AppColors.color0xFFFFB21D,
                            firstHeading: "PREVIOUSLY CLOSE PRICE",
                            secondHeading: "AFTER HOURS",
                            previousPrice: stockResponse!.data.previousClose
                                .toString(),
                            afterHoursPrice: stockResponse!.data.AfterHours
                                .toString(),
                            percentage: item["percentage"],
                          )
                        : index == 1
                        ? PriceCardWidget(
                            secondColor: AppColors.white,
                            firstColor: AppColors.color046297,
                            firstHeading: "MARKET CAPITILIZATION",
                            secondHeading: "OUTSTANDING SHARES",
                            previousPrice: stockResponse!
                                .data
                                .MarketCapitalization
                                .toString(),
                            afterHoursPrice: stockResponse!
                                .data
                                .SharesOutstanding
                                .toString(),
                            percentage: item["percentage"],
                          )
                        : index == 2
                        ? PriceCardWidget(
                            firstColor: AppColors.white,
                            secondColor: AppColors.white,

                            firstHeading: "TOTAL VOLUME",
                            secondHeading: "AVERAGE VOLUME(3M)",
                            previousPrice: stockResponse!.data.TotalVolume
                                .toString(),
                            afterHoursPrice: stockResponse!.data.AverageVolume
                                .toString(),
                            percentage: item["percentage"],
                          )
                        : index == 3
                        ? PriceCardWidget(
                            firstColor: AppColors.color00FF55,
                            secondColor: AppColors.colorab75b8,
                            firstHeading: "EXCHANGE",
                            secondHeading: "MARKET CAPTILIZATION",
                            previousPrice: stockResponse!.data.Exchange
                                .toString(),
                            afterHoursPrice: stockResponse!
                                .data
                                .MarketCapClassification
                                .toString(),
                            percentage: item["percentage"],
                          )
                        : PriceCardWidget(
                            firstColor: AppColors.white,
                            secondColor: AppColors.white,
                            firstHeading: "SECTOR",
                            secondHeading: "INDUSTRY",
                            previousPrice: stockResponse!.data.Sector
                                .toString(),
                            afterHoursPrice: stockResponse!.data.Industry
                                .toString(),
                            percentage: item["percentage"],
                          );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 20.w);
                  },
                ),
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

            Visibility(
              visible:
                  priceComparisonModel != null &&
                  priceComparisonModel!.data.MSFT != null &&
                  priceComparisonModel!.data.SPY != null,
              child: Container(
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
                    priceComparisonModel != null &&
                            priceComparisonModel!.data.MSFT != null &&
                            priceComparisonModel!.data.SPY != null
                        ? SizedBox(
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
                                  getDrawingVerticalLine: (value) => FlLine(
                                    color: Colors.transparent,
                                    strokeWidth: 1,
                                  ),
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 28,
                                      interval: 100,
                                      getTitlesWidget: (value, meta) =>
                                          MdSnsText(
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
                                      getTitlesWidget: (value, meta) =>
                                          MdSnsText(
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
                                      priceComparisonModel!.data.MSFT!,
                                    ),
                                    isCurved: true,
                                    color: AppColors.color0098E4,
                                    barWidth: 3,
                                    dotData: FlDotData(show: false),
                                  ),
                                  LineChartBarData(
                                    spots: buildSpots(
                                      priceComparisonModel!.data.SPY!,
                                    ),
                                    isCurved: true,
                                    color: AppColors.color06D54E,
                                    barWidth: 3,
                                    dotData: FlDotData(show: false),
                                  ),
                                ],
                                minX: 1,
                                maxX: maxX ?? 10000,
                                minY: 0,
                                maxY: maxY ?? 10000,
                              ),
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),

            monthlyData != null
                ? WeeklySeasonalityChart(
                    data: monthlyData!,
                    isWeekly: false,
                    weeklyModel: WeeklyModel(),
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
            weeklyData != null
                ? WeeklySeasonalityChart(
                    weeklyModel: weeklyData!,
                    isWeekly: true,
                    data: ProbabilityResponse(),
                  )
                : SizedBox(),
            SizedBox(height: 20.h),

            matricData != null &&
                    matricData!.data != null &&
                    matricData!.data!.isNotEmpty
                ? ShareStructureCard(data: matricData!.data)
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _companyContent() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            // SizedBox(height: 14.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  "Company Details",
                  color: AppColors.fieldTextColor,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                SizedBox(height: 14.h),

                ReadMoreText(
                  "Lorem ipsum dolor sit amet consectetur. Ultrices consectetur turpis egestas faucibus. "
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '',
                  trimExpandedText: '',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 14.h),
                GestureDetector(
                  onTap: () {},
                  child: MdSnsText(
                    "Read more",
                    variant: TextVariant.h3,
                    fontWeight: TextFontWeightVariant.h1,

                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(height: 14.h),
                InfoBoxGrid(items: companyInfo),
                SizedBox(height: 10.h),
                MdSnsText(
                  "Key Executives",
                  color: AppColors.fieldTextColor,
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileCardWidget(
                      imagePath: "assets/images/image 263.png",
                      designation: "Chairman & Ceo",
                      name: "Mr. Satya Nadella",
                    ),
                    ProfileCardWidget(
                      imagePath: "assets/images/image 262.png",
                      designation: "Chairman & Ceo",
                      name: "Mr. Bradford L. Smith",
                    ),
                    ProfileCardWidget(
                      imagePath: "assets/images/image 262 (1).png",
                      designation: "Chairman & Ceo",
                      name: "Ms. Amy E. Hood",
                    ),
                  ],
                ),

                SizedBox(height: 14.h),
                CompanyDetailsCard(),
                SizedBox(height: 14.h),
                Earnings(),
                SizedBox(height: 14.h),
                ShortVolumeChart(
                  data: [
                    ChartData(DateTime(2024, 1, 1), 200, 500, 100),
                    ChartData(DateTime(2024, 2, 1), 300, 600, 150),
                    ChartData(DateTime(2024, 3, 1), 250, 700, 200),
                    ChartData(DateTime(2024, 4, 1), 400, 900, 220),
                    ChartData(DateTime(2024, 5, 1), 350, 800, 180),
                  ],
                ),
                SizedBox(height: 14.h),
                OutstandingSharesChart(),
                SizedBox(height: 14.h),

                InsiderTraderTable(),
                SizedBox(height: 14.h),
                SecurityOwnershipTable(),
                SizedBox(height: 14.h),
                SecurityShortVolume(),
              ],
            ),

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

            // WeeklySeasonalityChart(),
            // SizedBox(height: 20.h),
            // ShareStructureCard(),
          ],
        ),
      ),
    );
  }

  Widget _financialContent() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            Row(
              children: [
                // Image.asset(
                //   Assets.images.Frame 1171275460.path,
                //   height: 53.h,
                //   width: 53.w,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MdSnsText(
                          "",

                          // "#${widget.chatRouting!.symbol}",
                          variant: TextVariant.h2,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
                        const SizedBox(width: 4),
                        MdSnsText(
                          "TESLA INC",
                          // widget.chatRouting!.companyName
                          //     .split("-")
                          //     .first
                          //     .trim(),
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
                          " ${selectedStock!.pctChange.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          selectedStock!.pctChange.toString().contains("-")
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color:
                              selectedStock!.pctChange.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${selectedStock!.pctChange.toStringAsFixed(2)}%",
                          color:
                              selectedStock!.pctChange.toString().contains("-")
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

            SizedBox(
              height: 154.h, // Height fixed for horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scrolling
                // padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: priceData.length,
                physics: const BouncingScrollPhysics(), // Smooth scrolling
                itemBuilder: (context, index) {
                  final item = priceData[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 16.w,
                    ), // Space between cards
                    child: PriceCardWidget(
                      firstColor: AppColors.white,
                      secondColor: AppColors.white,
                      secondHeading: "AFTER HOURS",
                      firstHeading: "Previous Close",
                      previousPrice: item["previousPrice"],
                      afterHoursPrice: item["afterHoursPrice"],
                      percentage: item["percentage"],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 5),
            Image.asset("assets/images/info-circle.png", height: 14, width: 14),

            const SizedBox(height: 10),

            // ---- Sub text ----
            const Text(
              "Last Updated: 01-19-2023 10:30:33 EST",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            // ---- FIRST TAB CONTROLLER ----
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabAlignment: TabAlignment.start,
                      indicator: BoxDecoration(
                        color: const Color(0xFF1B254B),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      indicatorPadding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 6,
                      ),
                      labelColor: Colors.white,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                      unselectedLabelColor: const Color(0xFFB2B2B7),
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color(0xFFB2B2B7).withOpacity(0.4),
                                width: 1,
                              ),
                            ),
                            child: const Text(
                              "Summary",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color(0xFFB2B2B7).withOpacity(0.4),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "Income Statement",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color(0xFFB2B2B7).withOpacity(0.4),
                                width: 1,
                              ),
                            ),
                            child: const Text(
                              "Balance Sheet",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: const Color(0xFFB2B2B7).withOpacity(0.4),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              "Cash Flow",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                CashdebtWidgets(
                                  title: "Cash and Debt",
                                  cash: "Cash",
                                  debt: "Debt",
                                ),
                                SizedBox(height: 20),
                                CashdebtWidgets(
                                  title: "Assets and Stockholders",
                                  cash: "Total Assets",
                                  debt: "Total StackHolder",
                                ),
                                SizedBox(height: 20),
                                CashdebtWidgets(
                                  title: "Outstanding Shares & Buypack",
                                  cash: "Outstanding Shares",
                                  debt: "Stock Buyback Percentage",
                                ),
                                SizedBox(height: 20),
                                CashdebtWidgets(
                                  title: "Revenue and Income",
                                  cash: "Total Assets",
                                  debt: "Total StackHolder",
                                ),
                              ],
                            ),
                          ),
                          //tab 2
                          SingleChildScrollView(
                            child: Column(
                              children: [CustomLineChart(), FinancialTable()],
                            ),
                          ),
                          Center(
                            child: Text(
                              "Page 3",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Page 4",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),

              // WeeklySeasonalityChart(),
              // SizedBox(height: 20.h),

              // ShareStructureCard(),
            ),
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
