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
import '../../../../domain/model/company_detail/company_detail_model.dart';
import '../../../../domain/model/earning_chart_model/earning_chart_model.dart';
import '../../../../domain/model/earning_report_model/earning_report_model.dart';
import '../../../provider/analytics_provider/analytics_provider.dart';

class EarningContent extends ConsumerStatefulWidget {
  final ChatRouting chatRouting;
  const EarningContent({super.key, required this.chatRouting});

  @override
  ConsumerState<EarningContent> createState() => _EarningContentState();
}

class _EarningContentState extends ConsumerState<EarningContent> {
  //raza: Wrong way to use provider/ Watch provider inside the build
  bool companyDetailShimmer = true;
  bool earningChartModelLoader = true;
  bool earningReportShimmer = true;
  CompanyDetailModel? companyDetailModel;
  EarningChartModel? earningChartModel;
  EarningReportsModel? earningReportsModel;

  earningChartData(String symbol) {
    try {
      earningChartModelLoader = true;
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
        symbol: widget.chatRouting!.symbol,
        interval: IntervalEnum.quarterly.value,
        startDate: startDateString,
        endDate: endDateString,
      );
      var res = ref.watch(earningChartDataProvider(overview));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              earningChartModel = value;
              earningChartModelLoader = false;
            } else {
              earningChartModelLoader = false;
            }
          }
        case AsyncError(:final error):
          earningChartModelLoader = false;
        case AsyncLoading():
          earningChartModelLoader = true;
      }
    } catch (e) {
      print(e);
      setState(() {
        earningChartModelLoader = false;
      });
    }
  }

  earningReportData(String symbol) {
    try {
      earningReportShimmer = true;
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
      var res = ref.watch(earningReportDataProvider(overview));
      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              earningReportsModel = value;
              earningReportShimmer = false;
            } else {
              earningReportShimmer = false;
            }
          }
        case AsyncError(:final error):
          earningReportShimmer = false;
        case AsyncLoading():
          earningReportShimmer = true;
      }
    } catch (e) {
      earningReportShimmer = false;

      print(e);
    }
  }

  getCompanyDetail(SymbolDto symbol) {
    try {
      companyDetailShimmer = true;

      var res = ref.watch(companyDetailProvider(symbol));

      switch (res) {
        case AsyncData(:final value):
          {
            if (value != null) {
              companyDetailModel = value;
              companyDetailShimmer = false;
            }
          }
        case AsyncError(:final error):
          companyDetailShimmer = false;
        case AsyncLoading():
          companyDetailShimmer = true;
      }
    } catch (e) {
      setState(() {
        companyDetailShimmer = false;
      });
      print(e);
    }
  }

  fourthTap() {
    if (earningChartModel == null) {
      try {
        earningChartData(widget.chatRouting!.symbol);
      } catch (e) {
        print(e);
      }
    }
    // if (companyDetailModel == null) {
    //   try {
    //     getCompanyDetail(SymbolDto(symbol: widget.chatRouting!.symbol));
    //   } catch (e) {
    //     print(e);
    //   }
    // }
    // if (earningReportsModel == null) {
    //   try {
    //     earningReportData(widget.chatRouting!.symbol);
    //   } catch (e) {
    //     print(e);
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    // fourthTap();
    earningChartData(widget.chatRouting.symbol);
    earningReportData(widget.chatRouting.symbol);
    getCompanyDetail(SymbolDto(symbol: widget.chatRouting.symbol));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          // reserve fixed height for the chart area so loading/empty states don't collapse
          earningChartModelLoader == true
              ? CashDebtShimmer()
              : earningChartModel != null && earningChartModel!.data.isNotEmpty
              ? QuarterlyPerformanceChart(data: earningChartModel!.data)
              : SizedBox(height: 260),
          // SizedBox(height: 20),
          // QuarterlyPerformanceChartShimmer(),
          SizedBox(height: 20),
          // reserve space for earnings table
          earningReportShimmer == true
              ? TableShimmer(title: "Earnings")
              : earningReportsModel != null &&
                    earningReportsModel!.data.isNotEmpty
              ? EarningsTable(data: earningReportsModel!.data)
              : SizedBox(height: 200),
          SizedBox(height: 20),
          // reserve space for earnings trend
          companyDetailShimmer == true
              ? TableShimmer(title: "Earnings Trend")
              : companyDetailModel != null &&
                    companyDetailModel!.data.fundamentalsEarningsTrend != null
              ? EarningsTrend(
                  title: "Earnings Trend",
                  data: companyDetailModel!.data.fundamentalsEarningsTrend,
                )
              : SizedBox(height: 140),
        ],
      ),
    );
  }
}

// ============================================================================
// EarningContentV1 - Properly refactored with correct Riverpod usage
// ============================================================================

class EarningContentV1 extends ConsumerStatefulWidget {
  final ChatRouting chatRouting;
  const EarningContentV1({super.key, required this.chatRouting});

  @override
  ConsumerState<EarningContentV1> createState() => _EarningContentV1State();
}

class _EarningContentV1State extends ConsumerState<EarningContentV1> {
  // Helper method to calculate date range (2 years back)
  ChartRequestDto _buildChartRequestDto(String symbol) {
    final now = DateTime.now().toUtc();
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

    return ChartRequestDto(
      symbol: symbol,
      interval: IntervalEnum.quarterly.value,
      startDate: startDateString,
      endDate: endDateString,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Calculate date range for chart requests
    final chartRequestDto = _buildChartRequestDto(widget.chatRouting.symbol);

    // Watch all providers in build method
    final earningChartState = ref.watch(
      earningChartDataProvider(chartRequestDto),
    );
    // print(earningChartState.value);

    final earningReportState = ref.watch(
      earningReportDataProvider(chartRequestDto),
    );
    print(earningReportState.value);
    final companyDetailState = ref.watch(
      companyDetailProvider(SymbolDto(symbol: widget.chatRouting.symbol)),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),

          // Earning Chart
          switch (earningChartState) {
            AsyncData(:final value)
                when value != null && value.data.isNotEmpty =>
              QuarterlyPerformanceChart(data: value.data),
            AsyncLoading() => CashDebtShimmer(),
            AsyncError() => SizedBox(height: 260),
            _ => SizedBox(height: 260),
          },
          SizedBox(height: 20),

          // Earnings Table
          switch (earningReportState) {
            AsyncData(:final value)
                when value != null && value.data.isNotEmpty =>
              EarningsTable(data: value.data),
            AsyncLoading() => TableShimmer(title: "Earnings"),
            AsyncError() => SizedBox(height: 200),
            _ => SizedBox(height: 200),
          },
          SizedBox(height: 20),

          // Earnings Trend
          switch (companyDetailState) {
            AsyncData(:final value)
                when value != null &&
                    value.data.fundamentalsEarningsTrend != null =>
              EarningsTrend(
                title: "Earnings Trend",
                data: value.data.fundamentalsEarningsTrend,
              ),
            AsyncLoading() => TableShimmer(title: "Earnings Trend"),
            AsyncError() => SizedBox(height: 140),
            _ => SizedBox(height: 140),
          },
        ],
      ),
    );
  }
}
