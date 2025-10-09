import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';

import '../../../domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';

part 'overview_candle_chart.g.dart';

@riverpod
class OverviewCandleChart extends _$OverviewCandleChart {
  @override
  Future<OverviewCandleChartModel> build() async {
    return state.value!;
  }

  Future<List<OverviewCandleChartModel>> overviewCandleChart(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) async {
    final res = await ref
        .read(overviewRepositoryPriceStream)
        .overviewCandleChart(
          symbol,
          interval,
          start_date,
          end_date,
          sub_points,
          data_point,
        );

    return res;
  }
}
