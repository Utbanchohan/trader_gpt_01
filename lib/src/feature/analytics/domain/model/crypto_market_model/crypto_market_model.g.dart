// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CryptoMarketModel _$CryptoMarketModelFromJson(Map<String, dynamic> json) =>
    _CryptoMarketModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => ExchangeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: json['status'] as String?,
      errors: json['errors'] as String?,
    );

Map<String, dynamic> _$CryptoMarketModelToJson(_CryptoMarketModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_ExchangeData _$ExchangeDataFromJson(Map<String, dynamic> json) =>
    _ExchangeData(
      exchange: json['exchange'] as String,
      pair: json['pair'] as String,
      price: (json['price'] as num).toDouble(),
      spread: (json['spread'] as num).toDouble(),
      volume24hrs: json['volume_24hrs'],
      lastUpdatedAt: json['last_updated_at'] as String?,
      trustScore: json['trust_score'] as String?,
      posTwoPercentDepth: json['pos_two_percent_depth'] as String?,
      negTwoPercentDepth: json['neg_two_percent_depth'] as String?,
    );

Map<String, dynamic> _$ExchangeDataToJson(_ExchangeData instance) =>
    <String, dynamic>{
      'exchange': instance.exchange,
      'pair': instance.pair,
      'price': instance.price,
      'spread': instance.spread,
      'volume_24hrs': instance.volume24hrs,
      'last_updated_at': instance.lastUpdatedAt,
      'trust_score': instance.trustScore,
      'pos_two_percent_depth': instance.posTwoPercentDepth,
      'neg_two_percent_depth': instance.negTwoPercentDepth,
    };
