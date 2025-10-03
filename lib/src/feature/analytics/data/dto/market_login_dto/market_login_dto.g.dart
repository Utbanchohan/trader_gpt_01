// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketLoginDto _$MarketLoginDtoFromJson(Map<String, dynamic> json) =>
    _MarketLoginDto(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$MarketLoginDtoToJson(_MarketLoginDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
