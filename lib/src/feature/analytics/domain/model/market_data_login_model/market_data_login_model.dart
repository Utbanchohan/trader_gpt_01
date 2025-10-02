import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_data_login_model.freezed.dart';
part 'market_data_login_model.g.dart';

@freezed
abstract class MarketDataLoginModel with _$MarketDataLoginModel {
  const factory MarketDataLoginModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _MarketDataLoginModel;

  factory MarketDataLoginModel.fromJson(Map<String, dynamic> json) =>
      _$MarketDataLoginModelFromJson(json);
}
