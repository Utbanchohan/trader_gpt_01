import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@freezed
abstract class AnalystRatingResponse with _$AnalystRatingResponse {
  const factory AnalystRatingResponse({
    required List<AnalystRatingData> data,
    required String msg,
    required int status,
    dynamic errors,
  }) = _AnalystRatingResponse;

  factory AnalystRatingResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalystRatingResponseFromJson(json);
}

@freezed
abstract class AnalystRatingData with _$AnalystRatingData {
  const factory AnalystRatingData({
    required String symbol,
    required String consensus,
    @JsonKey(name: 'analyst_count') required int analystCount,
    @JsonKey(name: 'strong_buy') required int strongBuy,
    required int buy,
    required int hold,
    required int sell,
    @JsonKey(name: 'strong_sell') required int strongSell,
    @JsonKey(name: 'last_updated_at') required String lastUpdatedAt,
  }) = _AnalystRatingData;

  factory AnalystRatingData.fromJson(Map<String, dynamic> json) =>
      _$AnalystRatingDataFromJson(json);
}
