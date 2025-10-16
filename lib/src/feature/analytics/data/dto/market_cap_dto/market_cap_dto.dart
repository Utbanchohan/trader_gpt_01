import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_cap_dto.freezed.dart';
part 'market_cap_dto.g.dart';

@freezed
abstract class MarketCapRequest with _$MarketCapRequest {
  const factory MarketCapRequest({
    required String symbol,
    required String interval,
  }) = _MarketCapRequest;

  factory MarketCapRequest.fromJson(Map<String, dynamic> json) =>
      _$MarketCapRequestFromJson(json);
}
