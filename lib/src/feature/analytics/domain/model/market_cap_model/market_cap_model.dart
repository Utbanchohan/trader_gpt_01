import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_cap_model.freezed.dart';
part 'market_cap_model.g.dart';

@freezed
abstract class MarketCapResponse with _$MarketCapResponse {
  const factory MarketCapResponse({
    required List<MarketCapData>? data,
    required String? msg,
    required int? status,
    required dynamic errors,
  }) = _MarketCapResponse;

  factory MarketCapResponse.fromJson(Map<String, dynamic> json) =>
      _$MarketCapResponseFromJson(json);
}

@freezed
abstract class MarketCapData with _$MarketCapData {
  const factory MarketCapData({
    required String? symbol,
    @JsonKey(name: 'market_cap') required num? marketCap,
    required String? date,
    @JsonKey(name: 'coin_gecko_id') required String? coinGeckoId,
  }) = _MarketCapData;

  factory MarketCapData.fromJson(Map<String, dynamic> json) =>
      _$MarketCapDataFromJson(json);
}
