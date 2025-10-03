// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_comparison_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceComparisonDto _$PriceComparisonDtoFromJson(Map<String, dynamic> json) =>
    _PriceComparisonDto(
      daysBack: (json['days_back'] as num).toInt(),
      symbol1: json['symbol_1'] as String,
      symbol2: json['symbol_2'] as String,
    );

Map<String, dynamic> _$PriceComparisonDtoToJson(_PriceComparisonDto instance) =>
    <String, dynamic>{
      'days_back': instance.daysBack,
      'symbol_1': instance.symbol1,
      'symbol_2': instance.symbol2,
    };
