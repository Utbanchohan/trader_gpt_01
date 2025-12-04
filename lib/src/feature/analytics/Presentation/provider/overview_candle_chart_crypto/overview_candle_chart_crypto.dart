import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';

import '../../../domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';

part 'overview_candle_chart_crypto.g.dart';

@riverpod
class OverviewCandleChartCrypto extends _$OverviewCandleChartCrypto {
  @override
  Future<OverviewCandleChartModel> build() async {
    return state.value!;
  }
}

@riverpod
Future<OverviewCandleResponse> getOverviewCandleChartCrypto(
  Ref ref,
  String symbol,
  String interval,
  String start_date,
  String end_date,
  String sub_points,
  String data_point,
) async {
  final res = await ref
      .read(overviewRepositoryPriceStream)
      .cryptoCandleChart(
        symbol,
        interval,
        start_date,
        end_date,
        sub_points,
        data_point,
      );

  return res;
}
