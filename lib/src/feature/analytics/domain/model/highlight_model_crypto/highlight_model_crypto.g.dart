// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_model_crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HighlightResponse _$HighlightResponseFromJson(Map<String, dynamic> json) =>
    _HighlightResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HighlightData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$HighlightResponseToJson(_HighlightResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_HighlightData _$HighlightDataFromJson(Map<String, dynamic> json) =>
    _HighlightData(
      volume: json['volume'] as num?,
      circulatingSupply: json['circulating_supply'] as num?,
      totalSupply: json['total_supply'] as num?,
      marketCapFdvRatio: json['market_cap_fdv_ratio'] as num?,
      maxSupply: json['max_supply'] as num?,
      previousClosePrice: json['previous_close_price'] as num?,
      marketCapitalization: json['market_captilization'] as num?,
      dilutedMarketCap: json['diluted_market_cap'] as num?,
    );

Map<String, dynamic> _$HighlightDataToJson(_HighlightData instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'market_cap_fdv_ratio': instance.marketCapFdvRatio,
      'max_supply': instance.maxSupply,
      'previous_close_price': instance.previousClosePrice,
      'market_captilization': instance.marketCapitalization,
      'diluted_market_cap': instance.dilutedMarketCap,
    };
