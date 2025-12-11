import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:trader_gpt/src/core/extensions/price_calculation.dart';
import 'package:trader_gpt/src/core/extensions/symbol_image.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_candle_stick_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/crypto_market_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/highlights_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/price_comparison_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/about_crypto/about_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/analytics_provider/analytics_provider.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/info_crypto/info_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/monthly_data_crypto/monthly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/overview_candle_chart/overview_candle_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/provider/weekly_data_crypto/weekly_data_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/analysis_dto/analysis_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/highlight_dto/highlight_dto_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_cap_dto/market_cap_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/overview_dto/overview_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/price_comparison_dto/price_comparison_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/about_crypto/about_crypto_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/crypto_market_model/crypto_market_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/financial_data_model/financial_data_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/highlight_model_crypto/highlight_model_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/info_model_crypto/info_model_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/market_cap_model/market_cap_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/monthly_model/monthly_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/price_comparison_model/price_comparison_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/weekly_model/weekly_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/pages/widget/shimmer_widget.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/share_structure_widget.dart';
import 'package:trader_gpt/src/shared/chart/weekly_seasonality.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/socket/providers/stocks_price.dart';
import 'package:trader_gpt/src/shared/widgets/AnalysisTableShimmer.dart';
import 'package:trader_gpt/src/shared/widgets/CustomCandleChartShimmer%20.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_shimmer_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/price_card_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/table_shimmer.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../shared/extensions/number_formatter_extension.dart';

class CryptoItems extends ConsumerStatefulWidget {
  final ChatRouting chatRouting;
  final Stock selectedStock;
  const CryptoItems({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
  });

  @override
  ConsumerState<CryptoItems> createState() => _CryptoItemsState();
}

class _CryptoItemsState extends ConsumerState<CryptoItems> {
  List<OverviewCandleChartModel>? overviewCandleChartModelCrypto;

  String selectedItemCandleCrypto = "D";
  double? minX;
  double? maxX;

  Map<String, String> createChartCandleChartDto(
    IntervalEnum interval, {
    DateTime? referenceTime,
  }) {
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

    // // final now = referenceTime ?? DateTime.now().toUtc();
    // // DateTime startDate;
    // // final endDateString = now.toIso8601String();
    // // String startDateString;

    // // double intervalMs = 0;

    // // if (interval.value == "minute") {
    // //   intervalMs = 60 * 1000;
    // //   startDate = DateTime.utc(
    // //     now.year,
    // //     now.month,
    // //     now.day,
    // //     now.hour - 24, // Last 24 hours for minutes
    // //     now.minute,
    // //     now.second,
    // //     now.millisecond,
    // //   );
    // //   startDateString = startDate.toIso8601String();
    // // } else if (interval.value == "hour") {
    // //   intervalMs = 60 * 60 * 1000;
    // //   startDate = DateTime.utc(
    // //     now.year,
    // //     now.month - 2,
    // //     now.day,
    // //     now.hour,
    // //     now.minute,
    // //     now.second,
    // //     now.millisecond,
    // //   );
    // //   startDateString = startDate.toIso8601String();
    // // } else if (interval.value == "daily") {
    // //   startDate = DateTime.utc(
    // //     now.year - 2,
    // //     now.month,
    // //     now.day,
    // //     now.hour,
    // //     now.minute,
    // //     now.second,
    // //     now.millisecond,
    // //   );
    // //   startDateString = startDate.toIso8601String();
    // //   intervalMs = 24 * 60 * 60 * 1000;
    // // } else if (interval.value == "weekly") {
    // //   startDate = DateTime.utc(
    // //     now.year - 3,
    // //     now.month,
    // //     now.day,
    // //     now.hour,
    // //     now.minute,
    // //     now.second,
    // //     now.millisecond,
    // //   );
    // //   startDateString = startDate.toIso8601String();
    // //   intervalMs = 7 * 24 * 60 * 60 * 1000;
    // // } else if (interval.value == "monthly") {
    // //   startDate = DateTime.utc(
    // //     now.year - 10,
    // //     now.month,
    // //     now.day,
    // //     now.hour,
    // //     now.minute,
    // //     now.second,
    // //     now.millisecond,
    // //   );
    // //   startDateString = startDate.toIso8601String();
    // //   intervalMs = 30 * 24 * 60 * 60 * 1000;
    // // } else {
    //   // Default fallback
    //   startDate = now.subtract(const Duration(days: 30));
    //   startDateString = startDate.toIso8601String();
    //   intervalMs = 24 * 60 * 60 * 1000;
    // }

    // final dummyIntervals =
    //     (now.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) /
    //     intervalMs;
    // final dataPoint = intervalMs > 0 ? (dummyIntervals + 1).floor() : 1;

    return {
      "dataPoint": dataPoint.toString(),
      "endDateString": today.toIso8601String(),
      "startDateString": startDate.toIso8601String(),
      "interval": interval.value,
    };
  }

  List<FlSpot> buildPriceRatioSpots(Map<String, double> data) {
    var spots;
    if (data.isNotEmpty) {
      spots = data.entries.map((e) {
        return FlSpot(double.parse(e.key), e.value.toDouble());
      }).toList()..sort((a, b) => a.x.compareTo(b.x));
    }

    minX = spots != null ? spots.first.x : 0;
    maxX = spots != null ? spots.last.x : 10;

    return spots ?? [];
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

  @override
  Widget build(BuildContext context) {
    final stockManagerState = ref.watch(stocksManagerProvider);
    final liveStock = stockManagerState[widget.chatRouting.stockid];
    double change =
        PriceUtils.getChangesPercentage(
              liveStock != null ? liveStock.price : widget.chatRouting.price,
              widget.chatRouting.previousClose,
            ) !=
            null
        ? PriceUtils.getChangesPercentage(
            liveStock != null ? liveStock.price : widget.chatRouting.price,
            widget.chatRouting.previousClose,
          )!
        : widget.chatRouting.changePercentage;

    // final highlightRequestState = ref.watch(
    //   highlightsTopProvider(
    //     HighlightRequest(
    //       symbol: widget.chatRouting.symbol,
    //       limit: 5,
    //       sort: "desc",
    //     ),
    //   ),
    // );
    final infoCryptoState = ref.watch(
      infoCryptoDataProvider(widget.chatRouting.symbol),
    );

    final getAboutCryptoState = ref.watch(
      getAboutCryptoProvider(widget.chatRouting.symbol),
    );
    final getWeeklyDataCryptState = ref.watch(
      getWeeklyDataCryptoProvider(widget.chatRouting.symbol + "USD", 'crypto'),
    );

    final getMonthlyDataCryptoState = ref.watch(
      getMonthlyDataCryptoProvider(widget.chatRouting.symbol + "USD", "crypto"),
    );

    final priceComparisonState = ref.watch(
      priceComparisonProvider(
        PriceComparisonDto(
          daysBack: 365,
          symbol1: widget.chatRouting.symbol,
          symbol2: widget.chatRouting.symbol,
        ),
      ),
    );

    final marketCapChartState = ref.watch(
      marketCapChartProvider(
        MarketCapRequest(
          interval: "1 month",
          symbol: widget.chatRouting.symbol,
        ),
      ),
    );

    final cryptoMarketsState = ref.watch(
      cryptoMarketsProvider(SymbolDto(symbol: widget.chatRouting.symbol)),
    );

    final priceRatioState = ref.read(
      priceRatioProvider(
        PriceComparisonDto(
          daysBack: 365,
          symbol1: widget.chatRouting.symbol,
          symbol2: widget.chatRouting.symbol,
        ),
      ),
    );
    final interval = selectedItemCandleCrypto == 'H'
        ? IntervalEnum.hour
        : selectedItemCandleCrypto == 'D'
        ? IntervalEnum.daily
        : selectedItemCandleCrypto == 'W'
        ? IntervalEnum.weekly
        : selectedItemCandleCrypto == 'M'
        ? IntervalEnum.monthly
        : IntervalEnum.daily;

    final chartDateRange = createChartCandleChartDto(interval);
    final getOverviewCandleChartCryptoState = ref.watch(
      getOverviewCandleChartCryptoProvider(
        widget.chatRouting.symbol + "_CRYPTO",
        interval.value,
        // "2023-12-11T09:59:41.947Z",
        chartDateRange['startDateString']!,
        chartDateRange['endDateString']!,
        // "2025-12-11T09:59:41.947063Z",
        "1",
        chartDateRange['dataPoint']!,
      ),
    );

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
                        child:
                            widget.selectedStock.type.toLowerCase() == "crypto"
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
                        MdSnsText(
                          "#${widget.selectedStock.symbol}",
                          variant: TextVariant.h3,
                          fontWeight: TextFontWeightVariant.h1,

                          color: AppColors.white,
                        ),
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
                              widget.selectedStock.price,
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

            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: SizedBox(
            //     height: 130,
            //     width: MediaQuery.sizeOf(context).width,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         switch (highlightRequestState) {
            //           AsyncData(:final value)
            //               when value != null && value.data!.isNotEmpty =>
            //             SizedBox(
            //               height: 135.h,
            //               width: MediaQuery.sizeOf(context).width,
            //               child: ListView.separated(
            //                 scrollDirection: Axis.horizontal,
            //                 // padding: EdgeInsets.symmetric(horizontal: 16.w),
            //                 itemCount: value.data!.length > 0
            //                     ? 1
            //                     : value.data!.length > 1
            //                     ? 2
            //                     : value.data!.length > 2
            //                     ? 3
            //                     : value.data!.length > 3
            //                     ? 4
            //                     : 0,
            //                 physics:
            //                     NeverScrollableScrollPhysics(), // Smooth scrolling
            //                 itemBuilder: (context, index) {
            //                   return index == 0
            //                       ? PriceCardWidget(
            //                           firstColor: AppColors.white,
            //                           secondColor: AppColors.white,
            //                           firstHeading: "VOLUME",
            //                           secondHeading: "CIRCULATING SUPPLY",
            //                           previousPrice: compactFormatter.format(
            //                             value.data![0].volume ?? 0,
            //                           ),
            //                           afterHoursPrice: compactFormatter.format(
            //                             value.data![0].circulatingSupply ?? 0,
            //                           ),

            //                           percentage: "+1.48%",
            //                         )
            //                       : index == 1
            //                       ? PriceCardWidget(
            //                           secondColor: AppColors.white,
            //                           firstColor: AppColors.white,
            //                           firstHeading: "TOTAL SUPPLY",
            //                           secondHeading: "MARKET CAP FDV RATIO",
            //                           previousPrice: compactFormatter.format(
            //                             value.data![0].totalSupply ?? 0,
            //                           ),
            //                           afterHoursPrice: compactFormatter.format(
            //                             value.data![0].marketCapFdvRatio ?? 0,
            //                           ),
            //                           percentage: "+1.48%",
            //                         )
            //                       : index == 2
            //                       ? PriceCardWidget(
            //                           firstColor: AppColors.white,
            //                           secondColor: AppColors.white,

            //                           firstHeading: "MAX SUPPLY",
            //                           secondHeading: "PREVIOUS CLOSE PRICE",
            //                           previousPrice:
            //                               "${value.data![0].maxSupply ?? "N/A"}",
            //                           afterHoursPrice: value
            //                               .data![0]
            //                               .previousClosePrice!
            //                               .toStringAsFixed(2),
            //                           percentage: "+1.48%",
            //                         )
            //                       : index == 3
            //                       ? PriceCardWidget(
            //                           firstColor: AppColors.color0098E4,
            //                           secondColor: AppColors.white,
            //                           firstHeading: "MARKET CAPITILIZATION",
            //                           secondHeading: "DILUTED MARKET CAP",
            //                           previousPrice: compactFormatter.format(
            //                             value.data![0].marketCapitalization ??
            //                                 0,
            //                           ),
            //                           afterHoursPrice:
            //                               "${value.data![0].dilutedMarketCap ?? "N/A"}",
            //                           percentage: "+1.48%",
            //                         )
            //                       : SizedBox();
            //                 },
            //                 separatorBuilder:
            //                     (BuildContext context, int index) {
            //                       return SizedBox(width: 20.w);
            //                     },
            //               ),
            //             ),

            //           AsyncLoading() => SizedBox(
            //             height: 135.h,
            //             child: ListView.separated(
            //               scrollDirection: Axis.horizontal,
            //               itemCount: 5,
            //               physics: const BouncingScrollPhysics(),
            //               itemBuilder: (context, index) {
            //                 return PriceCardShimmer();
            //               },
            //               separatorBuilder: (BuildContext context, int index) {
            //                 return SizedBox(width: 20.w);
            //               },
            //             ),
            //           ),
            //           AsyncError() => SizedBox(),
            //           _ => SizedBox(),
            //         },
            //         switch (infoCryptoState) {
            //           AsyncData(:final value) when value != null => SizedBox(
            //             height: 135.h,
            //             width: MediaQuery.sizeOf(context).width,
            //             child: ListView.separated(
            //               scrollDirection: Axis.horizontal,
            //               // padding: EdgeInsets.symmetric(horizontal: 16.w),
            //               itemCount: 4,
            //               physics:
            //                   NeverScrollableScrollPhysics(), // Smooth scrolling
            //               itemBuilder: (context, index) {
            //                 return index == 0
            //                     ? PriceCardWidget(
            //                         firstColor: AppColors.white,
            //                         secondColor: AppColors.white,
            //                         firstHeading: "HIGH (24H)",
            //                         secondHeading: "LOW (24H)",
            //                         previousPrice:
            //                             "${value!.data!.marketData!.high24h!.usd ?? "N/A"}",
            //                         afterHoursPrice:
            //                             "${value!.data!.marketData!.low24h!.usd ?? "N/A"}",
            //                         percentage: "+1.48%",
            //                       )
            //                     : index == 1
            //                     ? PriceCardWidget(
            //                         firstColor: AppColors.white,
            //                         secondColor: AppColors.white,
            //                         firstHeading: "HIGH",
            //                         secondHeading: "LOW",
            //                         previousPrice:
            //                             "${value!.data!.marketData!.ath!.usd ?? "N/A"}",
            //                         afterHoursPrice:
            //                             "${value!.data!.marketData!.atl!.usd ?? "N/A"}",
            //                         percentage: "+1.48%",
            //                       )
            //                     : index == 2
            //                     ? PriceCardWidget(
            //                         firstColor: AppColors.white,
            //                         secondColor: AppColors.white,
            //                         firstHeading: "MAX HIGH (7D)",
            //                         secondHeading: "MIN LOW (7D)",
            //                         previousPrice:
            //                             "${value!.data!.marketData!.maxHigh7d ?? "N/A"}",
            //                         afterHoursPrice:
            //                             "${value!.data!.marketData!.minLow7d ?? "N/A"}",
            //                         percentage: "+1.48%",
            //                       )
            //                     : index == 3
            //                     ? PriceCardWidget(
            //                         firstColor: AppColors.white,
            //                         secondColor: AppColors.white,
            //                         firstHeading: "OPEN (24H)",
            //                         secondHeading: "MAX SUPPLY",
            //                         previousPrice:
            //                             "${value!.data!.marketData!.open24h ?? "N/A"}",
            //                         afterHoursPrice:
            //                             "${value!.data!.marketData!.maxSupply ?? "N/A"}",
            //                         percentage: "+1.48%",
            //                       )
            //                     : SizedBox();
            //               },
            //               separatorBuilder: (BuildContext context, int index) {
            //                 return SizedBox(width: 20.w);
            //               },
            //             ),
            //           ),
            //           AsyncLoading() => SizedBox(
            //             height: 135.h,
            //             child: ListView.separated(
            //               scrollDirection: Axis.horizontal,
            //               itemCount: 5,
            //               physics: NeverScrollableScrollPhysics(),
            //               itemBuilder: (context, index) {
            //                 return PriceCardShimmer();
            //               },
            //               separatorBuilder: (BuildContext context, int index) {
            //                 return SizedBox(width: 20.w);
            //               },
            //             ),
            //           ),
            //           AsyncError() => SizedBox(),
            //           _ => SizedBox(),
            //         },
            //       ],
            //     ),
            //   ),
            // ),

            // highlightResponse != null &&
            //         highlightResponse!.data != null &&
            //         highlightResponse!.data!.isNotEmpty &&
            //         infoCryptoResponse != null &&
            //         infoCryptoResponse!.data != null
            //     ? SizedBox(
            //         height: 135.h,
            //         child: ListView.separated(
            //           scrollDirection: Axis.horizontal,
            //           // padding: EdgeInsets.symmetric(horizontal: 16.w),
            //           itemCount: 8,
            //           physics:
            //               const BouncingScrollPhysics(), // Smooth scrolling
            //           itemBuilder: (context, index) {
            //             return index == 0
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "VOLUME",
            //                     secondHeading: "CIRCULATING SUPPLY",
            //                     previousPrice: compactFormatter.format(
            //                       highlightResponse!.data![0].volume ?? 0,
            //                     ),
            //                     afterHoursPrice: compactFormatter.format(
            //                       highlightResponse!
            //                               .data![0]
            //                               .circulatingSupply ??
            //                           0,
            //                     ),

            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 1
            //                 ? PriceCardWidget(
            //                     secondColor: AppColors.white,
            //                     firstColor: AppColors.white,
            //                     firstHeading: "TOTAL SUPPLY",
            //                     secondHeading: "MARKET CAP FDV RATIO",
            //                     previousPrice: compactFormatter.format(
            //                       highlightResponse!.data![0].totalSupply ?? 0,
            //                     ),
            //                     afterHoursPrice: compactFormatter.format(
            //                       highlightResponse!
            //                               .data![0]
            //                               .marketCapFdvRatio ??
            //                           0,
            //                     ),
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 2
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,

            //                     firstHeading: "MAX SUPPLY",
            //                     secondHeading: "PREVIOUS CLOSE PRICE",
            //                     previousPrice:
            //                         "${highlightResponse!.data![0].maxSupply ?? "N/A"}",
            //                     afterHoursPrice: highlightResponse!
            //                         .data![0]
            //                         .previousClosePrice!
            //                         .toStringAsFixed(2),
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 3
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.color0098E4,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "MARKET CAPITILIZATION",
            //                     secondHeading: "DILUTED MARKET CAP",
            //                     previousPrice: compactFormatter.format(
            //                       highlightResponse!
            //                               .data![0]
            //                               .marketCapitalization ??
            //                           0,
            //                     ),
            //                     afterHoursPrice:
            //                         "${highlightResponse!.data![0].dilutedMarketCap ?? "N/A"}",
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 4
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "HIGH (24H)",
            //                     secondHeading: "LOW (24H)",
            //                     previousPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.high24h!.usd ?? "N/A"}",
            //                     afterHoursPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.low24h!.usd ?? "N/A"}",
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 5
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "HIGH",
            //                     secondHeading: "LOW",
            //                     previousPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.ath!.usd ?? "N/A"}",
            //                     afterHoursPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.atl!.usd ?? "N/A"}",
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 6
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "MAX HIGH (7D)",
            //                     secondHeading: "MIN LOW (7D)",
            //                     previousPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.maxHigh7d ?? "N/A"}",
            //                     afterHoursPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.minLow7d ?? "N/A"}",
            //                     percentage: "+1.48%",
            //                   )
            //                 : index == 7
            //                 ? PriceCardWidget(
            //                     firstColor: AppColors.white,
            //                     secondColor: AppColors.white,
            //                     firstHeading: "OPEN (24H)",
            //                     secondHeading: "MAX SUPPLY",
            //                     previousPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.open24h ?? "N/A"}",
            //                     afterHoursPrice:
            //                         "${infoCryptoResponse!.data!.marketData!.maxSupply ?? "N/A"}",
            //                     percentage: "+1.48%",
            //                   )
            //                 : SizedBox();
            //           },
            //           separatorBuilder: (BuildContext context, int index) {
            //             return SizedBox(width: 20.w);
            //           },
            //         ),
            //       )

            //     : SizedBox(),
            SizedBox(height: 10),

            switch (getAboutCryptoState) {
              AsyncData(:final value) when value.data != null => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.h),
                  MdSnsText(
                    "Coin Details",
                    color: AppColors.white,
                    variant: TextVariant.h3,
                    fontWeight: TextFontWeightVariant.h1,
                  ),

                  SizedBox(height: 6.h),
                  ReadMoreText(
                    value.data!.description!.en ?? "",
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
                  ),
                ],
              ),
              AsyncLoading() => Column(
                children: [
                  Column(
                    children: [
                      shimmerBox(
                        height: 10,
                        width: MediaQuery.sizeOf(context).width / 1.1,
                      ),
                      SizedBox(height: 6.h),
                      shimmerBox(
                        height: 10,
                        width: MediaQuery.sizeOf(context).width / 1.1,
                      ),
                    ],
                  ),
                ],
              ),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 10),
            switch (getOverviewCandleChartCryptoState) {
              AsyncData(:final value) when value.data.isNotEmpty =>
                CustomCandleChart(
                  key: UniqueKey(),
                  selectedItem: selectedItemCandleCrypto,

                  name: "OHLC/V Candlestick Chart",
                  data: buildCryptoChartSpots(value.data),
                  onPressed: (val) {
                    // if (!mounted) return;
                    // setState(() {
                    //   selectedItemCandleCrypto = val;
                    // });
                    // final interval = selectedItemCandleCrypto == 'H'
                    //     ? IntervalEnum.hour
                    //     : selectedItemCandleCrypto == 'D'
                    //     ? IntervalEnum.daily
                    //     : selectedItemCandleCrypto == 'W'
                    //     ? IntervalEnum.weekly
                    //     : selectedItemCandleCrypto == 'M'
                    //     ? IntervalEnum.monthly
                    //     : IntervalEnum.daily;

                    // final chartDateRange = createChartCandleChartDto(interval);
                    // getOverviewCandleChartCryptoState = ref.watch(
                    //   getOverviewCandleChartCryptoProvider(
                    //     widget.chatRouting.symbol + "_CRYPTO",
                    //     interval.value,
                    //     chartDateRange['startDateString']!,
                    //     chartDateRange['endDateString']!,
                    //     "1",
                    //     chartDateRange['dataPoint']!,
                    //   ),
                    // );
                  },
                ),
              AsyncLoading() => CustomCandleChartShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            SizedBox(height: 20.h),

            switch (marketCapChartState) {
              AsyncData(:final value)
                  when value != null && value.data != null =>
                CustomLineChart(
                  lineColor: AppColors.color046297,
                  areaColor: AppColors.color046297.withOpacity(0.4),
                  title: "MarketCap Chart",
                  chartData: buildMarketCapScope(value!.data!),
                ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            switch (cryptoMarketsState) {
              AsyncData(:final value)
                  when value != null && value.data.isNotEmpty =>
                CryptoMarketChart(title: "Crypto Markets", data: value.data),
              AsyncLoading() => TableShimmer(title: "Crypto Markets"),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            SizedBox(height: 20.h),

            switch (priceComparisonState) {
              AsyncData(:final value) when value != null =>
                PriceComparisonChart(
                  priceComparisonModel: value,
                  symbol: widget.chatRouting.symbol,
                  twoCharts: false,
                ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            SizedBox(height: 20.h),

            switch (priceRatioState) {
              AsyncData(:final value)
                  when value != null &&
                      value.data.data["price_ratio"] != null &&
                      value.data.data["price_ratio"]!.isNotEmpty =>
                Container(
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
                                  value.data.data["price_ratio"]!,
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
                ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            SizedBox(height: 20.h),

            switch (getMonthlyDataCryptoState) {
              AsyncData(:final value) when value != null =>
                WeeklySeasonalityChart(
                  data: value!,
                  isWeekly: false,
                  weeklyModel: WeeklyModel(),
                ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },
            SizedBox(height: 20.h),

            switch (getWeeklyDataCryptState) {
              AsyncData(:final value) when value.probability != null =>
                WeeklySeasonalityChart(
                  data: ProbabilityResponse(),
                  isWeekly: true,
                  weeklyModel: value,
                ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            SizedBox(height: 20.h),
            switch (infoCryptoState) {
              AsyncData(:final value) when value != null => HighlightsCard(
                highlightResponse: value,
              ),
              AsyncLoading() => CashDebtShimmer(),
              AsyncError() => SizedBox(),
              _ => SizedBox(),
            },

            // infoCryptoResponse != null
            //     ? HighlightsCard(highlightResponse: infoCryptoResponse!)
            //     : SizedBox(),
          ],
        ),
      ),
    );
  }
}
