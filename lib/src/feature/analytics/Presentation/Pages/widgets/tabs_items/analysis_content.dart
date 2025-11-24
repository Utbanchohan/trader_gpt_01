import 'package:flutter/material.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analysis_table.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_candle_stick_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/date_picker_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_shimmer_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/table_shimmer.dart';

import '../../../../../../shared/widgets/CustomCandleChartShimmer .dart';

class AnalysisContent extends StatefulWidget {
  final bool chartLoader;
  final AnalysisDataModel? analysisDataModel;
  final void Function(DateTime toDate, DateTime fromDate) onPressed;
  final void Function(String interval) onPressedAnalysis;
  final String selectedItemCandleAnalysis;
  final dynamic id;

  const AnalysisContent({
    super.key,
    required this.chartLoader,
    required this.analysisDataModel,
    required this.onPressed,
    required this.onPressedAnalysis,
    required this.selectedItemCandleAnalysis,
    required this.id,
  });

  @override
  State<AnalysisContent> createState() => _AnalysisContentState();
}

class _AnalysisContentState extends State<AnalysisContent> {
  DateTime? fromDate;
  DateTime? toDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      key: widget.id,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateRangePickerWidget(
          loading: widget.chartLoader,
          onShowPressed: (from, to) async {
            fromDate = from!;
            toDate = to!;
            widget.onPressed(toDate!, fromDate!);
          },
        ),

        SizedBox(height: 20),
        widget.chartLoader == true
            ? CashDebtShimmer()
            : widget.analysisDataModel != null &&
                  widget.analysisDataModel!.data != null &&
                  widget.analysisDataModel!.data!.chart != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomCandleChart(
                  selectedItem: widget.selectedItemCandleAnalysis ?? "H",
                  key: UniqueKey(),
                  name: "",
                  data: widget.analysisDataModel!.data!.chart!,
                  onPressed: (val) async {
                    widget.onPressedAnalysis(val);
                  },
                ),
              )
            : CustomCandleChartShimmer(),
        SizedBox(height: 20),
        widget.chartLoader == true
            ? TableShimmer(title: "Earnings Trend")
            : widget.analysisDataModel != null &&
                  widget.analysisDataModel!.data != null &&
                  widget.analysisDataModel!.data!.eodData != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AnalysisTable(
                  title: "Earnings Trend",
                  eodData: widget.analysisDataModel!.data!.eodData,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
