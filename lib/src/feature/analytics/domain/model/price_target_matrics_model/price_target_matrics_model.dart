import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_target_matrics_model.freezed.dart';
part 'price_target_matrics_model.g.dart';

@freezed
abstract class PriceTargetMatrics with _$PriceTargetMatrics {
  const factory PriceTargetMatrics({
    required List<PriceTargetData> data,
    String? msg,
    int? status,
  }) = _PriceTargetMatrics;

  factory PriceTargetMatrics.fromJson(Map<String, dynamic> json) =>
      _$PriceTargetMatricsFromJson(json);
}

@freezed
abstract class PriceTargetData with _$PriceTargetData {
  const factory PriceTargetData({
    required String symbol,
    @JsonKey(name: 'target_consensus') double? targetConsensus,
    double? high,
    double? low,
    double? median,
    @JsonKey(name: 'close_price') double? closePrice,
    @JsonKey(name: 'last_updated_at') String? lastUpdatedAt,
    @JsonKey(name: 'high_percentage') double? highPercentage,
    @JsonKey(name: 'low_percentage') double? lowPercentage,
    @JsonKey(name: 'median_percentage') double? medianPercentage,
  }) = _PriceTargetData;

  factory PriceTargetData.fromJson(Map<String, dynamic> json) =>
      _$PriceTargetDataFromJson(json);
}
