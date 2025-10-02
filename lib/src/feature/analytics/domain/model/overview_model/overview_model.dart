import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_model.freezed.dart';
part 'overview_model.g.dart';

@freezed
abstract class StockResponse with _$StockResponse {
  const factory StockResponse({
    required OverviewData data,
    String? msg,
    int? status,
    dynamic errors,
  }) = _StockResponse;

  factory StockResponse.fromJson(Map<String, dynamic> json) =>
      _$StockResponseFromJson(json);
}

@freezed
abstract class OverviewData with _$OverviewData {
  const factory OverviewData({
    double? Open,
    double? High,
    double? Low,
    double? Close,
    double? previousClose,
    double? ThreeDaysChange,
    double? OneWeekChange,
    double? OneMonthChange,
    String? TotalVolume,
    String? AverageVolume,
    double? open_pos,
    double? close_pos,
    String? Sector,
    String? Industry,
    String? MarketCapitalization,
    String? SharesOutstanding,
    double? FiftyTwoWeekHigh,
    double? FiftyTwoWeekLow,
    double? AfterHours,
    double? AfterHoursPercentage,
    String? Exchange,
    String? MarketCapClassification,
  }) = _OverviewData;

  factory OverviewData.fromJson(Map<String, dynamic> json) =>
      _$OverviewDataFromJson(json);
}
