// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_data_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketDataLoginModel _$MarketDataLoginModelFromJson(
  Map<String, dynamic> json,
) => _MarketDataLoginModel(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
);

Map<String, dynamic> _$MarketDataLoginModelToJson(
  _MarketDataLoginModel instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
};
