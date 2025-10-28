import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/crypto_market_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/about_crypto/about_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/info_crypto/info_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/monthly_data_crypto/monthly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/overview_candle_chart_crypto/overview_candle_chart_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data_crypto/weekly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/highlights_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/price_performance_model/price_performance_model.dart';
import 'package:trader_gpt/src/shared/widgets/AnalysisTableShimmer.dart';
import 'package:trader_gpt/src/shared/widgets/EarningsTableShimmer.dart';
import 'package:trader_gpt/src/shared/widgets/EarningsTrendShimmer.dart';
import 'package:trader_gpt/src/shared/widgets/QuarterlyPerformanceChartShimmer.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analysis_table.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_widget.dart'
    show AnalyticsWidget;
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/date_picker_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/earning_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/price_target_widget.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/overview_candle_chart/overview_candle_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data/weekly_data.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/company_detail/company_detail_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/share_structure_widget.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/CustomCandleChartShimmer%20.dart';
import 'package:trader_gpt/src/shared/widgets/EarningsTrend_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/InfoBox_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/WeeklyBarChart_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_shimmer_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/company_detail.widgets.dart';
import 'package:trader_gpt/src/shared/widgets/earning_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/earning_wigdets.dart'
    hide CompanyDetailsCard;
import 'package:trader_gpt/src/shared/widgets/earningsTable_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/financialtable_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/insiderTrader_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/matrics_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/outstanding_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/pricePerformance_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/profileCard_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/profile_card_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/utils/constant.dart';

import '../../../../core/extensions/price_calculation.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../core/routes/routes.dart';
import '../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../../shared/widgets/esg_score_table.dart';
import '../../../../shared/widgets/price_card_shimmer.dart'
    hide ProfileCardShimmer;
import '../../../../shared/widgets/security_short_widgets.dart';
import '../../../../shared/widgets/securityownership_widgets.dart';
import '../../../../shared/widgets/shortvalue.widgets.dart';
import '../../../../shared/widgets/split_dividend.dart';
import '../../data/dto/analysis_dto/analysis_dto.dart';
import '../../data/dto/financial_dto/financial_dto.dart';
import '../../data/dto/highlight_dto/highlight_dto_crypto.dart';
import '../../data/dto/market_cap_dto/market_cap_dto.dart';
import '../../data/dto/overview_dto/overview_dto.dart';
import '../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../../domain/model/about_crypto/about_crypto_model.dart';
import '../../domain/model/analysis_data/analysis_data_model.dart';
import '../../domain/model/analytics_model/analytics_model.dart';
import '../../domain/model/crypto_market_model/crypto_market_model.dart';
import '../../domain/model/earning_chart_model/earning_chart_model.dart';
import '../../domain/model/earning_report_model/earning_report_model.dart';
import '../../domain/model/earnings_model/earnings_model.dart';
import '../../domain/model/esg_score_model/esg_score_model.dart';
import '../../domain/model/financial_chart_data/financial_chart_data_model.dart';
import '../../domain/model/financial_data_model/financial_data_model.dart';
import '../../domain/model/fundamental_model/fundamental_model.dart';
import '../../domain/model/highlight_model_crypto/highlight_model_crypto.dart';
import '../../domain/model/info_model_crypto/info_model_crypto.dart';
import '../../domain/model/insider_transaction/insider_transaction_model.dart';
import '../../domain/model/market_cap_model/market_cap_model.dart';
import '../../domain/model/matrics_data_model/matrics_data_model.dart';
import '../../domain/model/monthly_model/monthly_model.dart';
import '../../domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';
import '../../domain/model/overview_model/overview_model.dart';
import '../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../domain/model/security_ownership_model/security_ownership_model.dart';
import '../../domain/model/security_short/short_security_model.dart';
import '../../domain/model/share_stats/share_stats.dart';
import '../../domain/model/short_volume/short_volume_model.dart' hide ChartData;
import '../../domain/model/stock_price_model/stock_price_model.dart';
import '../../domain/model/weekly_model/weekly_model.dart';
import '../provider/chart_data.dart';
import '../provider/monthly_data/monthly_data.dart';
import 'widgets/analytics_candle_stick_chart.dart';
import 'widgets/operating_cash_flow.dart';
import 'widgets/price_comparison_chart.dart';

class AnalyticsScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;

  AnalyticsScreen({super.key, this.chatRouting});

  @override
  ConsumerState<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  late TabController financeialTabController;
  StockPriceModel? stockPrices;
  StockResponse? stockResponse;
  PriceComparisonModel? priceComparisonModel;
  MatricsResponse? matricData;
  ProbabilityResponse? probabilityResponse;
  WeeklyModel? weeklyData;
  ProbabilityResponse? monthlyData;
  FundamentalResponse? fundamentalResponse;
  SharesResponse? sharesResponse;
  PriceTargetMatrics? priceTargetMatrics;
  AnalystRatingResponse? analyticsRespinseData;
  CompanyData? companyModel;
  EarningsData? earningdata;
  ShortVolumeModel? shortVolumeModel;
  InsiderTransactionResponse? insiderTransactionResponse;
  SecurityOwnershipResponse? securityOwnership;
  ShortSecurityResponse? securityShortVolume;
  EsgScoreModel? esgScoreData;
  CompanyDetailModel? companyDetailModel;
  EarningChartModel? earningChartModel;
  EarningReportsModel? earningReportsModel;
  AnalysisDataModel? analysisDataModel;
  FinancialResponse? financialResponse;
  FinanceDataResponse? financeChartsDataModel;
  List<OverviewCandleChartModel>? overviewCandleChartModel;
  PricePerformance? pricePerformanceData;
  bool chartLoader = false;
  bool ishowLoder = false;
  bool isshowpriceTargetMatricsDataLoder = false;
  bool isshowshareStructureLoder = false;

  //crypto Variable start
  List<OverviewCandleChartModel>? overviewCandleChartModelCrypto;
  WeeklyModel? weeklyDataCrypto;
  ProbabilityResponse? monthlyDataCrypto;
  AboutCryptoModel? aboutCryptoModel;
  HighlightResponse? highlightResponse;
  MarketCapResponse? marketCapResponse;
  CryptoMarketModel? cryptoMarketModel;
  PriceComparisonModel? priceRatioModel;
  InfoCryptoResponse? infoCryptoResponse;

  final compactFormatter = NumberFormat.compact();

  //crypto Variable end

  //chartData
  final chartService = ChartService();

  financialData(String symbol) async {
    PriceRequestDto overview = PriceRequestDto(symbol: symbol, isYearly: true);
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .financialData(overview);
    if (res != null) {
      financialResponse = res;
    }
  }

  financialCharts(String symbol) async {
    SymbolDto symbols = SymbolDto(symbol: symbol);
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .financialCharts(symbols);
    if (res != null) {
      financeChartsDataModel = res;
    }
  }

  getOverview(SymbolDto symbol) async {
    try {
      ishowLoder = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .getOverview(symbol);
      if (res != null) {
        stockResponse = res;
        ishowLoder = false;
      }
    } catch (e) {
      print(e);
      ishowLoder = false;
    }
  }

  pricePerformance(SymbolDto symbol) async {
    try {
      ishowLoder = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .pricePerformance(symbol);
      if (res != null) {
        pricePerformanceData = res;
        ishowLoder = false;
      }
    } catch (e) {
      print(e);
      ishowLoder = false;
    }
  }

  getCompanyDetail(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .companyDetail(symbol);
    if (res != null) {
      companyDetailModel = res;
    }
  }

  getEarningData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .earningsData(symbol);
    if (res != null) {
      earningdata = res.data;
    }
  }

  esgScore(String symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .esgScore(symbol);
    if (res != null) {
      esgScoreData = res;
    }
  }

  insiderTrades(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .insiderTrades(symbol);
    if (res != null) {
      insiderTransactionResponse = res;
    }
  }

  getSecurityShortVolumeData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .securityShortVolume(symbol);
    if (res != null) {
      securityShortVolume = res;
    }
  }

  getShortOwnership(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .shortOwnership(symbol);
    if (res != null) {
      securityOwnership = res;
    }
  }

  getShortVolumeData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .shortVolumeData(symbol);
    if (res != null) {
      shortVolumeModel = res;
    }
  }

  getcompanyData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .companyData(symbol);
    if (res != null) {
      companyModel = res.data;
    }
  }

  analyticsData(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .analyticsData(symbol);
    if (res != null) {
      analyticsRespinseData = res;
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

  fundamental(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .fundamentalData(symbol);
    if (res != null) {
      fundamentalResponse = res;
    }
  }

  shares(SymbolDto symbol) async {
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .shareStats(symbol);
    if (res != null) {
      sharesResponse = res;
    }
  }

  priceTargetMatricsData(SymbolDto symbol) async {
    isshowpriceTargetMatricsDataLoder = true;
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .priceTargetMatrics(symbol);
    if (res != null) {
      priceTargetMatrics = res;
      isshowpriceTargetMatricsDataLoder = false;
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

  earningChartData(String symbol) async {
    final now = DateTime.now().toUtc();

    // Subtract 2 years for startDate
    final startDate = DateTime.utc(
      now.year - 2,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
      now.millisecond,
    );
    final endDateString = now.toIso8601String();
    final startDateString = startDate.toIso8601String();
    ChartRequestDto overview = ChartRequestDto(
      symbol: "NDAQ",
      interval: IntervalEnum.quarterly.value,
      startDate: startDateString,
      endDate: endDateString,
    );
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .earningChartData(overview);
    if (res != null) {
      earningChartModel = res;
    }
  }

  earningReportData(String symbol) async {
    final now = DateTime.now().toUtc();

    // Subtract 2 years for startDate
    final startDate = DateTime.utc(
      now.year - 2,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
      now.millisecond,
    );
    final endDateString = now.toIso8601String();
    final startDateString = startDate.toIso8601String();
    ChartRequestDto overview = ChartRequestDto(
      symbol: symbol,
      interval: IntervalEnum.quarterly.value,
      startDate: startDateString,
      endDate: endDateString,
    );
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .earningReportData(overview);
    if (res != null) {
      earningReportsModel = res;
    }
  }

  getAnalysisData(
    String symbol,
    IntervalEnum interval, {
    DateTime? now1,
    DateTime? startDate1,
  }) async {
    final now = now1 != null ? now1.toUtc() : DateTime.now().toUtc();

    // Subtract 2 years for startDate
    final startDate = startDate1 != null
        ? startDate1.toUtc()
        : DateTime.utc(
            now.year - 10,
            now.month,
            now.day,
            now.hour,
            now.minute,
            now.second,
            now.millisecond,
          );
    final endDateString = now.toIso8601String();
    final startDateString = startDate.toIso8601String();
    ChartRequestDto overview = ChartRequestDto(
      symbol: symbol,
      interval: interval.value,
      startDate: startDateString,
      endDate: endDateString,
    );
    if (!mounted) return;
    setState(() {
      chartLoader = true;
    });
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .analysisData(overview);
    if (res != null) {
      analysisDataModel = res;
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    } else {
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    }
  }

  final List<String> financialtabs = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];
  final List<String> categories = [
    "Overview",
    "Company",
    "Financial",
    "Earning",
    "Analysis",
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
  ];

  Stock? selectedStock;

  final TextEditingController search = TextEditingController();
  int selectedIndex = -1;
  Future<void> secondIndexTap() async {
    if (companyModel == null) {
      try {
        await getcompanyData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getcompanyData: $e\n$s");
      }
    }

    if (insiderTransactionResponse == null) {
      try {
        await insiderTrades(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in insiderTrades: $e\n$s");
      }
    }

    if (shortVolumeModel == null) {
      try {
        await getShortVolumeData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getShortVolumeData: $e\n$s");
      }
    }

    if (securityOwnership == null) {
      try {
        await getShortOwnership(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getShortOwnership: $e\n$s");
      }
    }

    if (securityShortVolume == null) {
      try {
        await getSecurityShortVolumeData(
          SymbolDto(symbol: widget.chatRouting!.symbol),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getSecurityShortVolumeData: $e\n$s");
      }
    }

    if (esgScoreData == null) {
      try {
        await esgScore(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in esgScore: $e\n$s");
      }
    }

    if (earningdata == null) {
      try {
        await getEarningData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getEarningData: $e\n$s");
      }
    }

    if (companyDetailModel == null) {
      try {
        await getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getCompanyDetail: $e\n$s");
      }
    }

    if (!mounted) return;
    setState(() {});
  }

  firstIndexData() async {
    if (stockResponse == null) {
      try {
        await getOverview(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getOverview: $e\n$s");
      }
    }
    if (overviewCandleChartModel == null) {
      try {
        await getOverviewCandleChart(
          widget.chatRouting!.symbol,
          IntervalEnum.hour,
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getOverviewCandleChart: $e\n$s");
      }
    }
    if (priceTargetMatrics == null) {
      try {
        await priceTargetMatricsData(
          SymbolDto(symbol: widget.chatRouting!.symbol),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in priceTargetMatricsData: $e\n$s");
      }
    }

    if (matricData == null) {
      try {
        await getMatricsData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getMatricsData: $e\n$s");
      }
    }
    if (pricePerformanceData == null) {
      try {
        await pricePerformance(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in pricePerformance: $e\n$s");
      }
    }

    if (analyticsRespinseData == null) {
      try {
        await analyticsData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in analyticsData: $e\n$s");
      }
    }

    if (priceComparisonModel == null) {
      try {
        await priceComparison(
          PriceComparisonDto(
            daysBack: 365,
            symbol1: widget.chatRouting!.symbol,
            symbol2: "SPY",
          ),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in priceComparison: $e\n$s");
      }
    }

    if (fundamentalResponse == null) {
      try {
        await fundamental(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in fundamental: $e\n$s");
      }
    }

    if (sharesResponse == null) {
      try {
        await shares(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in shares: $e\n$s");
      }
    }

    if (weeklyData == null) {
      try {
        await getWeeklyData(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getWeeklyData: $e\n$s");
      }
    }

    if (monthlyData == null) {
      try {
        await getMonthlyData(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getMonthlyData: $e\n$s");
      }
    }
  }

  fourthTap() async {
    if (earningChartModel == null) {
      try {
        await earningChartData(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e) {
        print(e);
      }
    }
    if (companyDetailModel == null) {
      try {
        await getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e) {
        print(e);
      }
    }
    if (earningReportsModel == null) {
      try {
        await earningReportData(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e) {
        print(e);
      }
    }
  }

  thirdTap(int val) async {
    if (val == 0) {
      if (financeChartsDataModel == null) {
        try {
          await financialCharts(widget.chatRouting!.symbol);
          if (!mounted) return;
          setState(() {});
        } catch (e) {
          print(e);
        }
      }
    } else {
      if (financialResponse == null) {
        try {
          await financialData(widget.chatRouting!.symbol);
          if (!mounted) return;
          setState(() {});
        } catch (e) {
          print(e);
        }
      }
    }
  }

  fifthTap() async {
    if (analysisDataModel == null) {
      try {
        await getAnalysisData(widget.chatRouting!.symbol, IntervalEnum.daily);
        if (!mounted) return;
        setState(() {});
      } catch (e) {}
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);

    if (widget.chatRouting != null) {
      if (widget.chatRouting!.type.toLowerCase() == "crypto") {
        cryptoApis();
      } else {
        firstIndexData();
      }
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
            type: widget.chatRouting!.type,
          )
        : emptyStock();
  }

  getOverviewCandleChart(symbol, IntervalEnum interval) async {
    await chartService.fetchChartData(
      cryptoApi: widget.chatRouting!.type == "crypto" ? true : false,
      internalApi: widget.chatRouting!.type == "crypto" ? false : true,
      selectedSymbol: widget.chatRouting!.symbol,
      interval: interval.value,
      onSuccess: (data) async {
        overviewCandleChartModel = [];
        for (var item in data) {
          try {
            overviewCandleChartModel!.add(
              OverviewCandleChartModel(
                symbol: widget.chatRouting!.symbol,
                open: item['open'],
                high: item['high'],
                low: item['low'],
                close: item['close'],
                volume: item['volume'],
                timestamp: DateTime.tryParse(item['date']) ?? DateTime.now(),
              ),
            );
          } catch (e) {}
        }

        print("✅ Chart data loaded: ${data.length} items");
      },
      onError: (err) {
        print("❌ Error loading chart data: $err");
      },
    );
    // final now = DateTime.now().toUtc();

    // // Subtract 2 years for startDate
    // final startDate = DateTime.utc(
    //   now.year - 10,
    //   now.month,
    //   now.day,
    //   now.hour,
    //   now.minute,
    //   now.second,
    //   now.millisecond,
    // );
    // final endDateString = now.toIso8601String();
    // final startDateString = startDate.toIso8601String();
    // if (!mounted) return;
    // setState(() {
    //   chartLoader = true;
    // });
    // try {
    //   overviewCandleChartModel = await ref
    //       .read(overviewCandleChartProvider.notifier)
    //       .overviewCandleChart(
    //         symbol,
    //         interval.value,
    //         startDateString,
    //         endDateString,
    //         "1",
    //         "122",
    //       );
    //   if (!mounted) return;
    //   setState(() {
    //     chartLoader = false;
    //   });
    // } catch (e) {
    //   if (!mounted) return;
    //   setState(() {
    //     chartLoader = false;
    //   });
    // }
  }

  getWeeklyData(symbol) async {
    weeklyData = await ref
        .read(weeklyDataProvider.notifier)
        .getWeeklyData(symbol);
  }

  getMonthlyData(symbol) async {
    monthlyData = await ref
        .read(monthlyDataProvider.notifier)
        .getMonthlyData(symbol);
    if (!mounted) return;
    setState(() {});
  }

  //crypto apis start
  getWeeklyDataCrypto(symbol) async {
    weeklyDataCrypto = await ref
        .read(weeklyDataCryptoProvider.notifier)
        .getWeeklyDataCrypto(symbol + "USD", 'crypto');
  }

  infoCryptoData(symbol) async {
    infoCryptoResponse = await ref
        .read(infoCryptoProvider.notifier)
        .infoCryptoData(symbol);
  }

  getMonthlyDataCrypto(symbol) async {
    monthlyDataCrypto = await ref
        .read(monthlyDataCryptoProvider.notifier)
        .getMonthlyData(symbol + "USD", "crypto");
    if (!mounted) return;
    setState(() {});
  }

  getAboutCrypto(symbol) async {
    aboutCryptoModel = await ref
        .read(aboutCryptoProvider.notifier)
        .aboutCrypto(symbol);
    if (!mounted) return;
    setState(() {});
  }

  getOverviewCandleChartCrypto(symbol, IntervalEnum interval) async {
    await chartService.fetchChartData(
      cryptoApi: widget.chatRouting!.type == "crypto" ? true : false,
      internalApi: widget.chatRouting!.type == "crypto" ? false : true,
      selectedSymbol: widget.chatRouting!.symbol,
      interval: interval.value,
      onSuccess: (data) async {
        overviewCandleChartModelCrypto = [];
        for (var item in data) {
          try {
            overviewCandleChartModelCrypto!.add(
              OverviewCandleChartModel(
                symbol: widget.chatRouting!.symbol,
                open: item['OPEN'],
                high: item['HIGH'],
                low: item['LOW'],
                close: item['CLOSE'],
                volume: item['VOLUME'].toInt(),
                timestamp: DateTime.fromMillisecondsSinceEpoch(
                  item['TIMESTAMP'],
                ),
              ),
            );
          } catch (e) {}
        }

        print("✅ Chart data loaded: ${data.length} items");
      },
      onError: (err) {
        print("❌ Error loading chart data: $err");
      },
    );
    // final now = DateTime.now().toUtc();

    // // Subtract 2 years for startDate
    // final startDate = DateTime.utc(
    //   now.year - 2,
    //   now.month,
    //   now.day,
    //   now.hour,
    //   now.minute,
    //   now.second,
    //   now.millisecond,
    // );
    // final endDateString = now.toIso8601String();
    // final startDateString = startDate.toIso8601String();
    // if (!mounted) return;
    // setState(() {
    //   chartLoader = true;
    // });
    // try {
    //   overviewCandleChartModelCrypto = await ref
    //       .read(overviewCandleChartCryptoProvider.notifier)
    //       .overviewCandleChart(
    //         symbol + "-USD",
    //         interval.value,
    //         startDateString,
    //         endDateString,
    //         "1",
    //         "732",
    //       );
    //   if (!mounted) return;
    //   setState(() {
    //     chartLoader = false;
    //   });
    // } catch (e) {
    //   if (!mounted) return;
    //   setState(() {
    //     chartLoader = false;
    //   });
    // }
  }

  highlightTopRequest(HighlightRequest highlightRequest) async {
    try {
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .highlightsTop(highlightRequest);

      if (res != null) {
        highlightResponse = res;
      }
    } catch (e) {}
  }

  marketCapRequest(MarketCapRequest symbol) async {
    try {
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .marketCapChart(symbol);

      if (res != null) {
        marketCapResponse = res;
      }
    } catch (e) {}
  }

  cryptoMarkets(SymbolDto symbol) async {
    try {
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .cryptoMarkets(symbol);

      if (res != null) {
        cryptoMarketModel = res;
      }
    } catch (e) {
      print(e);
    }
  }

  priceRatio(PriceComparisonDto symbol) async {
    try {
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .priceRatio(symbol);

      if (res != null) {
        priceRatioModel = res;
      }
    } catch (e) {}
  }

  Future<void> cryptoApis() async {
    if (highlightResponse == null) {
      try {
        await highlightTopRequest(
          HighlightRequest(
            symbol: widget.chatRouting!.symbol,
            limit: 5,
            sort: "desc",
          ),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in highlightTopRequest: $e\n$s");
      }
    }

    if (infoCryptoResponse == null) {
      try {
        await infoCryptoData(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in infoCryptoData: $e\n$s");
      }
    }

    if (aboutCryptoModel == null) {
      try {
        await getAboutCrypto(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getAboutCrypto: $e\n$s");
      }
    }

    if (weeklyDataCrypto == null) {
      try {
        await getWeeklyDataCrypto(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getWeeklyDataCrypto: $e\n$s");
      }
    }

    if (monthlyDataCrypto == null) {
      try {
        await getMonthlyDataCrypto(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getMonthlyDataCrypto: $e\n$s");
      }
    }

    if (overviewCandleChartModelCrypto == null) {
      try {
        await getOverviewCandleChartCrypto(
          widget.chatRouting!.symbol,
          IntervalEnum.hour,
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getOverviewCandleChartCrypto: $e\n$s");
      }
    }

    if (priceComparisonModel == null) {
      try {
        await priceComparison(
          PriceComparisonDto(
            daysBack: 365,
            symbol1: widget.chatRouting!.symbol,
            symbol2: widget.chatRouting!.symbol,
          ),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in priceComparison: $e\n$s");
      }
    }

    if (marketCapResponse == null) {
      try {
        await marketCapRequest(
          MarketCapRequest(
            interval: "1 month",
            symbol: widget.chatRouting!.symbol,
          ),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in marketCapRequest: $e\n$s");
      }
    }

    if (cryptoMarketModel == null) {
      try {
        await cryptoMarkets(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in cryptoMarkets: $e\n$s");
      }
    }

    if (priceRatioModel == null) {
      try {
        await priceRatio(
          PriceComparisonDto(
            daysBack: 365,
            symbol1: widget.chatRouting!.symbol,
            symbol2: widget.chatRouting!.symbol,
          ),
        );
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in priceRatio: $e\n$s");
      }
    }
  }

  //crypto apis end

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/analytics.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 6),
                            MdSnsText(
                              "ANALYTICS",
                              color: AppColors.white,
                              fontWeight: TextFontWeightVariant.h4,
                              variant: TextVariant.h3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),

                  children: [
                    widget.chatRouting != null &&
                            widget.chatRouting!.type.toLowerCase() == "crypto"
                        ? _buildCryptoTab()
                        : _buildAnalyticsTab(),

                    Column(
                      children: [
                        MdSnsText(
                          "History Content Here",
                          color: AppColors.white,
                        ),
                      ],
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

  Widget _buildCryptoTab() {
    double? minX;
    double? maxX;
    List<FlSpot> buildPriceRatioSpots(Map<String, double> data) {
      var spots;
      if (data.isNotEmpty) {
        spots = data.entries.map((e) {
          return FlSpot(double.parse(e.key), e.value.toDouble());
        }).toList()..sort((a, b) => a.x.compareTo(b.x));
      }

      minX = spots != null ? spots.first.x : 0;
      maxX = spots != null ? spots.last.x : 10;

      return spots != null ? spots : [];
    }

    List<ChartData> buildCryptoChartSpots(
      List<OverviewCandleChartModel> overviewCandle,
    ) {
      List<ChartData> chartDataList = [];

      chartDataList = overviewCandle.map((item) {
        return ChartData(
          x: item.timestamp.toString(),
          y: [
            (item.open).toDouble(),
            (item.high).toDouble(),
            (item.low).toDouble(),
            (item.close).toDouble(),
          ],
        );
      }).toList();

      return chartDataList;
    }

    final stockManagerState = ref.watch(stocksManagerProvider);

    final liveStock = stockManagerState[widget.chatRouting?.stockid ?? ''];
    double change =
        PriceUtils.getChangesPercentage(
              liveStock != null ? liveStock.price : widget.chatRouting!.price,
              widget.chatRouting!.previousClose,
            ) !=
            null
        ? PriceUtils.getChangesPercentage(
            liveStock != null ? liveStock.price : widget.chatRouting!.price,
            widget.chatRouting!.previousClose,
          )!
        : widget.chatRouting!.changePercentage;

    double _twoMonthIntervalMilliseconds() {
      const millisInDay = 86400000;
      const daysInTwoMonths = 60;
      return (millisInDay * daysInTwoMonths).toDouble();
    }

    List<FinancialDataPoint> buildMarketCapScope(List<MarketCapData> data) {
      List<FinancialDataPoint> chartDataList = [];

      chartDataList = data.map((item) {
        return FinancialDataPoint(x: item.date!, y: item.marketCap);
      }).toList();

      return chartDataList;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: selectedStock!.type.toLowerCase() == "crypto"
                            ? Image.network(
                                getItemImage(
                                  ImageType.crypto,
                                  selectedStock!.symbol,
                                ),
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return SvgPicture.network(
                                    "https://cdn-images.traderverse.io/crypto_dummy.svg",
                                    fit: BoxFit.cover,
                                  );
                                },
                              )
                            : SvgPicture.network(
                                getItemImage(
                                  ImageType.stock,
                                  selectedStock!.symbol,
                                ),
                                fit: BoxFit.cover,
                                placeholderBuilder: (context) => SizedBox(
                                  height: 26.h,
                                  width: 26.w,
                                  child: SvgPicture.network(
                                    "https://cdn-images.traderverse.io/stock_dummy.svg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                errorBuilder: (context, error, stackTrace) {
                                  return SvgPicture.network(
                                    "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg",
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MdSnsText(
                          "#${selectedStock!.symbol}",
                          variant: TextVariant.h3,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          child: MdSnsText(
                            selectedStock!.companyName.split("-").first.trim(),
                            color: AppColors.colorB2B2B7,
                            variant: TextVariant.h4,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: TextFontWeightVariant.h4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MdSnsText(
                      liveStock != null
                          ? Filters.systemNumberConvention(
                              liveStock.price,
                              isPrice: true,
                              isAbs: false,
                            )
                          : Filters.systemNumberConvention(
                              selectedStock!.price,
                              isPrice: true,
                              isAbs: false,
                            ),
                      color: change.toString().contains("-")
                          ? AppColors.redFF3B3B
                          : AppColors.white,

                      variant: TextVariant.h2,
                      fontWeight: TextFontWeightVariant.h1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          change.toString().contains("-")
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: change.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${change.toStringAsFixed(2)}%",
                          color: change.toString().contains("-")
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
            SizedBox(height: 20),
            highlightResponse != null &&
                    highlightResponse!.data != null &&
                    highlightResponse!.data!.isNotEmpty &&
                    infoCryptoResponse != null &&
                    infoCryptoResponse!.data != null
                ? SizedBox(
                    height: 135.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      // padding: EdgeInsets.symmetric(horizontal: 16.w),
                      itemCount: 8,
                      physics:
                          const BouncingScrollPhysics(), // Smooth scrolling
                      itemBuilder: (context, index) {
                        return index == 0
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "VOLUME",
                                secondHeading: "CIRCULATING SUPPLY",
                                previousPrice: compactFormatter.format(
                                  highlightResponse!.data![0].volume ?? 0,
                                ),
                                afterHoursPrice: compactFormatter.format(
                                  highlightResponse!
                                          .data![0]
                                          .circulatingSupply ??
                                      0,
                                ),

                                percentage: "+1.48%",
                              )
                            : index == 1
                            ? PriceCardWidget(
                                secondColor: AppColors.white,
                                firstColor: AppColors.white,
                                firstHeading: "TOTAL SUPPLY",
                                secondHeading: "MARKET CAP FDV RATIO",
                                previousPrice: compactFormatter.format(
                                  highlightResponse!.data![0].totalSupply ?? 0,
                                ),
                                afterHoursPrice: compactFormatter.format(
                                  highlightResponse!
                                          .data![0]
                                          .marketCapFdvRatio ??
                                      0,
                                ),
                                percentage: "+1.48%",
                              )
                            : index == 2
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,

                                firstHeading: "MAX SUPPLY",
                                secondHeading: "PREVIOUS CLOSE PRICE",
                                previousPrice:
                                    "${highlightResponse!.data![0].maxSupply ?? "N/A"}",
                                afterHoursPrice: highlightResponse!
                                    .data![0]
                                    .previousClosePrice!
                                    .toStringAsFixed(2),
                                percentage: "+1.48%",
                              )
                            : index == 3
                            ? PriceCardWidget(
                                firstColor: AppColors.color0098E4,
                                secondColor: AppColors.white,
                                firstHeading: "MARKET CAPITILIZATION",
                                secondHeading: "DILUTED MARKET CAP",
                                previousPrice: compactFormatter.format(
                                  highlightResponse!
                                          .data![0]
                                          .marketCapitalization ??
                                      0,
                                ),
                                afterHoursPrice:
                                    "${highlightResponse!.data![0].dilutedMarketCap ?? "N/A"}",
                                percentage: "+1.48%",
                              )
                            : index == 4
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "HIGH (24H)",
                                secondHeading: "LOW (24H)",
                                previousPrice:
                                    "${infoCryptoResponse!.data!.marketData!.high24h!.usd ?? "N/A"}",
                                afterHoursPrice:
                                    "${infoCryptoResponse!.data!.marketData!.low24h!.usd ?? "N/A"}",
                                percentage: "+1.48%",
                              )
                            : index == 5
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "HIGH",
                                secondHeading: "LOW",
                                previousPrice:
                                    "${infoCryptoResponse!.data!.marketData!.ath!.usd ?? "N/A"}",
                                afterHoursPrice:
                                    "${infoCryptoResponse!.data!.marketData!.atl!.usd ?? "N/A"}",
                                percentage: "+1.48%",
                              )
                            : index == 6
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "MAX HIGH (7D)",
                                secondHeading: "MIN LOW (7D)",
                                previousPrice:
                                    "${infoCryptoResponse!.data!.marketData!.maxHigh7d ?? "N/A"}",
                                afterHoursPrice:
                                    "${infoCryptoResponse!.data!.marketData!.minLow7d ?? "N/A"}",
                                percentage: "+1.48%",
                              )
                            : index == 7
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "OPEN (24H)",
                                secondHeading: "MAX SUPPLY",
                                previousPrice:
                                    "${infoCryptoResponse!.data!.marketData!.open24h ?? "N/A"}",
                                afterHoursPrice:
                                    "${infoCryptoResponse!.data!.marketData!.maxSupply ?? "N/A"}",
                                percentage: "+1.48%",
                              )
                            : SizedBox();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20.w);
                      },
                    ),
                  )
                : SizedBox(),

            SizedBox(height: 10),
            SizedBox(
              height: aboutCryptoModel != null && aboutCryptoModel!.data != null
                  ? 6.h
                  : 0,
            ),
            aboutCryptoModel != null && aboutCryptoModel!.data != null
                ? MdSnsText(
                    "Company Details",
                    color: AppColors.white,
                    variant: TextVariant.h3,
                    fontWeight: TextFontWeightVariant.h1,
                  )
                : SizedBox(),
            SizedBox(
              height: aboutCryptoModel != null && aboutCryptoModel!.data != null
                  ? 6.h
                  : 0,
            ),
            aboutCryptoModel != null && aboutCryptoModel!.data != null
                ? ReadMoreText(
                    aboutCryptoModel!.data!.description!.en ?? "",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '\nShow More',
                    trimExpandedText: '\nShow Less',
                    moreStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      height: 1.8,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondaryColor,
                    ),
                    lessStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      height: 1.8,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondaryColor,
                    ),
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  )
                : SizedBox(),

            SizedBox(height: 10),
            overviewCandleChartModelCrypto != null
                ? CustomCandleChart(
                    key: UniqueKey(),

                    name: "OHLC/V Candlestick Chart",
                    data: buildCryptoChartSpots(
                      overviewCandleChartModelCrypto!,
                    ),
                    onPressed: (val) {
                      getOverviewCandleChartCrypto(
                        widget.chatRouting!.symbol,
                        val == 'Hour'
                            ? IntervalEnum.hour
                            : val == 'Min'
                            ? IntervalEnum.min
                            : val == 'Min'
                            ? IntervalEnum.min
                            : IntervalEnum.min,
                      );
                    },
                  )
                : CustomCandleChartShimmer(),

            SizedBox(height: 20.h),
            marketCapResponse != null &&
                    marketCapResponse!.data != null &&
                    marketCapResponse!.data!.length > 0
                ? CustomLineChart(
                    lineColor: AppColors.color046297,
                    areaColor: AppColors.color046297.withOpacity(0.4),
                    title: "MarketCap Chart",
                    chartData: buildMarketCapScope(marketCapResponse!.data!),
                  )
                : SizedBox(),

            //  Container(
            //     width: double.infinity,
            //     padding: const EdgeInsets.all(16),
            //     decoration: BoxDecoration(
            //       border: Border.all(color: AppColors.colorB3B3B3),
            //       color: AppColors.color091224,
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         MdSnsText(
            //           "Market Chart",
            //           variant: TextVariant.h3,
            //           fontWeight: TextFontWeightVariant.h3,

            //           color: AppColors.fieldTextColor,
            //         ),
            //         Center(
            //           child: MdSnsText(
            //             "No Data Available",
            //             variant: TextVariant.h3,
            //             fontWeight: TextFontWeightVariant.h1,

            //             color: AppColors.white,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            SizedBox(height: 20.h),
            cryptoMarketModel != null && cryptoMarketModel!.data.isNotEmpty
                ? CryptoMarketChart(
                    title: "Crypto Markets",
                    data: cryptoMarketModel!.data,
                  )
                : AnalysisTableShimmer(),

            SizedBox(height: 20.h),
            priceComparisonModel != null &&
                    priceComparisonModel!
                            .data
                            .data['${widget.chatRouting!.symbol}'] !=
                        null
                ? PriceComparisonChart(
                    priceComparisonModel: priceComparisonModel,
                    symbol: widget.chatRouting!.symbol,
                    twoCharts: false,
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
            priceRatioModel != null &&
                    priceRatioModel!.data.data["price_ratio"] != null &&
                    priceRatioModel!.data.data["price_ratio"]!.isNotEmpty
                ? Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.colorB3B3B3),
                      color: AppColors.color091224,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MdSnsText(
                          "Price Ratio",
                          variant: TextVariant.h3,
                          fontWeight: TextFontWeightVariant.h4,

                          color: AppColors.fieldTextColor,
                        ),
                        SizedBox(height: 20.h),
                        SizedBox(
                          height: 180,
                          child: LineChart(
                            curve: Curves.easeInOut,
                            duration: Duration(milliseconds: 1200),
                            LineChartData(
                              minX: minX,
                              maxX: maxX,
                              minY: 0,

                              backgroundColor: AppColors.color091224,
                              gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) => FlLine(
                                  color: AppColors.color1B254B,
                                  strokeWidth: 1,
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

                                    interval: _twoMonthIntervalMilliseconds(),
                                    reservedSize: 30,
                                    getTitlesWidget: (value, meta) {
                                      final date =
                                          DateTime.fromMillisecondsSinceEpoch(
                                            value.toInt(),
                                          );
                                      final formatted = DateFormat(
                                        "MMM ''yy",
                                      ).format(date);
                                      return SideTitleWidget(
                                        meta: meta,
                                        space: 1,
                                        child: MdSnsText(
                                          formatted,
                                          color: AppColors.white,
                                          variant: TextVariant.h5,
                                        ),
                                      );
                                    },
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
                                  spots: buildPriceRatioSpots(
                                    priceRatioModel!.data.data["price_ratio"]!,
                                  ),
                                  isCurved: true,
                                  color: AppColors.color0098E4,
                                  barWidth: 2,

                                  dotData: FlDotData(show: false),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),

            //  Container(
            //     width: double.infinity,
            //     padding: const EdgeInsets.all(16),
            //     decoration: BoxDecoration(
            //       border: Border.all(color: AppColors.colorB3B3B3),
            //       color: AppColors.color091224,
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         MdSnsText(
            //           "Price Ratio",
            //           variant: TextVariant.h3,
            //           fontWeight: TextFontWeightVariant.h3,

            //           color: AppColors.fieldTextColor,
            //         ),
            //         Center(
            //           child: MdSnsText(
            //             "No Data Available",
            //             variant: TextVariant.h3,
            //             fontWeight: TextFontWeightVariant.h1,

            //             color: AppColors.white,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            SizedBox(height: monthlyDataCrypto != null ? 20.h : 0),

            monthlyDataCrypto != null
                ? WeeklySeasonalityChart(
                    data: monthlyDataCrypto!,
                    isWeekly: false,
                    weeklyModel: WeeklyModel(),
                  )
                : SizedBox(),
            SizedBox(height: weeklyDataCrypto != null ? 20.h : 0),
            weeklyDataCrypto != null
                ? WeeklySeasonalityChart(
                    weeklyModel: weeklyDataCrypto!,
                    isWeekly: true,
                    data: ProbabilityResponse(),
                  )
                : SizedBox(),
            SizedBox(height: highlightResponse != null ? 20.h : 0),
            // AnalyticsWidget(data: analyticsRespinseData!.data),
            infoCryptoResponse != null
                ? HighlightsCard(highlightResponse: infoCryptoResponse!)
                : SizedBox(),
          ],
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
            child: SizedBox(
              height: 55,
              child: TextFormField(
                controller: search,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.color091224,
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
                    child: Image.asset(
                      Assets.images.searchNormal.path,
                      scale: 5,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10.w),
            child: TabBar(
              controller: tabController,
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
              unselectedLabelColor: AppColors.colorB2B2B7,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.symmetric(horizontal: 4.w),
              onTap: (val) {
                if (val == 1) {
                  secondIndexTap();
                } else if (val == 3) {
                  fourthTap();
                } else if (val == 0) {
                  firstIndexData();
                } else if (val == 4) {
                  fifthTap();
                } else if (val == 2) {
                  thirdTap(0);
                }
              },
              tabs: List.generate(
                categories.length,
                (index) => Tab(
                  child: AnimatedBuilder(
                    animation: tabController,
                    builder: (context, _) {
                      bool isSelected = tabController.index == index;

                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: isSelected
                                ? Colors
                                      .transparent // 👈 no border when selected
                                : AppColors.colorB2B2B7.withOpacity(0.4),
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
                            if (categoryImages[index] != null)
                              SizedBox(width: 8.w),
                            Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),

          /// 🔹 Nested TabBarView
          Expanded(
            child: TabBarView(
              controller: tabController,

              physics: NeverScrollableScrollPhysics(),

              children: [
                /// Overview Tab Content
                _overviewContent(),
                _companyContent(),
                _financialContent(),
                _earningsContent(),
                _analysisContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _overviewContent() {
    final stockManagerState = ref.watch(stocksManagerProvider);

    final liveStock = stockManagerState[widget.chatRouting?.stockid ?? ''];
    double change =
        PriceUtils.getChangesPercentage(
              liveStock != null ? liveStock.price : widget.chatRouting!.price,
              widget.chatRouting!.previousClose,
            ) !=
            null
        ? PriceUtils.getChangesPercentage(
            liveStock != null ? liveStock.price : widget.chatRouting!.price,
            widget.chatRouting!.previousClose,
          )!
        : widget.chatRouting!.changePercentage;
    List<ChartData> buildChartSpots(
      List<OverviewCandleChartModel> overviewCandle,
    ) {
      List<ChartData> chartDataList = [];

      chartDataList = overviewCandle.map((item) {
        return ChartData(
          x: item.timestamp.toString(),
          y: [
            (item.open).toDouble(),
            (item.high).toDouble(),
            (item.low).toDouble(),
            (item.close).toDouble(),
          ],
        );
      }).toList();

      return chartDataList;
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
                    child: selectedStock!.type.toLowerCase() == "crypto"
                        ? Image.network(
                            getItemImage(
                              ImageType.crypto,
                              selectedStock!.symbol,
                            ),
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return SvgPicture.network(
                                "https://cdn-images.traderverse.io/crypto_dummy.svg",
                                fit: BoxFit.cover,
                              );
                            },
                          )
                        : SvgPicture.network(
                            getItemImage(
                              ImageType.stock,

                              selectedStock!.symbol,
                            ),
                            fit: BoxFit.cover,
                            placeholderBuilder: (context) => SizedBox(
                              height: 26.h,
                              width: 26.w,
                              child: SvgPicture.network(
                                "https://cdn-images.traderverse.io/stock_dummy.svg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            errorBuilder: (context, error, stackTrace) {
                              return SvgPicture.network(
                                "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg",
                                fit: BoxFit.cover,
                              );
                            },
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
                          variant: TextVariant.h3,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 5, // dot size
                          height: 5,
                          decoration: BoxDecoration(
                            color: AppColors.colorB2B2B7,
                            shape: BoxShape.circle,
                          ),
                        ),

                        SizedBox(width: 6),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          child: MdSnsText(
                            selectedStock!.companyName.split("-").first.trim(),
                            color: AppColors.colorB2B2B7,
                            variant: TextVariant.h4,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: TextFontWeightVariant.h4,
                          ),
                        ),
                        // Icon(
                        //   Icons.keyboard_arrow_down,
                        //   color: AppColors.white,
                        //   size: 20.sp,
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        MdSnsText(
                          liveStock != null
                              ? Filters.systemNumberConvention(
                                  liveStock.price,
                                  isPrice: true,
                                  isAbs: false,
                                )
                              : Filters.systemNumberConvention(
                                  selectedStock!.price,
                                  isPrice: true,
                                  isAbs: false,
                                ),
                          color: change.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.white,
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          change.toString().contains("-")
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: change.toString().contains("-")
                              ? AppColors.redFF3B3B
                              : AppColors.color00FF55,
                          size: 20,
                        ),
                        MdSnsText(
                          " ${change.toStringAsFixed(2).replaceAll("-", "")}%",
                          color: change.toString().contains("-")
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

            ishowLoder == true
                ? SizedBox(
                    height: 135.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PriceCardShimmer();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20.w);
                      },
                    ),
                  )
                : stockResponse != null
                ? SizedBox(
                    height: 135.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
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
                                percentage: "+1.48%",
                              )
                            : index == 1
                            ? PriceCardWidget(
                                secondColor: AppColors.white,
                                firstColor: AppColors.color046297,
                                firstHeading: "MARKET CAPITAILIZATION",
                                secondHeading: "OUTSTANDING SHARES",
                                previousPrice: stockResponse!
                                    .data
                                    .MarketCapitalization
                                    .toString(),
                                afterHoursPrice: stockResponse!
                                    .data
                                    .SharesOutstanding
                                    .toString(),
                                percentage: "+1.48%",
                              )
                            : index == 2
                            ? PriceCardWidget(
                                firstColor: AppColors.white,
                                secondColor: AppColors.white,
                                firstHeading: "TOTAL VOLUME",
                                secondHeading: "AVERAGE VOLUME(3M)",
                                previousPrice: stockResponse!.data.TotalVolume
                                    .toString(),
                                afterHoursPrice: stockResponse!
                                    .data
                                    .AverageVolume
                                    .toString(),
                                percentage: "+1.48%",
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
                                percentage: "+1.48%",
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
                                percentage: "+1.48%",
                              );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 20.w);
                      },
                    ),
                  )
                : SizedBox(), // 🔸 when response is null
            // : PriceCardShimmer(),
            SizedBox(height: 20.h),
            overviewCandleChartModel != null
                ? CustomCandleChart(
                    key: UniqueKey(),

                    name: "OHLC/V Candlestick Chart",
                    data: buildChartSpots(overviewCandleChartModel!),
                    onPressed: (val) async {
                      await getOverviewCandleChart(
                        widget.chatRouting!.symbol,
                        val == 'Hour'
                            ? IntervalEnum.hour
                            : val == 'Min'
                            ? IntervalEnum.min
                            : val == 'Min'
                            ? IntervalEnum.min
                            : IntervalEnum.min,
                      );
                      if (!mounted) return;
                      setState(() {});
                    },
                  )
                : SizedBox(),

            // CustomCandleChartShimmer(),
            SizedBox(height: 20.h),

            isshowpriceTargetMatricsDataLoder == true
                ? SizedBox(height: 135.h, child: MetricsShimmer())
                : priceTargetMatrics != null &&
                      priceTargetMatrics!.data.length > 0
                ? PriceTargetWidget(data: priceTargetMatrics!.data)
                : SizedBox(),

            SizedBox(height: 20.h),

            isshowshareStructureLoder == true
                ? MetricsShimmer()
                : sharesResponse != null &&
                      sharesResponse!.data.PercentInsiders != null
                ? ShareStructureCard(
                    matrics: null,
                    fundamentalData: null,
                    shareData: sharesResponse!.data,
                    heading: Headings.shareStructure,
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
            pricePerformanceData != null
                ? PricePerformanceWidget(data: pricePerformanceData!)
                : SizedBox(),
            SizedBox(height: 20.h),
            fundamentalResponse != null &&
                    fundamentalResponse!
                        .data
                        .fundamentals
                        .annualIncome
                        .isNotEmpty
                ? ShareStructureCard(
                    matrics: null,
                    fundamentalData: fundamentalResponse!.data,
                    shareData: null,
                    heading: Headings.fundamental,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),

            matricData != null &&
                    matricData!.data != null &&
                    matricData!.data!.isNotEmpty
                ? ShareStructureCard(
                    matrics: matricData!.data,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.matrics,
                  )
                : MetricsShimmer(),

            // SizedBox(height: 20.h),
            // CustomLineChart(
            //   title: "Price Target",
            //   lineColor: Colors.green,
            //   areaColor: Colors.greenAccent,
            // ),
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

            // SizedBox(height: 20.h),
            // RevenueAnalysisChart(),
            // SizedBox(height: 20.h),
            // // // ---------- PERFORMANCE OVERVIEW ----------
            // Container(
            //   padding: const EdgeInsets.all(16),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: AppColors.colorB3B3B3),
            //     color: AppColors.primaryColor,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           MdSnsText(
            //             "Performance Overview",
            //             color: AppColors.white,
            //             variant: TextVariant.h3,
            //             fontWeight: TextFontWeightVariant.h4,
            //           ),
            //           Row(
            //             children: [
            //               Image.asset(
            //                 Assets.images.textalignJustifycenter.path,
            //                 height: 14.h,
            //                 width: 16.55.w,
            //               ),
            //               SizedBox(width: 10.w),
            //               Image.asset(
            //                 Assets.images.chart.path,
            //                 height: 14.h,
            //                 width: 14.w,
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 12.h),
            //       PerformanceTable(),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20.h),

            // SizedBox(height: 20.h),
            priceComparisonModel != null &&
                    priceComparisonModel!
                            .data
                            .data['${widget.chatRouting!.symbol}'] !=
                        null &&
                    priceComparisonModel!.data.data['SPY'] != null
                ? PriceComparisonChart(
                    priceComparisonModel: priceComparisonModel,
                    symbol: widget.chatRouting!.symbol,
                    twoCharts: true,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),

            analyticsRespinseData != null &&
                    analyticsRespinseData!.data.isNotEmpty
                ? AnalyticsWidget(data: analyticsRespinseData!.data)
                : SizedBox(),
            SizedBox(height: 20.h),
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
                  variant: TextVariant.h3,
                  fontWeight: TextFontWeightVariant.h1,
                ),
                SizedBox(height: 4.h),

                companyModel != null &&
                        companyModel!.general.Description != null
                    ? ReadMoreText(
                        companyModel!.general.Description!,

                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '\nShow More',
                        trimExpandedText: '\nShow Less',

                        moreStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          // wordSpacing: 0,
                          // letterSpacing: 0,
                          height: 1.8,
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondaryColor,
                        ),
                        lessStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          // wordSpacing: 0,
                          // letterSpacing: 0,
                          height: 1.8,
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondaryColor,
                        ),
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        ),
                      )
                    : SizedBox(),

                // SizedBox(height: 14.h),
                // companyModel != null &&
                //         companyModel!.general.Description != null
                //     ? ReadMoreText(
                //         companyModel!.general.Description!,
                //         trimLines: 2,
                //         trimMode: TrimMode.Line,
                //         trimCollapsedText: 'Read More',
                //         trimExpandedText: 'Read Less',
                //         style: TextStyle(
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.w400,
                //           color: AppColors.white,
                //         ),
                //       )
                //     : SizedBox(),
                SizedBox(height: 14.h),
                companyModel != null && companyModel!.general.Address != null
                    ? InfoBoxGrid(
                        items: [
                          companyModel!.general.Address ?? "",
                          companyModel!.general.Country ?? "",
                          companyModel!.general.FullTimeEmployees.toString(),
                          "${companyModel!.general.WebURL ?? 0}",
                        ],
                      )
                    : SizedBox(),

                SizedBox(height: 10.h),
                companyModel != null &&
                        companyModel!.general.Officers != null &&
                        companyModel!.general.Officers!.isNotEmpty
                    ? MdSnsText(
                        "Key Executives",
                        color: AppColors.fieldTextColor,
                        variant: TextVariant.h2,
                        fontWeight: TextFontWeightVariant.h1,
                      )
                    : SizedBox(),
                SizedBox(height: 10.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    companyModel != null &&
                            companyModel!.general.Officers != null &&
                            companyModel!.general.Officers!.isNotEmpty
                        ? SizedBox(
                            height: 180.h,
                            width: MediaQuery.sizeOf(context).width / 1.1,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: companyModel!.general.Officers!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ProfileCardWidget(
                                  imagePath:
                                      companyModel!
                                          .general
                                          .Officers![index]
                                          .Image ??
                                      "",

                                  designation:
                                      companyModel!
                                          .general
                                          .Officers![index]
                                          .Title ??
                                      "",
                                  name:
                                      companyModel!
                                          .general
                                          .Officers![index]
                                          .Name ??
                                      "",
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                    return SizedBox(width: 10);
                                  },
                            ),
                          )
                        : ProfileCardShimmer(),
                  ],
                ),

                // SizedBox(height: 14.h),
                companyModel != null
                    ? CompanyDetailsCard(
                        items: [
                          Filters.systemNumberConvention(
                            companyModel!.general.SharesOutstanding ?? 0,
                            isPrice: false,
                            isAbs: false,
                          ),

                          Filters.systemNumberConvention(
                            companyModel!.general.PercentInstitutions ?? 0,
                            isPrice: false,
                            alwaysShowTwoDecimal: true,
                          ),

                          Filters.systemNumberConvention(
                            companyModel!.general.EBITDA,
                            isPrice: false,
                            isAbs: false,
                          ),
                          companyModel!.general.Exchange ?? "",
                          companyModel!.general.Symbol ?? "",
                          companyModel!.general.Sector ?? "",
                          companyModel!.general.Industry ?? "",
                          companyModel!.general.FiscalYearEnd ?? "",
                          Filters.systemNumberConvention(
                            companyModel!.general.MarketCapitalization ?? 0,
                            isPrice: false,
                            isAbs: false,
                          ),
                        ],
                      )
                    : EarningsShimmer(),
                SizedBox(height: 14.h),
                earningdata != null
                    ? Earnings(
                        items: [
                          earningdata!.reportedEps != null
                              ? "\$" +
                                    earningdata!.reportedEps!.reportedEps
                                        .toString()
                              : "N/A",

                          earningdata!.reportedEps != null &&
                                  earningdata!
                                          .reportedEps!
                                          .lastEarningsAnnouncement !=
                                      null
                              ? earningdata!
                                    .reportedEps!
                                    .lastEarningsAnnouncement
                                    .toString()
                              : "N/A",

                          earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      earningdata!
                                              .reportedEps!
                                              .consensusEpsForecast ??
                                          0,
                                    )
                              : "0",
                          earningdata!.reportedEps != null
                              ? earningdata!.reportedEps!.epsSurprise.toString()
                              : "N/A",

                          earningdata!.reportedEps != null
                              ? "\$" +
                                    compactFormatter.format(
                                      earningdata!
                                              .reportedRevenue!
                                              .totalRevenue ??
                                          0,
                                    )
                              : "0",
                        ],
                      )
                    : EarningsShimmer(),
                SizedBox(height: 14.h),
                shortVolumeModel != null &&
                        shortVolumeModel!.data!.Charts.length > 0
                    ? ShortVolumeChart(data: shortVolumeModel!.data!.Charts)
                    : SizedBox(),
                SizedBox(height: 14.h),
                companyDetailModel != null &&
                        companyDetailModel!
                                .data
                                .fundamentalsOutstandingShares !=
                            null &&
                        companyDetailModel!
                            .data
                            .fundamentalsOutstandingShares!
                            .isNotEmpty
                    ? OutstandingSharesChart(
                        fundamentalsOutstandingShares: companyDetailModel!
                            .data
                            .fundamentalsOutstandingShares,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
                esgScoreData != null && esgScoreData!.data != null
                    ? EsgScoreTable(data: esgScoreData!.data)
                    : SizedBox(),
                SizedBox(height: 14.h),
                companyDetailModel != null &&
                        companyDetailModel!.data.fundamentalsSplitsDividends !=
                            null
                    ? SplitDividend(
                        fundamentalsSplitsDividends: companyDetailModel!
                            .data
                            .fundamentalsSplitsDividends,
                      )
                    : SizedBox(),
                SizedBox(height: 14.h),
                securityShortVolume != null && securityShortVolume!.data != null
                    ? SecurityShortVolume(data: securityShortVolume!.data)
                    : SizedBox(),
                SizedBox(height: 14.h),
                insiderTransactionResponse != null &&
                        insiderTransactionResponse!.data.isNotEmpty
                    ? InsiderTraderTable(data: insiderTransactionResponse!)
                    : SizedBox(),
                SizedBox(height: 14.h),
                securityOwnership != null &&
                        securityOwnership!.data != null &&
                        securityOwnership!.data!.isNotEmpty
                    ? SecurityOwnershipTable(data: securityOwnership!.data!)
                    : SizedBox(),
                SizedBox(height: 14.h),
              ],
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MdSnsText(
                "Financial",
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,

                color: AppColors.fieldTextColor,
              ),
              SizedBox(width: 5),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/info-circle.png",
                  height: 14,
                  width: 14,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),

          MdSnsText(
            "Last Updated: 01-19-2023 10:30:33 EST",
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,

            color: AppColors.white,
          ),
          SizedBox(height: 15),

          // SizedBox(height: 20),
          DefaultTabController(
            length: 4,
            child: Builder(
              builder: (context) {
                final TabController financeialTabController =
                    DefaultTabController.of(context);

                return Expanded(
                  child: Column(
                    children: [
                      AnimatedBuilder(
                        animation: financeialTabController.animation!,
                        builder: (context, _) {
                          return TabBar(
                            controller: financeialTabController,
                            isScrollable: true,
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabAlignment: TabAlignment.start,
                            indicatorAnimation: TabIndicatorAnimation.elastic,
                            onTap: (val) {
                              thirdTap(val);
                            },

                            indicatorPadding: const EdgeInsets.all(4),
                            labelPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            dividerColor: Colors.transparent,

                            indicator: BoxDecoration(
                              color: AppColors.color203063,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: AppColors.color0x1AB3B3B3,
                                width: 1,
                              ),
                            ),

                            tabs: List.generate(4, (index) {
                              final List<String> tabTitles = financialtabs;

                              final bool isSelected =
                                  financeialTabController.index == index ||
                                  (financeialTabController.indexIsChanging &&
                                      financeialTabController.previousIndex ==
                                          index);

                              return Tab(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: AppColors.color0x1AB3B3B3,
                                      width: 1,
                                    ),
                                  ),
                                  child: MdSnsText(
                                    tabTitles[index],
                                    color: isSelected
                                        ? AppColors.white
                                        : AppColors.color677FA4,
                                    variant: isSelected
                                        ? TextVariant.h2
                                        : TextVariant.h3,
                                    fontWeight: isSelected
                                        ? TextFontWeightVariant.h1
                                        : TextFontWeightVariant.h4,
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),

                      // ✅ TabBarView below
                      Expanded(
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: financeialTabController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 15),
                                  financeChartsDataModel != null &&
                                          financeChartsDataModel!
                                                  .data
                                                  .cashAndDebt
                                                  .yearly !=
                                              null &&
                                          financeChartsDataModel!
                                              .data
                                              .cashAndDebt
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                      ? CashdebtWidgets(
                                          title: "Cash and Debt",
                                          cash: "Cash",
                                          debt: "Debt",
                                          rawCash:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashAndDebt
                                                  .yearly!
                                                  .metrics['Cash'] ??
                                              [],
                                          rawDebt:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashAndDebt
                                                  .yearly!
                                                  .metrics['Debt'] ??
                                              [],
                                        )
                                      : SizedBox(),
                                  // CashDebtShimmer(),
                                  const SizedBox(height: 20),

                                  financeChartsDataModel != null &&
                                          financeChartsDataModel!
                                                  .data
                                                  .assetsAndStockHolders
                                                  .yearly !=
                                              null &&
                                          financeChartsDataModel!
                                              .data
                                              .assetsAndStockHolders
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                      ? CashdebtWidgets(
                                          title: "Assets and Stockholders",
                                          cash: "Total Assets",
                                          debt: "Total StackHolder",
                                          rawCash:
                                              financeChartsDataModel!
                                                  .data
                                                  .assetsAndStockHolders
                                                  .yearly!
                                                  .metrics["Total Assets"] ??
                                              [],
                                          rawDebt:
                                              financeChartsDataModel!
                                                  .data
                                                  .assetsAndStockHolders
                                                  .yearly!
                                                  .metrics["Total StockHolder"] ??
                                              [],
                                        )
                                      : SizedBox(),
                                  // CashDebtShimmer(),
                                  SizedBox(height: 20),

                                  financeChartsDataModel != null &&
                                          financeChartsDataModel!
                                                  .data
                                                  .outstandingSharesBuyback
                                                  .yearly !=
                                              null &&
                                          financeChartsDataModel!
                                              .data
                                              .outstandingSharesBuyback
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                      ? CashdebtWidgets(
                                          title: "Outstanding Shares & Buyback",
                                          cash: "Outstanding Shares",
                                          debt: "Stock Buyback Percentage",
                                          rawCash:
                                              financeChartsDataModel!
                                                  .data
                                                  .outstandingSharesBuyback
                                                  .yearly!
                                                  .metrics["Outstanding Shares"] ??
                                              [],
                                          rawDebt:
                                              financeChartsDataModel!
                                                  .data
                                                  .outstandingSharesBuyback
                                                  .yearly!
                                                  .metrics["Stock Buyback Percentage"] ??
                                              [],
                                        )
                                      : SizedBox(),
                                  // CashDebtShimmer(),
                                  const SizedBox(height: 20),

                                  financeChartsDataModel != null &&
                                          financeChartsDataModel!
                                                  .data
                                                  .revenueAndIncome
                                                  .yearly !=
                                              null &&
                                          financeChartsDataModel!
                                              .data
                                              .revenueAndIncome
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                      ? CashdebtWidgets(
                                          title: "Revenue and Income",
                                          cash: "Revenue",
                                          debt: "Income",
                                          rawCash:
                                              financeChartsDataModel!
                                                  .data
                                                  .revenueAndIncome
                                                  .yearly!
                                                  .metrics["Revenue"] ??
                                              [],
                                          rawDebt:
                                              financeChartsDataModel!
                                                  .data
                                                  .revenueAndIncome
                                                  .yearly!
                                                  .metrics["Income"] ??
                                              [],
                                        )
                                      : SizedBox(),
                                  //  CashDebtShimmer(),
                                  const SizedBox(height: 20),

                                  financeChartsDataModel != null &&
                                          financeChartsDataModel!
                                                  .data
                                                  .cashFlowData
                                                  .yearly !=
                                              null &&
                                          financeChartsDataModel!
                                              .data
                                              .cashFlowData
                                              .yearly!
                                              .metrics
                                              .isNotEmpty
                                      ? OperatingCashFlow(
                                          title: "Cash Flow Data",
                                          rawCash:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashFlowData
                                                  .yearly!
                                                  .metrics["Operating Cash Flow"] ??
                                              [],
                                          rawDebt:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashFlowData
                                                  .yearly!
                                                  .metrics["Free Cash Flow"] ??
                                              [],
                                          rawAssets:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashFlowData
                                                  .yearly!
                                                  .metrics["Net Income"] ??
                                              [],
                                          rawEquity:
                                              financeChartsDataModel!
                                                  .data
                                                  .cashFlowData
                                                  .yearly!
                                                  .metrics["Cash Flow Dividends"] ??
                                              [],
                                        )
                                      : SizedBox(),
                                  // CashDebtShimmer(),
                                  const SizedBox(height: 0),
                                ],
                              ),
                            ),

                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  financialResponse != null &&
                                          financialResponse!
                                                  .data
                                                  .financialsIncomeStatement
                                                  .chart
                                                  .researchDevelopment !=
                                              null
                                      ? CustomLineChart(
                                          lineColor: Colors.green,
                                          areaColor: Colors.greenAccent,
                                          title:
                                              "Income Statement for ${selectedStock!.symbol}",
                                          chartData: financialResponse!
                                              .data
                                              .financialsIncomeStatement
                                              .chart
                                              .researchDevelopment!,
                                        )
                                      : SizedBox(),
                                  const SizedBox(height: 20),
                                  financialResponse != null &&
                                          financialResponse!
                                              .data
                                              .financialsIncomeStatement
                                              .data
                                              .isNotEmpty
                                      ? FinancialTable(
                                          chart: financialResponse!
                                              .data
                                              .financialsIncomeStatement
                                              .chart,
                                          data: financialResponse!
                                              .data
                                              .financialsIncomeStatement
                                              .data,
                                          itemName: FinancialTableEnum
                                              .incomeStatement,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),

                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  financialResponse != null &&
                                          financialResponse!
                                                  .data
                                                  .financialsBalanceSheet
                                                  .chart
                                                  .totalAssets !=
                                              null
                                      ? CustomLineChart(
                                          lineColor: Colors.purpleAccent,
                                          areaColor: Colors.purple,
                                          title:
                                              "Balance Sheet for ${selectedStock!.symbol}",
                                          chartData: financialResponse!
                                              .data
                                              .financialsBalanceSheet
                                              .chart
                                              .totalAssets!,
                                        )
                                      : SizedBox(),
                                  const SizedBox(height: 20),
                                  financialResponse != null &&
                                          financialResponse!
                                              .data
                                              .financialsBalanceSheet
                                              .data
                                              .isNotEmpty
                                      ? FinancialTable(
                                          chart: financialResponse!
                                              .data
                                              .financialsBalanceSheet
                                              .chart,
                                          data: financialResponse!
                                              .data
                                              .financialsBalanceSheet
                                              .data,
                                          itemName:
                                              FinancialTableEnum.balanceSheet,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),

                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  financialResponse != null &&
                                          financialResponse!
                                                  .data
                                                  .financialsCashFlow
                                                  .chart
                                                  .investments !=
                                              null
                                      ? CustomLineChart(
                                          lineColor: Colors.purpleAccent,
                                          areaColor: Colors.purple,
                                          title:
                                              "Cash Flow for ${selectedStock!.symbol}",
                                          chartData: financialResponse!
                                              .data
                                              .financialsCashFlow
                                              .chart
                                              .investments!,
                                        )
                                      : SizedBox(),
                                  const SizedBox(height: 20),
                                  financialResponse != null &&
                                          financialResponse!
                                              .data
                                              .financialsCashFlow
                                              .data
                                              .isNotEmpty
                                      ? FinancialTable(
                                          chart: financialResponse!
                                              .data
                                              .financialsCashFlow
                                              .chart,
                                          data: financialResponse!
                                              .data
                                              .financialsCashFlow
                                              .data,
                                          itemName: FinancialTableEnum.cashFlow,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _earningsContent() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              earningChartModel != null && earningChartModel!.data.isNotEmpty
                  ? QuarterlyPerformanceChart(data: earningChartModel!.data)
                  : SizedBox(),
              // SizedBox(height: 20),
              // QuarterlyPerformanceChartShimmer(),
              SizedBox(height: 20),
              earningReportsModel != null &&
                      earningReportsModel!.data.isNotEmpty
                  ? EarningsTable(data: earningReportsModel!.data)
                  : EarningsTableShimmer(),
              SizedBox(height: 20),
              companyDetailModel != null &&
                      companyDetailModel!.data.fundamentalsEarningsTrend != null
                  ? EarningsTrend(
                      title: "Earnings Trend",
                      data: companyDetailModel!.data.fundamentalsEarningsTrend,
                    )
                  : EarningsTrendShimmer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _analysisContent() {
    DateTime fromDate;
    DateTime toDate;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateRangePickerWidget(
            loading: chartLoader,
            onShowPressed: (from, to) async {
              fromDate = from!;
              toDate = to!;
              await getAnalysisData(
                widget.chatRouting!.symbol,
                IntervalEnum.daily,
                now1: toDate,
                startDate1: fromDate,
              );
            },
          ),

          SizedBox(height: 20),
          analysisDataModel != null &&
                  analysisDataModel!.data != null &&
                  analysisDataModel!.data!.chart != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CustomCandleChart(
                    key: UniqueKey(),
                    name: "",
                    data: analysisDataModel!.data!.chart!,
                    onPressed: (val) async {
                      await getAnalysisData(
                        widget.chatRouting!.symbol,
                        val == 'H'
                            ? IntervalEnum.daily
                            : val == 'D'
                            ? IntervalEnum.daily
                            : val == 'W'
                            ? IntervalEnum.daily
                            : IntervalEnum.monthly,
                      );
                    },
                  ),
                )
              : CustomCandleChartShimmer(),
          SizedBox(height: 20),
          analysisDataModel != null &&
                  analysisDataModel!.data != null &&
                  analysisDataModel!.data!.eodData != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: AnalysisTable(
                    title: "Earnings Trend",
                    eodData: analysisDataModel!.data!.eodData,
                  ),
                )
              : AnalysisTableShimmer(),
        ],
      ),
    );
  }
}
