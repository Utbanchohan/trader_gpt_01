import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_data_login.freezed.dart';
part 'market_data_login.g.dart';

@freezed
abstract class MarketDataLogin with _$MarketDataLogin {
  const factory MarketDataLogin({
    required int status,
    required String msg,
    required AuthData data,
  }) = _MarketDataLogin;

  factory MarketDataLogin.fromJson(Map<String, dynamic> json) =>
      _$MarketDataLoginFromJson(json);
}

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "expires_in") required int expiresIn,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "refresh_expiry") required int refreshExpiry,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
