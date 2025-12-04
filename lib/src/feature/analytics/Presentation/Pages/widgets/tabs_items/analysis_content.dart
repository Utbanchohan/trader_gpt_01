import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analysis_table.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/analytics_candle_stick_chart.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/date_picker_widgets.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/shared/widgets/cashdebt_shimmer_widgets.dart';
import 'package:trader_gpt/src/shared/widgets/table_shimmer.dart';

import '../../../../../../shared/widgets/CustomCandleChartShimmer .dart';
import '../../../../../chat/domain/model/chat_stock_model.dart';
import '../../../../data/dto/analysis_dto/analysis_dto.dart';
import '../../../provider/analytics_provider/analytics_provider.dart';

class AnalysisContent extends ConsumerStatefulWidget {
  final ChatRouting chatRouting;

  const AnalysisContent({super.key, required this.chatRouting});

  @override
  ConsumerState<AnalysisContent> createState() => _AnalysisContentState();
}

class _AnalysisContentState extends ConsumerState<AnalysisContent> {
  bool chartLoader = true;
  AnalysisDataModel? analysisDataModel;
  String? selectedItemCandleAnalysis;

  DateTime? fromDate;
  DateTime? toDate;

  getAnalysisData(
    String symbol,
    IntervalEnum interval, {
    DateTime? now1,
    DateTime? startDate1,
  }) async {
    chartLoader = true;
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
    chartLoader = false;
    var res = ref.watch(analysisDataProvider(overview));
    switch (res) {
      case AsyncData(:final value):
        {
          if (value != null) {
            chartLoader = false;
            analysisDataModel = value;
          } else {
            chartLoader = false;
          }
        }
      case AsyncError(:final error):
        chartLoader = false;
      case AsyncLoading():
        chartLoader = true;
    }
  }

  fifthTap() async {
    if (analysisDataModel == null) {
      try {
        getAnalysisData(widget.chatRouting!.symbol, IntervalEnum.daily);
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    // fifthTap();
    getAnalysisData(widget.chatRouting.symbol, IntervalEnum.daily);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateRangePickerWidget(
          loading: chartLoader,
          onShowPressed: (from, to) async {
            fromDate = from!;
            toDate = to!;
            getAnalysisData(
              widget.chatRouting!.symbol,
              IntervalEnum.daily,
              now1: toDate,
              startDate1: fromDate,
            );
          },
        ),

        SizedBox(height: 20),
        chartLoader == true
            ? CashDebtShimmer()
            : analysisDataModel != null &&
                  analysisDataModel!.data != null &&
                  analysisDataModel!.data!.chart != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CustomCandleChart(
                  selectedItem: selectedItemCandleAnalysis ?? "H",
                  key: UniqueKey(),
                  name: "",
                  data: analysisDataModel!.data!.chart!,
                  onPressed: (val) async {
                    getAnalysisData(
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
        chartLoader == true
            ? TableShimmer(title: "Earnings Trend")
            : analysisDataModel != null &&
                  analysisDataModel!.data != null &&
                  analysisDataModel!.data!.eodData != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AnalysisTable(
                  title: "Earnings Trend",
                  eodData: analysisDataModel!.data!.eodData,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
