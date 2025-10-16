// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_cap_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketCapRequest _$MarketCapRequestFromJson(Map<String, dynamic> json) =>
    _MarketCapRequest(
      symbol: json['symbol'] as String,
      interval: json['interval'] as String,
    );

Map<String, dynamic> _$MarketCapRequestToJson(_MarketCapRequest instance) =>
    <String, dynamic>{'symbol': instance.symbol, 'interval': instance.interval};
