import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/earning_chart.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';

import '../../../../../../shared/widgets/EarningsTrend_widgets.dart';
import '../../../../../../shared/widgets/cashdebt_shimmer_widgets.dart';
import '../../../../../../shared/widgets/earningsTable_widgets.dart';
import '../../../../../../shared/widgets/table_shimmer.dart';
import '../../../../data/dto/analysis_dto/analysis_dto.dart';
import '../../../../data/dto/overview_dto/overview_dto.dart';
import '../../../provider/analytics_provider/analytics_provider.dart';

// class EarningContent extends ConsumerStatefulWidget {
//   final ChatRouting chatRouting;
//
//   const EarningContent({super.key, required this.chatRouting});
//
//   @override
//   ConsumerState<EarningContent> createState() => _EarningContentState();
// }
//
// class _EarningContentState extends ConsumerState<EarningContent> {
//   //raza: Wrong way to use provider/ Watch provider inside the build
//   bool companyDetailShimmer = true;
//   bool earningChartModelLoader = true;
//   bool earningReportShimmer = true;
//   CompanyDetailModel? companyDetailModel;
//   EarningChartModel? earningChartModel;
//   EarningReportsModel? earningReportsModel;
//
//   earningChartData(String symbol) {
//     try {
//       earningChartModelLoader = true;
//       final now = DateTime.now().toUtc();
//
//       // Subtract 2 years for startDate
//       final startDate = DateTime.utc(
//         now.year - 2,
//         now.month,
//         now.day,
//         now.hour,
//         now.minute,
//         now.second,
//         now.millisecond,
//       );
//       final endDateString = now.toIso8601String();
//       final startDateString = startDate.toIso8601String();
//       ChartRequestDto overview = ChartRequestDto(
//         symbol: widget.chatRouting!.symbol,
//         interval: IntervalEnum.quarterly.value,
//         startDate: startDateString,
//         endDate: endDateString,
//       );
//       var res = ref.watch(earningChartDataProvider(overview));
//       switch (res) {
//         case AsyncData(:final value):
//           {
//             if (value != null) {
//               earningChartModel = value;
//               earningChartModelLoader = false;
//             } else {
//               earningChartModelLoader = false;
//             }
//           }
//         case AsyncError(:final error):
//           earningChartModelLoader = false;
//         case AsyncLoading():
//           earningChartModelLoader = true;
//       }
//     } catch (e) {
//       print(e);
//       setState(() {
//         earningChartModelLoader = false;
//       });
//     }
//   }
//
//   earningReportData(String symbol) {
//     try {
//       earningReportShimmer = true;
//       final now = DateTime.now().toUtc();
//
//       // Subtract 2 years for startDate
//       final startDate = DateTime.utc(
//         now.year - 2,
//         now.month,
//         now.day,
//         now.hour,
//         now.minute,
//         now.second,
//         now.millisecond,
//       );
//       final endDateString = now.toIso8601String();
//       final startDateString = startDate.toIso8601String();
//       ChartRequestDto overview = ChartRequestDto(
//         symbol: symbol,
//         interval: IntervalEnum.quarterly.value,
//         startDate: startDateString,
//         endDate: endDateString,
//       );
//       var res = ref.watch(earningReportDataProvider(overview));
//       switch (res) {
//         case AsyncData(:final value):
//           {
//             if (value != null) {
//               earningReportsModel = value;
//               earningReportShimmer = false;
//             } else {
//               earningReportShimmer = false;
//             }
//           }
//         case AsyncError(:final error):
//           earningReportShimmer = false;
//         case AsyncLoading():
//           earningReportShimmer = true;
//       }
//     } catch (e) {
//       earningReportShimmer = false;
//
//       print(e);
//     }
//   }
//
//   getCompanyDetail(SymbolDto symbol) {
//     try {
//       companyDetailShimmer = true;
//
//       var res = ref.watch(companyDetailProvider(symbol));
//
//       switch (res) {
//         case AsyncData(:final value):
//           {
//             if (value != null) {
//               companyDetailModel = value;
//               companyDetailShimmer = false;
//             }
//           }
//         case AsyncError(:final error):
//           companyDetailShimmer = false;
//         case AsyncLoading():
//           companyDetailShimmer = true;
//       }
//     } catch (e) {
//       setState(() {
//         companyDetailShimmer = false;
//       });
//       print(e);
//     }
//   }
//
//   fourthTap() {
//     if (earningChartModel == null) {
//       try {
//         earningChartData(widget.chatRouting!.symbol);
//       } catch (e) {
//         print(e);
//       }
//     }
//     // if (companyDetailModel == null) {
//     //   try {
//     //     getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
//     //   } catch (e) {
//     //     print(e);
//     //   }
//     // }
//     // if (earningReportsModel == null) {
//     //   try {
//     //     earningReportData(widget.chatRouting!.symbol);
//     //   } catch (e) {
//     //     print(e);
//     //   }
//     // }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // fourthTap();
//     earningChartData(widget.chatRouting.symbol);
//     earningReportData(widget.chatRouting.symbol);
//     getCompanyDetail(SymbolDto(symbol: widget.chatRouting.symbol));
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 15),
//           // reserve fixed height for the chart area so loading/empty states don't collapse
//           earningChartModelLoader == true
//               ? CashDebtShimmer()
//               : earningChartModel != null && earningChartModel!.data.isNotEmpty
//               ? QuarterlyPerformanceChart(data: earningChartModel!.data)
//               : SizedBox(height: 260),
//           // SizedBox(height: 20),
//           // QuarterlyPerformanceChartShimmer(),
//           SizedBox(height: 20),
//           // reserve space for earnings table
//           earningReportShimmer == true
//               ? TableShimmer(title: "Earnings")
//               : earningReportsModel != null &&
//                     earningReportsModel!.data.isNotEmpty
//               ? EarningsTable(data: earningReportsModel!.data)
//               : SizedBox(height: 200),
//           SizedBox(height: 20),
//           // reserve space for earnings trend
//           companyDetailShimmer == true
//               ? TableShimmer(title: "Earnings Trend")
//               : companyDetailModel != null &&
//                     companyDetailModel!.data.fundamentalsEarningsTrend != null
//               ? EarningsTrend(
//                   title: "Earnings Trend",
//                   data: companyDetailModel!.data.fundamentalsEarningsTrend,
//                 )
//               : SizedBox(height: 140),
//         ],
//       ),
//     );
//   }
// }

// ============================================================================
// EarningContentV1 - Properly refactored with correct Riverpod usage
// ============================================================================

class EarningContentV1 extends ConsumerWidget {
  final ChatRouting chatRouting;

  const EarningContentV1({super.key, required this.chatRouting});

  // Helper method to calculate date range (2 years back)
  // Uses date-only (no time component) to ensure stable provider keys
  ChartRequestDto _buildChartRequestDto(String symbol) {
    final now = DateTime.now().toUtc();
    // Use date-only to avoid creating new provider instances on every build
    final endDate = DateTime.utc(now.year, now.month, now.day);
    final startDate = DateTime.utc(now.year - 2, now.month, now.day);

    // Format as date-only strings for stable provider keys
    final endDateString = endDate.toIso8601String();
    final startDateString = startDate.toIso8601String();

    return ChartRequestDto(
      symbol: symbol,
      interval: IntervalEnum.quarterly.value,
      startDate: startDateString,
      endDate: endDateString,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Calculate date range for chart requests - now stable across builds
    final chartRequestDto = _buildChartRequestDto(chatRouting.symbol);

    // Watch all providers in build method
    final earningChartState = ref.watch(
      earningChartDataProvider(chartRequestDto),
    );

    final earningReportState = ref.watch(
      earningReportDataProvider(chartRequestDto),
    );

    final companyDetailState = ref.watch(
      companyDetailProvider(SymbolDto(symbol: chatRouting.symbol)),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          earningChartState.when(
            data: (data) {
              if (data != null && data.data.isNotEmpty) {
                return QuarterlyPerformanceChart(data: data.data);
              } else {
                return SizedBox(height: 260);
              }
            },
            error: (error, stackTrace) => SizedBox(height: 260),
            loading: () => CashDebtShimmer(),
          ),
          SizedBox(height: 20),
          earningReportState.when(
            data: (data) {
              if (data != null && data.data.isNotEmpty) {
                return EarningsTable(data: data.data);
              } else {
                return SizedBox(height: 200);
              }
            },
            error: (error, stackTrace) {
              return SizedBox(height: 200);
            },
            loading: () {
              return TableShimmer(title: "Earnings");
            },
          ),
          SizedBox(height: 20),
          companyDetailState.when(
            data: (data) {
              if (data != null && data.data.fundamentalsEarningsTrend != null) {
                return EarningsTrend(
                  title: "Earnings Trend",
                  data: data.data.fundamentalsEarningsTrend,
                );
              } else {
                return SizedBox(height: 140);
              }
            },
            error: (error, stackTrace) {
              return SizedBox(height: 140);
            },
            loading: () {
              return TableShimmer(title: "Earnings Trend");
            },
          ),
        ],
      ),
    );
  }
}
