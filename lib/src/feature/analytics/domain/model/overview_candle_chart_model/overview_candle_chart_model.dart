import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_candle_chart_model.freezed.dart';
part 'overview_candle_chart_model.g.dart';

@freezed
abstract class OverviewCandleResponse with _$OverviewCandleResponse {
  const factory OverviewCandleResponse({
    required bool isSuccess,
    required String message,
    required int count,
    required List<OverviewCandleChartModel>
    data, // You can replace dynamic with your data model
  }) = _OverviewCandleResponse;

  factory OverviewCandleResponse.fromJson(Map<String, dynamic> json) =>
      _$OverviewCandleResponseFromJson(json);
}

@freezed
abstract class OverviewCandleChartModel with _$OverviewCandleChartModel {
  const factory OverviewCandleChartModel({
    required String symbol,
    required double open,
    required double high,
    required double low,
    required double close,
    required int volume,
    required DateTime timestamp,
  }) = _OverviewCandleChartModel;

  factory OverviewCandleChartModel.fromJson(Map<String, dynamic> json) =>
      _$OverviewCandleChartModelFromJson(json);
}
