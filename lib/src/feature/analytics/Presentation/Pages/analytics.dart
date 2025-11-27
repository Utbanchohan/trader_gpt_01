import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/crypto_market_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/analysis_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/company_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/earning_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/overview_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/about_crypto/about_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/info_crypto/info_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/monthly_data_crypto/monthly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data_crypto/weekly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/highlights_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/price_performance_model/price_performance_model.dart';
import 'package:trader_gpt/src/shared/widgets/AnalysisTableShimmer.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data/weekly_data.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/company_detail/company_detail_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/CustomCandleChartShimmer%20.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../core/extensions/price_calculation.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
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
import '../provider/overview_candle_chart/overview_candle_chart.dart';
import '../provider/overview_candle_chart_crypto/overview_candle_chart_crypto.dart';
import 'widgets/analytics_candle_stick_chart.dart';
import 'widgets/price_comparison_chart.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
  bool chartLoader = true;
  bool ishowLoder = true;
  bool isshowpriceTargetMatricsDataLoder = true;
  bool isshowshareStructureLoder = true;
  bool fundamentalResponseLoder = true;
  bool matricDataloader = true;
  bool monthlyDataloader = true;
  bool priceComparisonloader = true;
  bool analyticsRespinseloader = true;
  bool weeklyDataloader = true;
  bool companyLoader = true;
  bool earningLoader = true;

  bool financialLoader = true;
  bool financialResponseLoader = true;
  bool earningReportShimmer = true;
  bool companyDetailShimmer = true;
  bool pricePerformanceLoader = true;
  bool earningChartModelLoader = true;
  bool analysisDataModelLoader = true;
  bool insiderTraderLoader = true;
  bool eSGScoresloader = true;
  bool shortVolumeLoader = true;
  bool securityOwnershiploader = true;
  bool securityShortVolumeLoader = true;
  bool analysisDataLoader = true;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

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

  ///dummy list scroller
  late ScrollController _scrollController;
  final Map<String, GlobalKey> _keys = {};
  String _activeSection = 'overview';

  final List<Map<String, dynamic>> sections = [
    {
      'id': 'overview',
      'title': 'Overview',
      'color': Colors.red,
      "image": Assets.images.categoryc1.path,
    },
    {
      'id': 'company',
      'title': 'Company',
      'color': Colors.green,
      "image": Assets.images.c2.path,
    },
    {
      'id': 'financial',
      'title': 'Financial',
      'color': Colors.blue,
      "image": Assets.images.diagramc3.path,
    },
    {
      'id': 'earnings',
      'title': 'Earnings',
      'color': Colors.orange,
      "image": Assets.images.directboxNotifc4.path,
    },
    {
      'id': 'analytics',
      'title': 'Analytics',
      'color': Colors.orange,
      "image": Assets.images.categoryc1.path,
    },
  ];

  void _scrollToSection(String id, Map<String, dynamic> section) async {
    _activeSection = id;
    final key = _keys[id];
    final index = sections.indexOf(section);
    await WidgetsBinding.instance.endOfFrame;
    await itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
    );
    setState(() {
      if (id == "financial") {
        thirdTap(0);
      } else if (id == "company") {
        secondIndexTap();
      } else if (id == "earnings") {
        fourthTap();
      } else if (id == "analytics") {
        fifthTap();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  ///dummy list scrollr end
  String? selectedCandleOverview;
  String? selectedItemCandleAnalysis;
  String? selectedItemCandleCrypto;
  //chartData
  final chartService = ChartService();

  financialData(String symbol) async {
    try {
      setState(() {
        financialResponseLoader = true;
      });
      PriceRequestDto overview = PriceRequestDto(
        symbol: symbol,
        isYearly: true,
      );
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .financialData(overview);
      if (res != null) {
        financialResponse = res;
        setState(() {
          financialResponseLoader = false;
        });
      } else {
        setState(() {
          financialResponseLoader = false;
        });
      }
    } catch (e) {
      setState(() {
        financialResponseLoader = false;
      });
    }
  }

  financialCharts(String symbol) async {
    try {
      setState(() {
        financialLoader = true;
      });
      SymbolDto symbols = SymbolDto(symbol: symbol);
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .financialCharts(symbols);
      if (res != null) {
        financeChartsDataModel = res;
        setState(() {
          financialLoader = false;
        });
      } else {
        setState(() {
          financialLoader = false;
        });
      }
    } catch (e) {
      setState(() {
        financialLoader = false;
      });
      print(e);
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
      pricePerformanceLoader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .pricePerformance(symbol);
      if (res != null) {
        pricePerformanceData = res;
        pricePerformanceLoader = false;
      }
    } catch (e) {
      pricePerformanceLoader = false;
      print(e);
    }
  }

  getCompanyDetail(SymbolDto symbol) async {
    try {
      setState(() {
        companyDetailShimmer = true;
      });
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .companyDetail(symbol);
      if (res != null) {
        companyDetailModel = res;
        setState(() {
          companyDetailShimmer = false;
        });
      } else {
        setState(() {
          companyDetailShimmer = false;
        });
      }
    } catch (e) {
      setState(() {
        companyDetailShimmer = false;
      });
      print(e);
    }
  }

  getEarningData(SymbolDto symbol) async {
    try {
      earningLoader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .earningsData(symbol);
      earningLoader = false;
      if (res != null) {
        earningdata = res.data;
      }
    } catch (e) {
      setState(() {
        earningLoader = false;
      });
    }
  }

  esgScore(String symbol) async {
    try {
      eSGScoresloader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .esgScore(symbol);
      eSGScoresloader = false;
      if (res != null) {
        esgScoreData = res;
      }
    } catch (e) {
      setState(() {
        eSGScoresloader = false;
      });
    }
  }

  insiderTrades(SymbolDto symbol) async {
    try {
      insiderTraderLoader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .insiderTrades(symbol);
      insiderTraderLoader = false;
      if (res != null) {
        insiderTransactionResponse = res;
      }
    } catch (e) {
      setState(() {
        insiderTraderLoader = false;
        securityShortVolumeLoader;
      });
    }
  }

  getSecurityShortVolumeData(SymbolDto symbol) async {
    try {
      securityShortVolumeLoader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .securityShortVolume(symbol);
      securityShortVolumeLoader = false;
      if (res != null) {
        securityShortVolume = res;
      }
    } catch (e) {
      setState(() {
        companyLoader = false;
        securityShortVolumeLoader;
      });
    }
  }

  getShortOwnership(SymbolDto symbol) async {
    try {
      securityOwnershiploader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .shortOwnership(symbol);
      securityOwnershiploader = false;
      if (res != null) {
        securityOwnership = res;
      }
    } catch (e) {
      setState(() {
        securityOwnershiploader = false;
      });
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
    try {
      setState(() {
        companyLoader = true;
      });
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .companyData(symbol);
      if (res != null) {
        setState(() {
          companyModel = res.data;
          companyLoader = false;
        });
      }
    } catch (e) {
      setState(() {
        companyLoader = false;
      });
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
    try {
      matricDataloader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .matricsData(symbol);

      if (res != null) {
        matricData = res;

        matricDataloader = false;
      }
    } catch (e) {
      print(e);
      matricDataloader = false;
    }
  }

  fundamental(SymbolDto symbol) async {
    try {
      fundamentalResponseLoder = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .fundamentalData(symbol);
      if (res != null) {
        fundamentalResponse = res;
        fundamentalResponseLoder = false;
      }
    } catch (e) {
      print(e);
      fundamentalResponseLoder = false;
    }
  }

  shares(SymbolDto symbol) async {
    try {
      isshowshareStructureLoder = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .shareStats(symbol);
      if (res != null) {
        sharesResponse = res;
        isshowshareStructureLoder = false;
      }
    } catch (e) {
      print(e);
      isshowshareStructureLoder = false;
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
    try {
      priceComparisonloader = true;
      var res = await ref
          .read(analyticsProviderProvider.notifier)
          .priceComparison(priceComparisonDto);
      priceComparisonloader = false;
      if (res != null) {
        priceComparisonModel = res;
      }
    } catch (e) {
      print(e);
      priceComparisonloader = false;
    }
  }

  earningChartData(String symbol) async {
    try {
      setState(() {
        earningChartModelLoader = true;
      });
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
        setState(() {
          earningChartModelLoader = false;
        });
      } else {
        setState(() {
          earningChartModelLoader = false;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        earningChartModelLoader = false;
      });
    }
  }

  earningReportData(String symbol) async {
    try {
      setState(() {
        earningReportShimmer = true;
      });
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
        setState(() {
          earningReportShimmer = false;
        });
      } else {
        setState(() {
          earningReportShimmer = false;
        });
      }
    } catch (e) {
      setState(() {
        earningReportShimmer = false;
      });
      print(e);
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
      analysisDataLoader = true;
    });
    var res = await ref
        .read(analyticsProviderProvider.notifier)
        .analysisData(overview);
    if (res != null) {
      analysisDataModel = res;
      if (!mounted) return;
      setState(() {
        analysisDataLoader = false;
      });
    } else {
      if (!mounted) return;
      setState(() {
        analysisDataLoader = false;
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
        getcompanyData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getcompanyData: $e\n$s");
      }
    }

    if (insiderTransactionResponse == null) {
      try {
        insiderTrades(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in insiderTrades: $e\n$s");
      }
    }

    if (shortVolumeModel == null) {
      try {
        shortVolumeLoader = true;
        getShortVolumeData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        shortVolumeLoader = false;
        setState(() {});
      } catch (e, s) {
        shortVolumeLoader = false;
        debugPrint("Error in getShortVolumeData: $e\n$s");
      }
    }

    if (securityOwnership == null) {
      try {
        getShortOwnership(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getShortOwnership: $e\n$s");
      }
    }

    if (securityShortVolume == null) {
      try {
        getSecurityShortVolumeData(
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
        esgScore(widget.chatRouting!.symbol);
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in esgScore: $e\n$s");
      }
    }

    if (earningdata == null) {
      try {
        getEarningData(SymbolDto(symbol: widget.chatRouting!.symbol));
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        debugPrint("Error in getEarningData: $e\n$s");
      }
    }

    if (companyDetailModel == null) {
      try {
        getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
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
          IntervalEnum.daily,
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
        analyticsRespinseloader = true;
        await analyticsData(SymbolDto(symbol: widget.chatRouting!.symbol));
        analyticsRespinseloader = false;
        if (!mounted) return;
        setState(() {});
      } catch (e, s) {
        analyticsRespinseloader = false;
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
          financialCharts(widget.chatRouting!.symbol);
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

    ///dummy scroller
    _scrollController = ScrollController();
    for (var section in sections) {
      _keys[section['id']] = GlobalKey();
    }
    // _scrollController.addListener(_onScroll);

    itemPositionsListener.itemPositions.addListener(() {
      final positions = itemPositionsListener.itemPositions.value;

      // Find first visible section
      int? firstIndex = positions
          .where((pos) => pos.itemTrailingEdge > 0)
          .map((pos) => pos.index)
          .fold(null, (a, b) => a == null ? b : (a < b ? a : b));

      if (firstIndex != null) {
        final id = sections[firstIndex]['id'];
        if (id != _activeSection) {
          setState(() {
            _activeSection = id;
            if (id == "financial") {
              thirdTap(0);
            } else if (id == "company") {
              secondIndexTap();
            } else if (id == "earnings") {
              fourthTap();
            } else if (id == "analytics") {
              fifthTap();
            }
          });
        }
      }
    });

    ///dummy scroller end
    ///
    ///
    tabController = TabController(length: 5, vsync: this);

    if (widget.chatRouting != null) {
      if (widget.chatRouting!.type.toLowerCase() == "crypto") {
        cryptoApis();
      } else {
        firstIndexData();
        // secondIndexTap();
        // thirdTap(0);
        // fourthTap();
        // fifthTap();
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
    // try {
    //   setState(() {
    //     chartLoader = true;
    //   });
    //   await chartService.fetchChartData(
    //     cryptoApi: widget.chatRouting!.type == "crypto" ? true : false,
    //     internalApi: widget.chatRouting!.type == "crypto" ? false : true,
    //     selectedSymbol: widget.chatRouting!.symbol,
    //     interval: interval.value,
    //     onSuccess: (data) async {
    //       overviewCandleChartModel = [];
    //       for (var item in data) {
    //         try {
    //           overviewCandleChartModel!.add(
    //             OverviewCandleChartModel(
    //               symbol: widget.chatRouting!.symbol,
    //               open: item['open'],
    //               high: item['high'],
    //               low: item['low'],
    //               close: item['close'],
    //               volume: item['volume'],
    //               timestamp: DateTime.tryParse(item['date']) ?? DateTime.now(),
    //             ),
    //           );
    //         } catch (e) {
    //           setState(() {
    //             chartLoader = false;
    //           });
    //         }
    //       }
    //       setState(() {
    //         chartLoader = false;
    //       });
    //       print("✅ Chart data loaded: ${data.length} items");
    //     },
    //     onError: (err) {
    //       setState(() {
    //         chartLoader = false;
    //       });
    //       print("❌ Error loading chart data: $err");
    //     },
    //   );
    // } catch (e) {
    //   setState(() {
    //     chartLoader = false;
    //   });
    //   print("Error in getOverviewCandleChart: $e");
    // }
    final now = DateTime.now().toUtc();

    // Subtract 2 years for startDate
    var startDate;
    final endDateString = now.toIso8601String();
    var startDateString;
    if (!mounted) return;
    setState(() {
      chartLoader = true;
    });
    try {
      double intervalMs = 0;
      if (interval.value == "minute") {
        intervalMs = 60 * 1000;
      } else if (interval.value == "hour") {
        intervalMs = 60 * 60 * 1000;
        startDate = DateTime.utc(
          now.year,
          now.month - 2,
          now.day,
          now.hour,
          now.minute,
          now.second,
          now.millisecond,
        );
        startDateString = startDate.toIso8601String();
      } else if (interval.value == "daily") {
        startDate = DateTime.utc(
          now.year - 2,
          now.month,
          now.day,
          now.hour,
          now.minute,
          now.second,
          now.millisecond,
        );
        startDateString = startDate.toIso8601String();
        intervalMs = 24 * 60 * 60 * 1000;
      } else if (interval.value == "weekly") {
        startDate = DateTime.utc(
          now.year - 3,
          now.month,
          now.day,
          now.hour,
          now.minute,
          now.second,
          now.millisecond,
        );
        startDateString = startDate.toIso8601String();
        intervalMs = 7 * 24 * 60 * 60 * 1000;
      } else if (interval.value == "monthly") {
        startDate = DateTime.utc(
          now.year - 10,
          now.month,
          now.day,
          now.hour,
          now.minute,
          now.second,
          now.millisecond,
        );
        startDateString = startDate.toIso8601String();
        intervalMs = 30 * 24 * 60 * 60 * 1000;
      }

      double dummyIntervals =
          (now.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) /
          intervalMs;

      var dataPoint = intervalMs > 0 ? (dummyIntervals + 1).floor() : 1;
      var res = await ref
          .read(overviewCandleChartProvider.notifier)
          .overviewCandleChart(
            symbol + "_NASDAQ",
            interval.value,
            startDateString,
            endDateString,
            "1",
            dataPoint.toString(),
          );
      if (res.isSuccess) {
        overviewCandleChartModel = [];
        overviewCandleChartModel!.addAll(res.data);
      }
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    }
  }

  getWeeklyData(symbol) async {
    try {
      weeklyDataloader = true;
      weeklyData = await ref
          .read(weeklyDataProvider.notifier)
          .getWeeklyData(symbol);
      weeklyDataloader = false;
    } catch (e) {
      print(e);
      weeklyDataloader = false;
    }
  }

  getMonthlyData(symbol) async {
    try {
      monthlyDataloader = true;
      monthlyData = await ref
          .read(monthlyDataProvider.notifier)
          .getMonthlyData(symbol);

      if (!mounted) return;
      monthlyDataloader = false;
      setState(() {});
    } catch (e) {
      print(e);
      monthlyDataloader = false;
    }
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
    // await chartService.fetchChartData(
    //   cryptoApi: widget.chatRouting!.type == "crypto" ? true : false,
    //   internalApi: widget.chatRouting!.type == "crypto" ? false : true,
    //   selectedSymbol: widget.chatRouting!.symbol,
    //   interval: interval.value,
    //   onSuccess: (data) async {
    //     overviewCandleChartModelCrypto = [];
    //     for (var item in data) {
    //       try {
    //         overviewCandleChartModelCrypto!.add(
    //           OverviewCandleChartModel(
    //             symbol: widget.chatRouting!.symbol,
    //             open: item['OPEN'],
    //             high: item['HIGH'],
    //             low: item['LOW'],
    //             close: item['CLOSE'],
    //             volume: item['VOLUME'].toInt(),
    //             timestamp: DateTime.fromMillisecondsSinceEpoch(
    //               item['TIMESTAMP'],
    //             ),
    //           ),
    //         );
    //       } catch (e) {}
    //     }

    //     print("✅ Chart data loaded: ${data.length} items");
    //   },
    //   onError: (err) {
    //     print("❌ Error loading chart data: $err");
    //   },
    // );
    final now = DateTime.now().toUtc();

    // Subtract 2 years for startDate
    var startDate;
    final endDateString = now.toIso8601String();
    var startDateString;
    if (!mounted) return;
    setState(() {
      chartLoader = true;
    });
    double intervalMs = 0;
    if (interval.value == "minute") {
      intervalMs = 60 * 1000;
    } else if (interval.value == "hour") {
      intervalMs = 60 * 60 * 1000;
      startDate = DateTime.utc(
        now.year,
        now.month - 2,
        now.day,
        now.hour,
        now.minute,
        now.second,
        now.millisecond,
      );
      startDateString = startDate.toIso8601String();
    } else if (interval.value == "daily") {
      startDate = DateTime.utc(
        now.year - 2,
        now.month,
        now.day,
        now.hour,
        now.minute,
        now.second,
        now.millisecond,
      );
      startDateString = startDate.toIso8601String();
      intervalMs = 24 * 60 * 60 * 1000;
    } else if (interval.value == "weekly") {
      startDate = DateTime.utc(
        now.year - 3,
        now.month,
        now.day,
        now.hour,
        now.minute,
        now.second,
        now.millisecond,
      );
      startDateString = startDate.toIso8601String();
      intervalMs = 7 * 24 * 60 * 60 * 1000;
    } else if (interval.value == "monthly") {
      startDate = DateTime.utc(
        now.year - 10,
        now.month,
        now.day,
        now.hour,
        now.minute,
        now.second,
        now.millisecond,
      );
      startDateString = startDate.toIso8601String();
      intervalMs = 30 * 24 * 60 * 60 * 1000;
    }

    double dummyIntervals =
        (now.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) /
        intervalMs;

    var dataPoint = intervalMs > 0 ? (dummyIntervals + 1).floor() : 1;
    try {
      var res = await ref
          .read(overviewCandleChartCryptoProvider.notifier)
          .overviewCandleChart(
            symbol + "_CRYPTO",
            interval.value,
            startDateString,
            endDateString,
            "1",
            dataPoint.toString(),
          );
      if (res.isSuccess) {
        overviewCandleChartModelCrypto = [];
        overviewCandleChartModelCrypto!.addAll(res.data);
      }
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        chartLoader = false;
      });
    }
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
    final List<String?> categoryImages = [
      Assets.images.categoryc1.path,
      Assets.images.c2.path,
      Assets.images.diagramc3.path,
      Assets.images.directboxNotifc4.path,
      Assets.images.categoryc1.path,
    ];
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
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: SafeArea(
          top: true,
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         context.pushNamed(
              //           AppRoutes.swipeScreen.name,
              //           extra: {
              //             "chatRouting": widget.chatRouting,
              //             "initialIndex": 1,
              //           },
              //         );
              //       },
              //       child: Container(
              //         width: 40.w,
              //         height: 71.h,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage(Assets.images.shapeRightSide.path),
              //           ),
              //         ),
              //         padding: EdgeInsets.all(15),
              //         child: Image.asset(
              //           Assets.images.message.path,
              //           width: 25.w,
              //           height: 21.h,
              //         ),
              //       ),
              //     ),

              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 30),
              //         child: Center(
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Image.asset(
              //                 "assets/images/analytics.png",
              //                 width: 20,
              //                 height: 20,
              //               ),
              //               SizedBox(width: 6),
              //               MdSnsText(
              //                 "ANALYTICS",
              //                 color: AppColors.white,
              //                 fontWeight: TextFontWeightVariant.h4,
              //                 variant: TextVariant.h3,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
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
                    selectedItem: selectedItemCandleCrypto ?? "D",

                    name: "OHLC/V Candlestick Chart",
                    data: buildCryptoChartSpots(
                      overviewCandleChartModelCrypto!,
                    ),
                    onPressed: (val) {
                      getOverviewCandleChartCrypto(
                        widget.chatRouting!.symbol,
                        val == 'H'
                            ? IntervalEnum.hour
                            : val == 'D'
                            ? IntervalEnum.daily
                            : val == 'W'
                            ? IntervalEnum.weekly
                            : val == 'M'
                            ? IntervalEnum.monthly
                            : IntervalEnum.daily,
                      );
                      if (!mounted) return;
                      setState(() {
                        selectedItemCandleCrypto = val;
                      });
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ Horizontal Tabs (Row)
        Container(
          height: 60,
          // color: Colors.grey[200],
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: sections.map((section) {
                final bool isActive = _activeSection == section['id'];

                return GestureDetector(
                  onTap: () => _scrollToSection(section['id']!, section),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColors.bubbleColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: isActive
                            ? Colors.transparent
                            : AppColors.colorB2B2B7.withOpacity(0.4),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          section['image'] as String,
                          width: 14,
                          height: 14,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          section['title'] as String,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),

        // ✅ Scrollable Content
        Expanded(
          child: ScrollablePositionedList.builder(
            itemCount: sections.length,
            scrollOffsetController: scrollOffsetController,
            scrollOffsetListener: scrollOffsetListener,
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemBuilder: (context, index) {
              final id = sections[index]['id'];

              switch (id) {
                case "overview":
                  return OverviewContent(
                    chartLoader: chartLoader,
                    id: _keys[id],
                    chatRouting: widget.chatRouting!,
                    selectedStock: selectedStock!,
                    pricePerformanceLoader: pricePerformanceLoader,
                    ishowLoder: ishowLoder,
                    isshowpriceTargetMatricsDataLoder:
                        isshowpriceTargetMatricsDataLoder,
                    weeklyDataloader: weeklyDataloader,
                    isshowshareStructureLoder: isshowshareStructureLoder,
                    matricDataloader: matricDataloader,
                    monthlyDataloader: monthlyDataloader,
                    analyticsRespinseloader: analyticsRespinseloader,
                    priceComparisonloader: priceComparisonloader,
                    fundamentalResponseLoder: fundamentalResponseLoder,
                    selectedCandleOverview: '',
                    onPressedAnalysis: (String val) async {
                      await getOverviewCandleChart(
                        widget.chatRouting!.symbol,
                        val == 'H'
                            ? IntervalEnum.hour
                            : val == 'D'
                            ? IntervalEnum.daily
                            : val == 'W'
                            ? IntervalEnum.weekly
                            : val == 'M'
                            ? IntervalEnum.monthly
                            : IntervalEnum.daily,
                      );
                    },
                    fundamentalResponse: fundamentalResponse,
                    priceComparisonModel: priceComparisonModel,
                    analyticsRespinseData: analyticsRespinseData,
                    monthlyData: monthlyData,
                    weeklyData: weeklyData,
                    matricData: matricData,
                    stockResponse: stockResponse,
                    overviewCandleChartModel: overviewCandleChartModel,
                    pricePerformanceData: pricePerformanceData,
                    sharesResponse: sharesResponse,
                    priceTargetMatrics: priceTargetMatrics,
                  );

                case "company":
                  return CompanyContent(
                    id: _keys[id],
                    companyLoader: companyLoader,
                    earningLoader: earningLoader,
                    companyModel: companyModel,
                    outstandingSharesLoader: companyDetailShimmer,
                    earningdata: earningdata,
                    shortVolumeModel: shortVolumeModel,
                    companyDetailModel: companyDetailModel,
                    shortVolumeLoader: shortVolumeLoader,
                    esgScoreData: esgScoreData,
                    securityShortVolume: securityShortVolume,
                    insiderTransactionResponse: insiderTransactionResponse,
                    securityOwnership: securityOwnership,
                    insiderTraderLoader: insiderTraderLoader,
                    securityOwnershipLoader: securityOwnershiploader,
                    eSGScoresloader: eSGScoresloader,
                  );

                case "financial":
                  return FinancialTab(
                    id: _keys[id],
                    financialLoader: financialLoader,
                    financeChartsDataModel: financeChartsDataModel,
                    financialResponseLoader: financialResponseLoader,
                    financialResponse: financialResponse,
                    symbol: selectedStock!.symbol,
                    onPressed: (id) {
                      if (id == "0") {
                        thirdTap(0);
                      } else {
                        thirdTap(1);
                      }
                    },
                  );

                case "earnings":
                  return EarningContent(
                    companyDetailShimmer: companyDetailShimmer,
                    earningReportShimmer: earningReportShimmer,
                    earningChartModelLoader: earningChartModelLoader,
                    companyDetailModel: companyDetailModel,
                    earningChartModel: earningChartModel,
                    earningReportsModel: earningReportsModel,
                    id: _keys[id],
                  );

                case "analytics":
                  return AnalysisContent(
                    id: _keys[id],
                    chartLoader: analysisDataLoader,
                    analysisDataModel: analysisDataModel,
                    onPressed: (toDate, fromDate) async {
                      await getAnalysisData(
                        widget.chatRouting!.symbol,
                        IntervalEnum.daily,
                        now1: toDate,
                        startDate1: fromDate,
                      );
                    },
                    onPressedAnalysis: (val) async {
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
                    selectedItemCandleAnalysis:
                        selectedItemCandleAnalysis ?? "H",
                  );

                default:
                  return Container(height: 600, color: Colors.grey);
              }
            },
          ),
        ),
      ],
    );
  }
}
