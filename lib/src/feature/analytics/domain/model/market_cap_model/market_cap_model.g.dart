// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_cap_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarketCapResponse _$MarketCapResponseFromJson(Map<String, dynamic> json) =>
    _MarketCapResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MarketCapData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$MarketCapResponseToJson(_MarketCapResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_MarketCapData _$MarketCapDataFromJson(Map<String, dynamic> json) =>
    _MarketCapData(
      symbol: json['symbol'] as String?,
      marketCap: json['market_cap'] as num?,
      date: json['date'] as String?,
      coinGeckoId: json['coin_gecko_id'] as String?,
    );

Map<String, dynamic> _$MarketCapDataToJson(_MarketCapData instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'market_cap': instance.marketCap,
      'date': instance.date,
      'coin_gecko_id': instance.coinGeckoId,
    };
