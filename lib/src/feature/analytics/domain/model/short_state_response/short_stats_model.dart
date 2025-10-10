import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_stats_model.freezed.dart';
part 'short_stats_model.g.dart';

@freezed
abstract class ShortStatsResponse with _$ShortStatsResponse {
  const factory ShortStatsResponse({
    required int status,
    required String msg,
    ShortStatsData? data,
    dynamic errors,
  }) = _ShortStatsResponse;

  factory ShortStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShortStatsResponseFromJson(json);
}

@freezed
abstract class ShortStatsData with _$ShortStatsData {
  const factory ShortStatsData({
    required int SharesOutstanding,
    required int SharesFloat,
    required double PercentInsiders,
    required double PercentInstitutions,
    double? SharesShort,
    double? SharesShortPriorMonth,
    double? ShortRatio,
    double? ShortPercentOutstanding,
    double? ShortPercentFloat,
    @JsonKey(name: 'stock_type') required int stockType,
  }) = _ShortStatsData;

  factory ShortStatsData.fromJson(Map<String, dynamic> json) =>
      _$ShortStatsDataFromJson(json);
}
