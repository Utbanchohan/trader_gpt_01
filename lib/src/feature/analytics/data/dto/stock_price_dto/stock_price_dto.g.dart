// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockPrice _$StockPriceFromJson(Map<String, dynamic> json) => _StockPrice(
  symbol: json['symbol'] as String,
  startDate: json['start_date'] as String,
  endDate: json['end_date'] as String,
  interval: json['interval'] as String,
);

Map<String, dynamic> _$StockPriceToJson(_StockPrice instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'interval': instance.interval,
    };
