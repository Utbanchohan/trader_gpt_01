// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_data_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketDataLogin _$MarketDataLoginFromJson(Map<String, dynamic> json) =>
    _MarketDataLogin(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: AuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarketDataLoginToJson(_MarketDataLogin instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_AuthData _$AuthDataFromJson(Map<String, dynamic> json) => _AuthData(
  accessToken: json['access_token'] as String,
  tokenType: json['token_type'] as String,
  expiresIn: (json['expires_in'] as num).toInt(),
  refreshToken: json['refresh_token'] as String,
  refreshExpiry: (json['refresh_expiry'] as num).toInt(),
);

Map<String, dynamic> _$AuthDataToJson(_AuthData instance) => <String, dynamic>{
  'access_token': instance.accessToken,
  'token_type': instance.tokenType,
  'expires_in': instance.expiresIn,
  'refresh_token': instance.refreshToken,
  'refresh_expiry': instance.refreshExpiry,
};
