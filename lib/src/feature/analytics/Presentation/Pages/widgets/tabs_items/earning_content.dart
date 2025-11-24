import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/earning_chart.dart';

import '../../../../../../shared/widgets/EarningsTrend_widgets.dart';
import '../../../../../../shared/widgets/cashdebt_shimmer_widgets.dart';
import '../../../../../../shared/widgets/earningsTable_widgets.dart';
import '../../../../../../shared/widgets/table_shimmer.dart';
import '../../../../domain/model/company_detail/company_detail_model.dart';
import '../../../../domain/model/earning_chart_model/earning_chart_model.dart';
import '../../../../domain/model/earning_report_model/earning_report_model.dart';

class EarningContent extends ConsumerStatefulWidget {
  final bool companyDetailShimmer;
  final dynamic id;
  final bool earningChartModelLoader;
  final bool earningReportShimmer;
  final CompanyDetailModel? companyDetailModel;
  final EarningChartModel? earningChartModel;
  final EarningReportsModel? earningReportsModel;

  const EarningContent({
    super.key,
    required this.companyDetailShimmer,
    required this.earningReportShimmer,
    required this.earningChartModelLoader,
    this.companyDetailModel,
    this.earningChartModel,
    this.earningReportsModel,
    required this.id,
  });

  @override
  ConsumerState<EarningContent> createState() => _EarningContentState();
}

class _EarningContentState extends ConsumerState<EarningContent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: widget.id,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            widget.earningChartModelLoader == true
                ? CashDebtShimmer()
                : widget.earningChartModel != null &&
                      widget.earningChartModel!.data.isNotEmpty
                ? QuarterlyPerformanceChart(
                    data: widget.earningChartModel!.data,
                  )
                : SizedBox(),
            // SizedBox(height: 20),
            // QuarterlyPerformanceChartShimmer(),
            SizedBox(height: 20),
            widget.earningReportShimmer == true
                ? TableShimmer(title: "Earnings")
                : widget.earningReportsModel != null &&
                      widget.earningReportsModel!.data.isNotEmpty
                ? EarningsTable(data: widget.earningReportsModel!.data)
                : SizedBox(),
            SizedBox(height: 20),
            widget.companyDetailShimmer == true
                ? TableShimmer(title: "Earnings Trend")
                : widget.companyDetailModel != null &&
                      widget
                              .companyDetailModel!
                              .data
                              .fundamentalsEarningsTrend !=
                          null
                ? EarningsTrend(
                    title: "Earnings Trend",
                    data: widget
                        .companyDetailModel!
                        .data
                        .fundamentalsEarningsTrend,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
