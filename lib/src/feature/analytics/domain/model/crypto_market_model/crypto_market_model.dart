import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_market_model.freezed.dart';
part 'crypto_market_model.g.dart';

@freezed
abstract class CryptoMarketModel with _$CryptoMarketModel {
  const factory CryptoMarketModel({
    required List<ExchangeData> data,
    String? msg,
    String? status,
    String? errors,
  }) = _CryptoMarketModel;

  factory CryptoMarketModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoMarketModelFromJson(json);
}

@freezed
abstract class ExchangeData with _$ExchangeData {
  const factory ExchangeData({
    required String exchange,
    required String pair,
    required double price,
    required double spread,
    @JsonKey(name: 'volume_24hrs') dynamic volume24hrs,
    @JsonKey(name: 'last_updated_at') String? lastUpdatedAt,
    @JsonKey(name: 'trust_score') String? trustScore,
    @JsonKey(name: 'pos_two_percent_depth') String? posTwoPercentDepth,
    @JsonKey(name: 'neg_two_percent_depth') String? negTwoPercentDepth,
  }) = _ExchangeData;

  factory ExchangeData.fromJson(Map<String, dynamic> json) =>
      _$ExchangeDataFromJson(json);
}
