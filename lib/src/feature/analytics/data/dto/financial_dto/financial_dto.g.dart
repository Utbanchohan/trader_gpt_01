// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceRequestDto _$PriceRequestDtoFromJson(Map<String, dynamic> json) =>
    _PriceRequestDto(
      isYearly: json['is_yearly'] as bool,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$PriceRequestDtoToJson(_PriceRequestDto instance) =>
    <String, dynamic>{
      'is_yearly': instance.isYearly,
      'symbol': instance.symbol,
    };
