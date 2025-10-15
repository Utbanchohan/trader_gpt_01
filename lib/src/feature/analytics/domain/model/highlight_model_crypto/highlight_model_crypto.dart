import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_model_crypto.freezed.dart';
part 'highlight_model_crypto.g.dart';

@freezed
abstract class HighlightResponse with _$HighlightResponse {
  const factory HighlightResponse({
    required List<HighlightData>? data,
    required String? msg,
    required int? status,
    required dynamic errors,
  }) = _HighlightResponse;

  factory HighlightResponse.fromJson(Map<String, dynamic> json) =>
      _$HighlightResponseFromJson(json);
}

@freezed
abstract class HighlightData with _$HighlightData {
  const factory HighlightData({
    num? volume,
    @JsonKey(name: 'circulating_supply') num? circulatingSupply,
    @JsonKey(name: 'total_supply') num? totalSupply,
    @JsonKey(name: 'market_cap_fdv_ratio') num? marketCapFdvRatio,
    @JsonKey(name: 'max_supply') num? maxSupply,
    @JsonKey(name: 'previous_close_price') num? previousClosePrice,
    @JsonKey(name: 'market_captilization') num? marketCapitalization,
    @JsonKey(name: 'diluted_market_cap') num? dilutedMarketCap,
  }) = _HighlightData;

  factory HighlightData.fromJson(Map<String, dynamic> json) =>
      _$HighlightDataFromJson(json);
}
