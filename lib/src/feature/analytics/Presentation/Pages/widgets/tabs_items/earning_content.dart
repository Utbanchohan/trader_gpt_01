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
