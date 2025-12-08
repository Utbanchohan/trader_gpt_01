import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trader_gpt/src/core/extensions/price_calculation.dart';
import 'package:trader_gpt/src/core/extensions/symbol_image.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_candle_stick_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_widget.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/price_comparison_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/price_target_widget.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/analysis_dto/analysis_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/overview_dto/overview_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/price_comparison_dto/price_comparison_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analytics_model/analytics_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/monthly_model/monthly_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/overview_model/overview_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/weekly_model/weekly_model.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/pages/widget/shimmer_widget.dart';
import 'package:trader_gpt/src/shared/chart/share_structure_widget.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/providers/stocks_price.dart';
import 'package:trader_gpt/src/shared/widgets/CustomCandleChartShimmer%20.dart';
import 'package:trader_gpt/src/shared/widgets/pricePerformance_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/showinfopopap.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/utils/constant.dart';

import '../../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../../../shared/socket/model/stock_model.dart/stock_model.dart';
import '../../../../../../shared/widgets/price_card_widgets.dart';
import '../../../../../../shared/widgets/table_shimmer.dart';
import '../../../../../chat/domain/model/chat_stock_model.dart';
import '../../../../domain/model/fundamental_model/fundamental_model.dart';
import '../../../../domain/model/matrics_data_model/matrics_data_model.dart';
import '../../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../../domain/model/price_performance_model/price_performance_model.dart';
import '../../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../../../domain/model/share_stats/share_stats.dart';
import '../../../provider/monthly_data/monthly_data.dart';
import '../../../provider/overview_candle_chart/overview_candle_chart.dart';
import '../../../provider/weekly_data/weekly_data.dart';

class OverviewContent extends ConsumerStatefulWidget {
  final ChatRouting chatRouting;
  final Stock selectedStock;

  const OverviewContent({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
  });

  @override
  ConsumerState<OverviewContent> createState() => _OverviewContentState();
}

class _OverviewContentState extends ConsumerState<OverviewContent> {
  //raza: Wrong way to use provider/ Watch provider inside the build
  FundamentalResponse? fundamentalResponse;
  PriceComparisonModel? priceComparisonModel;
  AnalystRatingResponse? analyticsRespinseData;
  WeeklyModel? weeklyData;
  ProbabilityResponse? monthlyData;
  MatricsResponse? matricData;
  StockResponse? stockResponse;
  List<OverviewCandleChartModel>? overviewCandleChartModel;
  PricePerformance? pricePerformanceData;
  SharesResponse? sharesResponse;
  PriceTargetMatrics? priceTargetMatrics;
  String selectedCandleOverview = "D";
  bool ishowLoder = true;
  bool chartLoader = true;
  bool isshowpriceTargetMatricsDataLoder = true;
  bool pricePerformanceLoader = true;
  bool isshowshareStructureLoder = true;
  bool monthlyDataloader = true;
  bool analyticsRespinseloader = true;

  bool weeklyDataloader = true;
  bool priceComparisonloader = true;

  bool fundamentalResponseLoder = true;
  bool matricDataloader = true;

  getOverview(SymbolDto symbol) async {
    try {
      ishowLoder = true;
      var res = ref.watch(getOverviewProvider(symbol.symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              ishowLoder = false;

              stockResponse = StockResponse(data: value);
            }
          }
        case AsyncError(:final error):
          ishowLoder = false;
        case AsyncLoading():
          ishowLoder = true;
      }
    } catch (e) {
      print(e);
      ishowLoder = false;
    }
  }

  pricePerformance(SymbolDto symbol) async {
    try {
      pricePerformanceLoader = true;
      var res = ref.watch(pricePerformanceProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              pricePerformanceLoader = false;
              pricePerformanceData = value;
            }
          }
        case AsyncError(:final error):
          pricePerformanceLoader = false;
        case AsyncLoading():
          pricePerformanceLoader = true;
      }
    } catch (e) {
      pricePerformanceLoader = false;
      print(e);
    }
  }

  analyticsData(SymbolDto symbol) async {
    analyticsRespinseloader = true;
    var res = ref.watch(analyticsDataProvider(symbol));
    switch (res) {
      case AsyncData(:final value):
        {
          if (value != null) {
            analyticsRespinseloader = false;

            analyticsRespinseData = value;
          }
        }
      case AsyncError(:final error):
        analyticsRespinseloader = false;
      case AsyncLoading():
        analyticsRespinseloader = true;
    }
  }

  getMatricsData(SymbolDto symbol) async {
    try {
      matricDataloader = true;
      var res = ref.watch(matricsDataProvider(symbol.symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              matricDataloader = false;

              matricData = value;
            }
          }
        case AsyncError(:final error):
          matricDataloader = false;
        case AsyncLoading():
          matricDataloader = true;
      }
    } catch (e) {
      print(e);
      matricDataloader = false;
    }
  }

  fundamental(SymbolDto symbol) async {
    try {
      fundamentalResponseLoder = true;
      var res =  ref.watch(fundamentalDataProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              fundamentalResponseLoder = false;

              fundamentalResponse = value;
            }
          }
        case AsyncError(:final error):
          fundamentalResponseLoder = false;
        case AsyncLoading():
          fundamentalResponseLoder = true;
      }
    } catch (e) {
      print(e);
      fundamentalResponseLoder = false;
    }
  }

  shares(SymbolDto symbol) async {
    try {
      isshowshareStructureLoder = true;
      var res = ref.watch(shareStatsProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              sharesResponse = value;
              isshowshareStructureLoder = false;
            }
          }
        case AsyncError(:final error):
          isshowshareStructureLoder = false;
        case AsyncLoading():
          isshowshareStructureLoder = true;
      }
    } catch (e) {
      print(e);
      isshowshareStructureLoder = false;
    }
  }

  priceTargetMatricsData(SymbolDto symbol) async {
    isshowpriceTargetMatricsDataLoder = true;
    var res = ref.watch(priceTargetMatricsProvider(symbol));
    switch (res) {
      case AsyncData(:final value):
        {
          if (value != null) {
            isshowpriceTargetMatricsDataLoder = false;
            priceTargetMatrics = PriceTargetMatrics(
              data: value.whereType<PriceTargetData>().toList(),
            );
          }
        }
      case AsyncError(:final error):
        isshowpriceTargetMatricsDataLoder = false;
      case AsyncLoading():
        isshowpriceTargetMatricsDataLoder = true;
    }
  }

  priceComparison(PriceComparisonDto priceComparisonDto) async {
    try {
      priceComparisonloader = true;
      var res = ref.watch(priceComparisonProvider(priceComparisonDto));
      priceComparisonloader = false;

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              priceComparisonloader = false;
              priceComparisonModel = value;
            }
          }
        case AsyncError(:final error):
          priceComparisonloader = false;
        case AsyncLoading():
          priceComparisonloader = true;
      }
    } catch (e) {
      print(e);
      priceComparisonloader = false;
    }
  }

  getOverviewCandleChart(symbol, IntervalEnum interval) async {
    // try {
    //   setState(() {
    //     chartLoader = true;
    //   });
    //   await chartService.fetchChartData(
    //     cryptoApi: chatRouting!.type == "crypto" ? true : false,
    //     internalApi: chatRouting!.type == "crypto" ? false : true,
    //     selectedSymbol: chatRouting!.symbol,
    //     interval: interval.value,
    //     onSuccess: (data) async {
    //       overviewCandleChartModel = [];
    //       for (var item in data) {
    //         try {
    //           overviewCandleChartModel!.add(
    //             OverviewCandleChartModel(
    //               symbol: chatRouting!.symbol,
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

    chartLoader = true;

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
      var res = ref.watch(
        getOverviewCandleChartProvider(
          symbol + "_NASDAQ",
          interval.value,
          startDateString,
          endDateString,
          "1",
          dataPoint.toString(),
        ),
      );
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              chartLoader = false;
              overviewCandleChartModel = [];
              overviewCandleChartModel!.addAll(value.data);
            }
          }
        case AsyncError(:final error):
          chartLoader = false;
        case AsyncLoading():
          chartLoader = true;
      }
    } catch (e) {
      if (!mounted) return;

      chartLoader = false;
    }
  }

  getWeeklyData(symbol) async {
    try {
      weeklyDataloader = true;
      var res = ref.watch(getWeeklyDataProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              weeklyDataloader = false;
              weeklyData = value;
            }
          }
        case AsyncError(:final error):
          weeklyDataloader = false;
        case AsyncLoading():
          weeklyDataloader = true;
      }
    } catch (e) {
      print(e);
      weeklyDataloader = false;
    }
  }

  getMonthlyData(symbol) async {
    try {
      monthlyDataloader = true;
      var res = ref.watch(getMonthlyDataProvider(symbol));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              monthlyDataloader = false;
              monthlyData = value;
            }
          }
        case AsyncError(:final error):
          monthlyDataloader = false;
        case AsyncLoading():
          monthlyDataloader = true;
      }
    } catch (e) {
      print(e);
      monthlyDataloader = false;
    }
  }

  firstIndexData() async {
    if (stockResponse == null) {
      try {
        getOverview(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getOverview: $e\n$s");
      }
    }
    if (overviewCandleChartModel == null) {
      try {
        getOverviewCandleChart(widget.chatRouting!.symbol, IntervalEnum.daily);
      } catch (e, s) {
        debugPrint("Error in getOverviewCandleChart: $e\n$s");
      }
    }
    if (priceTargetMatrics == null) {
      try {
        priceTargetMatricsData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in priceTargetMatricsData: $e\n$s");
      }
    }

    if (matricData == null) {
      try {
        getMatricsData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in getMatricsData: $e\n$s");
      }
    }
    if (pricePerformanceData == null) {
      try {
        pricePerformance(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in pricePerformance: $e\n$s");
      }
    }

    if (analyticsRespinseData == null) {
      try {
        analyticsData(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        analyticsRespinseloader = false;
        debugPrint("Error in analyticsData: $e\n$s");
      }
    }

    if (priceComparisonModel == null) {
      try {
        priceComparison(
          PriceComparisonDto(
            daysBack: 365,
            symbol1: widget.chatRouting!.symbol,
            symbol2: "SPY",
          ),
        );
      } catch (e, s) {
        debugPrint("Error in priceComparison: $e\n$s");
      }
    }

    if (fundamentalResponse == null) {
      try {
        fundamental(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in fundamental: $e\n$s");
      }
    }

    if (sharesResponse == null) {
      try {
        shares(SymbolDto(symbol: widget.chatRouting!.symbol));
      } catch (e, s) {
        debugPrint("Error in shares: $e\n$s");
      }
    }

    if (weeklyData == null) {
      try {
        getWeeklyData(widget.chatRouting!.symbol);
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

  @override
  Widget build(BuildContext context) {
    // firstIndexData();
    var res = ref.watch(getOverviewProvider(widget.chatRouting!.symbol));
    switch (res) {
      case AsyncData(:final value):
        {
          if (value != null) {
            ishowLoder = false;

            stockResponse = StockResponse(data: value);
          }
        }
      case AsyncError(:final error):
        ishowLoder = false;
      case AsyncLoading():
        ishowLoder = true;
    }

    var res1 = ref.watch(
      priceTargetMatricsProvider(SymbolDto(symbol: widget.chatRouting.symbol)),
    );
    switch (res1) {
      case AsyncData(:final value):
        {
          if (value != null) {
            isshowpriceTargetMatricsDataLoder = false;
            priceTargetMatrics = PriceTargetMatrics(
              data: value.whereType<PriceTargetData>().toList(),
            );
          }
        }
      case AsyncError(:final error):
        isshowpriceTargetMatricsDataLoder = false;
      case AsyncLoading():
        isshowpriceTargetMatricsDataLoder = true;
    }
    List<String> questions = [
      "Provide a comprehensive company analysis of ${widget.chatRouting.companyName}",
      "Technical analysis for ${widget.chatRouting.companyName}",
      "Analyze analyst sentiment for ${widget.chatRouting.companyName}",
      "Perform DCF valuation analysis for  ${widget.chatRouting.companyName}",
      "Perform DCF valuation analysis for ${widget.chatRouting.companyName}",
      "Analyze analyst sentiment for ${widget.chatRouting.companyName}",
    ];

    final stockManagerState = ref.watch(stocksManagerProvider);

    final liveStock = stockManagerState[widget.chatRouting.stockid];
    double change = liveStock != null
        ? PriceUtils.getChangesPercentage(
                        liveStock.price,

                        liveStock.previousClose,
                      ) !=
                      null &&
                  liveStock.price != liveStock.previousClose
              ? PriceUtils.getChangesPercentage(
                  liveStock.price,
                  liveStock.previousClose,
                )!
              : widget.chatRouting!.changePercentage
        : widget.chatRouting.changePercentage;
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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),

      child: SafeArea(
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
                    child: widget.selectedStock.type.toLowerCase() == "crypto"
                        ? Image.network(
                            getItemImage(
                              ImageType.crypto,
                              widget.selectedStock.symbol,
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
                              widget.selectedStock.symbol,
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
                    GestureDetector(
                      child: Row(
                        children: [
                          ShowInfoPopup(
                            chatRouting: widget.chatRouting,
                            question: questions[0],
                            text: "Complete Company Analysis",
                            child: MdSnsText(
                              "#${widget.selectedStock.symbol}",
                              variant: TextVariant.h3,
                              fontWeight: TextFontWeightVariant.h1,
                              color: AppColors.white,
                            ),
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
                              widget.selectedStock.companyName
                                  .split("-")
                                  .first
                                  .trim(),
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
                                  widget.selectedStock.price,
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
                      // physics: const BouncingScrollPhysics(),
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
                : SizedBox(),
            SizedBox(height: 20.h),

            chartLoader == true
                ? SizedBox(height: 300.h, child: CustomCandleChartShimmer())
                : overviewCandleChartModel != null
                ? CustomCandleChart(
                    // key: UniqueKey(),
                    name: "OHLC/V Candlestick Chart",
                    data: buildChartSpots(overviewCandleChartModel!),
                    selectedItem: selectedCandleOverview,
                    onPressed: (val) {
                      getOverviewCandleChart(
                        widget.chatRouting.symbol,
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
                        selectedCandleOverview = val;
                      });
                    },
                  )
                : SizedBox(),

            // CustomCandleChartShimmer(),
            SizedBox(height: 20.h),

            isshowpriceTargetMatricsDataLoder == true
                ? PriceTargetWidget(data: null, chatRouting: widget.chatRouting)
                : priceTargetMatrics != null &&
                      priceTargetMatrics!.data.length > 0
                ? PriceTargetWidget(
                    data: priceTargetMatrics!.data,
                    chatRouting: widget.chatRouting,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),

            isshowshareStructureLoder == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : sharesResponse != null &&
                      sharesResponse!.data.PercentInsiders != null
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,

                    matrics: null,
                    fundamentalData: null,
                    shareData: sharesResponse!.data,
                    heading: Headings.shareStructure,
                  )
                : SizedBox(),
            SizedBox(height: pricePerformanceData != null ? 20.h : 0),
            //doneee
            pricePerformanceLoader == true
                ? TableShimmer(title: "Price Performance")
                : pricePerformanceData != null
                ? PricePerformanceWidget(data: pricePerformanceData!)
                : SizedBox(),
            SizedBox(height: 20.h),

            fundamentalResponseLoder == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : fundamentalResponse != null &&
                      fundamentalResponse!
                          .data
                          .fundamentals
                          .annualIncome
                          .isNotEmpty
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,
                    matrics: null,
                    fundamentalData: fundamentalResponse!.data,
                    shareData: null,
                    heading: Headings.fundamental,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),

            matricDataloader == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : matricData != null &&
                      matricData!.data != null &&
                      matricData!.data!.isNotEmpty
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting,

                    matrics: matricData!.data,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.matrics,
                  )
                : SizedBox(),

            // SizedBox(height: 20.h),
            // CustomLineChart(
            //   title: "Price Target",
            //   lineColor: Colors.green,
            //   areaColor: Colors.greenAccent,
            // ),
            SizedBox(height: 20.h),

            monthlyDataloader == true
                ? shimmerBox(height: 400, radius: 16)
                : monthlyData != null
                ? WeeklySeasonalityChart(
                    data: monthlyData!,
                    isWeekly: false,
                    weeklyModel: WeeklyModel(),
                  )
                : SizedBox(),
            SizedBox(height: 20.h),

            weeklyDataloader == true
                ? shimmerBox(height: 400, radius: 16)
                : weeklyData != null
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
            priceComparisonloader == true
                ? shimmerBox(height: 300, radius: 16)
                : priceComparisonModel != null &&
                      priceComparisonModel!.data.data[widget
                              .chatRouting
                              .symbol] !=
                          null &&
                      priceComparisonModel!.data.data['SPY'] != null
                ? PriceComparisonChart(
                    priceComparisonModel: priceComparisonModel,
                    symbol: widget.chatRouting.symbol,
                    twoCharts: true,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),
            analyticsRespinseloader == true
                ? shimmerBox(height: 170, radius: 16)
                : analyticsRespinseData != null &&
                      analyticsRespinseData!.data.isNotEmpty
                ? AnalyticsWidget(
                    chatRouting: widget.chatRouting,
                    data: analyticsRespinseData!.data,
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// OverviewContentV1 - Properly refactored with correct Riverpod usage
// ============================================================================

// State provider for selected candle interval per symbol
final selectedCandleIntervalProvider = StateProvider.family<String, String>(
  (ref, symbol) => "D",
);

class OverviewContentV1 extends ConsumerWidget {
  final ChatRouting chatRouting;
  final Stock selectedStock;

  const OverviewContentV1({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
  });

  // Helper method to calculate chart date range based on interval
  // Uses date-only (no time component) to ensure stable provider keys
  Map<String, String> _calculateChartDateRange(IntervalEnum interval) {
    final now = DateTime.now().toUtc();
    // Use date-only to avoid creating new provider instances on every build
    final today = DateTime.utc(now.year, now.month, now.day);
    DateTime startDate;

    switch (interval.value) {
      case "hour":
        startDate = DateTime.utc(today.year, today.month - 2, today.day);
        break;
      case "daily":
        startDate = DateTime.utc(today.year - 2, today.month, today.day);
        break;
      case "weekly":
        startDate = DateTime.utc(today.year - 3, today.month, today.day);
        break;
      case "monthly":
        startDate = DateTime.utc(today.year - 10, today.month, today.day);
        break;
      default:
        startDate = DateTime.utc(today.year - 2, today.month, today.day);
    }

    double intervalMs = 0;
    if (interval.value == "minute") {
      intervalMs = 60 * 1000;
    } else if (interval.value == "hour") {
      intervalMs = 60 * 60 * 1000;
    } else if (interval.value == "daily") {
      intervalMs = 24 * 60 * 60 * 1000;
    } else if (interval.value == "weekly") {
      intervalMs = 7 * 24 * 60 * 60 * 1000;
    } else if (interval.value == "monthly") {
      intervalMs = 30 * 24 * 60 * 60 * 1000;
    }

    double dummyIntervals =
        (today.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) /
        intervalMs;
    var dataPoint = intervalMs > 0 ? (dummyIntervals + 1).floor() : 1;

    return {
      'startDate': startDate.toIso8601String(),
      'endDate': today.toIso8601String(),
      'dataPoint': dataPoint.toString(),
    };
  }

  List<ChartData> _buildChartSpots(
    List<OverviewCandleChartModel> overviewCandle,
  ) {
    return overviewCandle.map((item) {
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
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch selected candle interval state
    final selectedCandleOverview = ref.watch(
      selectedCandleIntervalProvider(chatRouting.symbol),
    );

    // Watch all providers in build method
    final overviewState = ref.watch(getOverviewProvider(chatRouting.symbol));
    final priceTargetState = ref.watch(
      priceTargetMatricsProvider(SymbolDto(symbol: chatRouting.symbol)),
    );
    final pricePerformanceState = ref.watch(
      pricePerformanceProvider(SymbolDto(symbol: chatRouting.symbol)),
    );
    final analyticsState = ref.watch(
      analyticsDataProvider(SymbolDto(symbol: chatRouting.symbol)),
    );
    final matricsState = ref.watch(matricsDataProvider(chatRouting.symbol));
    final fundamentalState = ref.watch(
      fundamentalDataProvider(SymbolDto(symbol: chatRouting.symbol)),
    );
    final sharesState = ref.watch(
      shareStatsProvider(SymbolDto(symbol: chatRouting.symbol)),
    );
    final priceComparisonState = ref.watch(
      priceComparisonProvider(
        PriceComparisonDto(
          daysBack: 365,
          symbol1: chatRouting.symbol,
          symbol2: "SPY",
        ),
      ),
    );
    final weeklyState = ref.watch(getWeeklyDataProvider(chatRouting.symbol));
    final monthlyState = ref.watch(getMonthlyDataProvider(chatRouting.symbol));

    // Calculate chart date range based on selected interval
    final interval = selectedCandleOverview == 'H'
        ? IntervalEnum.hour
        : selectedCandleOverview == 'D'
        ? IntervalEnum.daily
        : selectedCandleOverview == 'W'
        ? IntervalEnum.weekly
        : selectedCandleOverview == 'M'
        ? IntervalEnum.monthly
        : IntervalEnum.daily;

///////////////////////////////////////////////////This Api has 504///////////////////////////////////////////////////////////////////
    // final chartDateRange = _calculateChartDateRange(interval);
    // final chartState = ref.watch(
    //   getOverviewCandleChartProvider(
    //     chatRouting.symbol + "_NASDAQ",
    //     interval.value,
    //     chartDateRange['startDate']!,
    //     chartDateRange['endDate']!,
    //     "1",
    //     chartDateRange['dataPoint']!,
    //   ),
    // );

    // Watch stock manager for live prices
    final stockManagerState = ref.watch(stocksManagerProvider);
    final liveStock = stockManagerState[chatRouting.stockid];

    // Calculate price change
    double change = liveStock != null
        ? PriceUtils.getChangesPercentage(
                        liveStock.price,
                        liveStock.previousClose,
                      ) !=
                      null &&
                  liveStock.price != liveStock.previousClose
              ? PriceUtils.getChangesPercentage(
                  liveStock.price,
                  liveStock.previousClose,
                )!
              : chatRouting.changePercentage
        : chatRouting.changePercentage;

    List<String> questions = [
      "Provide a comprehensive company analysis of ${chatRouting.companyName}",
      "Technical analysis for ${chatRouting.companyName}",
      "Analyze analyst sentiment for ${chatRouting.companyName}",
      "Perform DCF valuation analysis for  ${chatRouting.companyName}",
      "Perform DCF valuation analysis for ${chatRouting.companyName}",
      "Analyze analyst sentiment for ${chatRouting.companyName}",
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 14.h),

            // Header Row
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: selectedStock.type.toLowerCase() == "crypto"
                        ? Image.network(
                            getItemImage(
                              ImageType.crypto,
                              selectedStock.symbol,
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
                            getItemImage(ImageType.stock, selectedStock.symbol),
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
                    GestureDetector(
                      child: Row(
                        children: [
                          ShowInfoPopup(
                            chatRouting: chatRouting,
                            question: questions[0],
                            text: "Complete Company Analysis",
                            child: MdSnsText(
                              "#${selectedStock.symbol}",
                              variant: TextVariant.h3,
                              fontWeight: TextFontWeightVariant.h1,
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 5,
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
                              selectedStock.companyName.split("-").first.trim(),
                              color: AppColors.colorB2B2B7,
                              variant: TextVariant.h4,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: TextFontWeightVariant.h4,
                            ),
                          ),
                        ],
                      ),
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
                                  selectedStock.price,
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

            // Overview Data Cards
            switch (overviewState) {
              AsyncData(:final value) when value != null => SizedBox(
                height: 135.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final stockResponse = StockResponse(data: value);
                    return index == 0
                        ? PriceCardWidget(
                            firstColor: AppColors.white,
                            secondColor: AppColors.color0xFFFFB21D,
                            firstHeading: "PREVIOUSLY CLOSE PRICE",
                            secondHeading: "AFTER HOURS",
                            previousPrice: stockResponse.data.previousClose
                                .toString(),
                            afterHoursPrice: stockResponse.data.AfterHours
                                .toString(),
                            percentage: "+1.48%",
                          )
                        : index == 1
                        ? PriceCardWidget(
                            secondColor: AppColors.white,
                            firstColor: AppColors.color046297,
                            firstHeading: "MARKET CAPITAILIZATION",
                            secondHeading: "OUTSTANDING SHARES",
                            previousPrice: stockResponse
                                .data
                                .MarketCapitalization
                                .toString(),
                            afterHoursPrice: stockResponse
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
                            previousPrice: stockResponse.data.TotalVolume
                                .toString(),
                            afterHoursPrice: stockResponse.data.AverageVolume
                                .toString(),
                            percentage: "+1.48%",
                          )
                        : index == 3
                        ? PriceCardWidget(
                            firstColor: AppColors.color00FF55,
                            secondColor: AppColors.colorab75b8,
                            firstHeading: "EXCHANGE",
                            secondHeading: "MARKET CAPTILIZATION",
                            previousPrice: stockResponse.data.Exchange
                                .toString(),
                            afterHoursPrice: stockResponse
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
                            previousPrice: stockResponse.data.Sector.toString(),
                            afterHoursPrice: stockResponse.data.Industry
                                .toString(),
                            percentage: "+1.48%",
                          );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 20.w);
                  },
                ),
              ),
              AsyncLoading() => SizedBox(
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
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

///////////////////////////////////////////////////This Api has 504///////////////////////////////////////////////////////////////////
            // Candle Chart
            // switch (chartState) {
            //   AsyncData(:final value) when value.data.isNotEmpty =>
            //     CustomCandleChart(
            //       name: "OHLC/V Candlestick Chart",
            //       data: _buildChartSpots(value.data),
            //       selectedItem: selectedCandleOverview,
            //       onPressed: (val) {
            //         ref
            //                 .read(
            //                   selectedCandleIntervalProvider(
            //                     chatRouting.symbol,
            //                   ).notifier,
            //                 )
            //                 .state =
            //             val;
            //       },
            //     ),
            //   AsyncLoading() => SizedBox(
            //     height: 300.h,
            //     child: CustomCandleChartShimmer(),
            //   ),
            //   AsyncError() => SizedBox(),
            //   _ => SizedBox(),
            // },
            // SizedBox(height: 20.h),

            // Price Target Metrics
            switch (priceTargetState) {
              AsyncData(:final value) when value != null && value.isNotEmpty =>
                PriceTargetWidget(
                  data: value.whereType<PriceTargetData>().toList(),
                  chatRouting: chatRouting,
                ),
              AsyncLoading() => PriceTargetWidget(
                data: null,
                chatRouting: chatRouting,
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Share Structure
            switch (sharesState) {
              AsyncData(:final value)
                  when value != null && value.data.PercentInsiders != null =>
                ShareStructureCard(
                  chatRouting: chatRouting,
                  matrics: null,
                  fundamentalData: null,
                  shareData: value.data,
                  heading: Headings.shareStructure,
                ),
              AsyncLoading() => ShareStructureCard(
                chatRouting: chatRouting,
                matrics: null,
                fundamentalData: null,
                shareData: null,
                heading: Headings.loading,
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            // Price Performance
            switch (pricePerformanceState) {
              AsyncData(:final value) when value != null => Column(
                children: [
                  SizedBox(height: 20.h),
                  PricePerformanceWidget(data: value),
                ],
              ),
              AsyncLoading() => Column(
                children: [
                  SizedBox(height: 20.h),
                  TableShimmer(title: "Price Performance"),
                ],
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Fundamental Data
            switch (fundamentalState) {
              AsyncData(:final value)
                  when value != null &&
                      value.data.fundamentals.annualIncome.isNotEmpty =>
                ShareStructureCard(
                  chatRouting: chatRouting,
                  matrics: null,
                  fundamentalData: value.data,
                  shareData: null,
                  heading: Headings.fundamental,
                ),
              AsyncLoading() => ShareStructureCard(
                chatRouting: chatRouting,
                matrics: null,
                fundamentalData: null,
                shareData: null,
                heading: Headings.loading,
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Metrics Data
            switch (matricsState) {
              AsyncData(:final value)
                  when value != null &&
                      value.data != null &&
                      value.data!.isNotEmpty =>
                ShareStructureCard(
                  chatRouting: chatRouting,
                  matrics: value.data,
                  fundamentalData: null,
                  shareData: null,
                  heading: Headings.matrics,
                ),
              AsyncLoading() => ShareStructureCard(
                chatRouting: chatRouting,
                matrics: null,
                fundamentalData: null,
                shareData: null,
                heading: Headings.loading,
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Monthly Data
            switch (monthlyState) {
              AsyncData(:final value) => WeeklySeasonalityChart(
                data: value,
                isWeekly: false,
                weeklyModel: WeeklyModel(),
              ),
              AsyncLoading() => shimmerBox(height: 400, radius: 16),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Weekly Data
            switch (weeklyState) {
              AsyncData(:final value) => WeeklySeasonalityChart(
                weeklyModel: value,
                isWeekly: true,
                data: ProbabilityResponse(),
              ),
              AsyncLoading() => shimmerBox(height: 400, radius: 16),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Price Comparison
            switch (priceComparisonState) {
              AsyncData(:final value)
                  when value != null &&
                      value.data.data[chatRouting.symbol] != null &&
                      value.data.data['SPY'] != null =>
                PriceComparisonChart(
                  priceComparisonModel: value,
                  symbol: chatRouting.symbol,
                  twoCharts: true,
                ),
              AsyncLoading() => shimmerBox(height: 300, radius: 16),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            // Analytics Data
            switch (analyticsState) {
              AsyncData(:final value)
                  when value != null && value.data.isNotEmpty =>
                AnalyticsWidget(chatRouting: chatRouting, data: value.data),
              AsyncLoading() => shimmerBox(height: 170, radius: 16),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
