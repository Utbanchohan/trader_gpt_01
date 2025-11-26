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
import 'package:trader_gpt/src/shared/widgets/matrics_shimmer.dart';
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

class OverviewContent extends ConsumerStatefulWidget {
  final dynamic id;
  final ChatRouting chatRouting;
  final Stock selectedStock;
  final FundamentalResponse? fundamentalResponse;
  final PriceComparisonModel? priceComparisonModel;
  final AnalystRatingResponse? analyticsRespinseData;
  final WeeklyModel? weeklyData;
  final ProbabilityResponse? monthlyData;
  final MatricsResponse? matricData;
  final StockResponse? stockResponse;
  final List<OverviewCandleChartModel>? overviewCandleChartModel;
  final PricePerformance? pricePerformanceData;
  final SharesResponse? sharesResponse;
  final PriceTargetMatrics? priceTargetMatrics;
  String? selectedCandleOverview;
  final bool ishowLoder;
  final bool chartLoader;
  final bool isshowpriceTargetMatricsDataLoder;
  final bool pricePerformanceLoader;
  final bool isshowshareStructureLoder;
  final bool monthlyDataloader;
  final bool analyticsRespinseloader;

  final bool weeklyDataloader;
  final bool priceComparisonloader;

  final bool fundamentalResponseLoder;
  final bool matricDataloader;

  final void Function(String interval) onPressedAnalysis;

  OverviewContent({
    super.key,
    required this.id,
    required this.chatRouting,
    required this.selectedStock,
    required this.chartLoader,
    required this.ishowLoder,
    required this.isshowpriceTargetMatricsDataLoder,
    required this.isshowshareStructureLoder,
    required this.selectedCandleOverview,
    required this.onPressedAnalysis,
    required this.pricePerformanceLoader,
    required this.fundamentalResponseLoder,
    required this.matricDataloader,
    required this.monthlyDataloader,
    required this.weeklyDataloader,
    required this.priceComparisonloader,
    required this.analyticsRespinseloader,
    this.fundamentalResponse,
    this.priceComparisonModel,
    this.analyticsRespinseData,
    this.monthlyData,
    this.weeklyData,
    this.matricData,
    this.stockResponse,
    this.overviewCandleChartModel,
    this.pricePerformanceData,
    this.sharesResponse,
    this.priceTargetMatrics,
  });

  @override
  ConsumerState<OverviewContent> createState() => _OverviewContentState();
}

class _OverviewContentState extends ConsumerState<OverviewContent> {
  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "Provide a comprehensive company analysis of ${widget.chatRouting.companyName}",
      "Technical analysis for ${widget.chatRouting.companyName}",
      "Analyze analyst sentiment for ${widget.chatRouting.companyName}",
      "Perform DCF valuation analysis for  ${widget.chatRouting.companyName}",
      "Perform DCF valuation analysis for ${widget.chatRouting.companyName}",
      "Analyze analyst sentiment for ${widget.chatRouting.companyName}",
    ];

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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),

      child: SafeArea(
        key: widget.id,
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
                            chatRouting: widget.chatRouting!,
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

            widget.ishowLoder == true
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
                : widget.stockResponse != null
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
                                previousPrice: widget
                                    .stockResponse!
                                    .data
                                    .previousClose
                                    .toString(),
                                afterHoursPrice: widget
                                    .stockResponse!
                                    .data
                                    .AfterHours
                                    .toString(),
                                percentage: "+1.48%",
                              )
                            : index == 1
                            ? PriceCardWidget(
                                secondColor: AppColors.white,
                                firstColor: AppColors.color046297,
                                firstHeading: "MARKET CAPITAILIZATION",
                                secondHeading: "OUTSTANDING SHARES",
                                previousPrice: widget
                                    .stockResponse!
                                    .data
                                    .MarketCapitalization
                                    .toString(),
                                afterHoursPrice: widget
                                    .stockResponse!
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
                                previousPrice: widget
                                    .stockResponse!
                                    .data
                                    .TotalVolume
                                    .toString(),
                                afterHoursPrice: widget
                                    .stockResponse!
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
                                previousPrice: widget
                                    .stockResponse!
                                    .data
                                    .Exchange
                                    .toString(),
                                afterHoursPrice: widget
                                    .stockResponse!
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
                                previousPrice: widget.stockResponse!.data.Sector
                                    .toString(),
                                afterHoursPrice: widget
                                    .stockResponse!
                                    .data
                                    .Industry
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

            widget.chartLoader == true
                ? CustomCandleChartShimmer()
                : widget.overviewCandleChartModel != null
                ? CustomCandleChart(
                    // key: UniqueKey(),
                    name: "OHLC/V Candlestick Chart",
                    data: buildChartSpots(widget.overviewCandleChartModel!),
                    selectedItem: widget.selectedCandleOverview ?? "D",
                    onPressed: (val) async {
                      widget.onPressedAnalysis(val);

                      if (!mounted) return;
                      setState(() {
                        widget.selectedCandleOverview = val;
                      });
                    },
                  )
                : SizedBox(),

            // CustomCandleChartShimmer(),
            SizedBox(height: 20.h),

            widget.isshowpriceTargetMatricsDataLoder == true
                ? PriceTargetWidget(
                    data: null,
                    chatRouting: widget.chatRouting!,
                  )
                : widget.priceTargetMatrics != null &&
                      widget.priceTargetMatrics!.data.length > 0
                ? PriceTargetWidget(
                    data: widget.priceTargetMatrics!.data,
                    chatRouting: widget.chatRouting!,
                  )
                : SizedBox(),

            SizedBox(height: 20.h),

            widget.isshowshareStructureLoder == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : widget.sharesResponse != null &&
                      widget.sharesResponse!.data.PercentInsiders != null
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,

                    matrics: null,
                    fundamentalData: null,
                    shareData: widget.sharesResponse!.data,
                    heading: Headings.shareStructure,
                  )
                : SizedBox(),
            SizedBox(height: widget.pricePerformanceData != null ? 20.h : 0),
            //doneee
            widget.pricePerformanceLoader == true
                ? TableShimmer(title: "Price Performance")
                : widget.pricePerformanceData != null
                ? PricePerformanceWidget(data: widget.pricePerformanceData!)
                : SizedBox(),
            SizedBox(
              height:
                  widget.fundamentalResponse != null &&
                      widget
                          .fundamentalResponse!
                          .data
                          .fundamentals
                          .annualIncome
                          .isNotEmpty
                  ? 20.h
                  : 0,
            ),

            widget.fundamentalResponseLoder == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : widget.fundamentalResponse != null &&
                      widget
                          .fundamentalResponse!
                          .data
                          .fundamentals
                          .annualIncome
                          .isNotEmpty
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,
                    matrics: null,
                    fundamentalData: widget.fundamentalResponse!.data,
                    shareData: null,
                    heading: Headings.fundamental,
                  )
                : SizedBox(),

            SizedBox(
              height:
                  widget.matricData != null &&
                      widget.matricData!.data != null &&
                      widget.matricData!.data!.isNotEmpty
                  ? 20.h
                  : 0,
            ),

            widget.matricDataloader == true
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,
                    matrics: null,
                    fundamentalData: null,
                    shareData: null,
                    heading: Headings.loading,
                  )
                : widget.matricData != null &&
                      widget.matricData!.data != null &&
                      widget.matricData!.data!.isNotEmpty
                ? ShareStructureCard(
                    chatRouting: widget.chatRouting!,

                    matrics: widget.matricData!.data,
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
            SizedBox(height: widget.monthlyData != null ? 20.h : 0),

            widget.monthlyDataloader == true
                ? shimmerBox(height: 400, radius: 16)
                : widget.monthlyData != null
                ? WeeklySeasonalityChart(
                    data: widget.monthlyData!,
                    isWeekly: false,
                    weeklyModel: WeeklyModel(),
                  )
                : SizedBox(),
            SizedBox(height: 20.h),

            widget.weeklyDataloader == true
                ? shimmerBox(height: 400, radius: 16)
                : widget.weeklyData != null
                ? WeeklySeasonalityChart(
                    weeklyModel: widget.weeklyData!,
                    isWeekly: true,
                    data: ProbabilityResponse(),
                  )
                : SizedBox(),

            SizedBox(
              height:
                  widget.priceComparisonModel != null &&
                      widget
                              .priceComparisonModel!
                              .data
                              .data['${widget.chatRouting!.symbol}'] !=
                          null &&
                      widget.priceComparisonModel!.data.data['SPY'] != null
                  ? 20.h
                  : 0,
            ),

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
            widget.priceComparisonloader == true
                ? shimmerBox(height: 300, radius: 16)
                : widget.priceComparisonModel != null &&
                      widget.priceComparisonModel!.data.data[widget
                              .chatRouting
                              .symbol] !=
                          null &&
                      widget.priceComparisonModel!.data.data['SPY'] != null
                ? PriceComparisonChart(
                    priceComparisonModel: widget.priceComparisonModel,
                    symbol: widget.chatRouting.symbol,
                    twoCharts: true,
                  )
                : SizedBox(),

            SizedBox(
              height:
                  widget.analyticsRespinseData != null &&
                      widget.analyticsRespinseData!.data.isNotEmpty
                  ? 20.h
                  : 0,
            ),
            widget.analyticsRespinseloader == true
                ? shimmerBox(height: 170, radius: 16)
                : widget.analyticsRespinseData != null &&
                      widget.analyticsRespinseData!.data.isNotEmpty
                ? AnalyticsWidget(
                    chatRouting: widget.chatRouting,
                    data: widget.analyticsRespinseData!.data,
                  )
                : SizedBox(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
