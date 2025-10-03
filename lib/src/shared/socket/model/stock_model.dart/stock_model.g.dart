// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stock _$StockFromJson(Map<String, dynamic> json) => _Stock(
  id: json['_id'] as String? ?? '',
  stockId: json['stockId'] as String? ?? '',
  symbol: json['symbol'] as String? ?? '',
  exchange: json['exchange'] as String? ?? '',
  exchangeshortname: json['exchangeshortname'] as String? ?? '',
  source: json['source'] as String? ?? '',
  type: json['type'] as String? ?? '',
  companyName: json['companyName'] as String? ?? '',
  isActivelyTrading: json['isActivelyTrading'] as bool? ?? false,
  isAdr: json['isAdr'] as bool? ?? false,
  isEtf: json['isEtf'] as bool? ?? false,
  isFund: json['isFund'] as bool? ?? false,
  isin: json['isin'] as String? ?? '',
  marketCap: (json['marketCap'] as num?)?.toDouble() ?? 0,
  price: (json['price'] as num?)?.toDouble() ?? 0,
  previousClose: (json['previousClose'] as num?)?.toDouble() ?? 0,
  pctChange: (json['pctChange'] as num?)?.toDouble() ?? 0,
  key: json['key'] as String? ?? '',
  fiveDayTrend:
      (json['fiveDayTrend'] as List<dynamic>?)
          ?.map((e) => FiveDayTrend.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isPositive: json['isPositive'] as bool? ?? true,
);

Map<String, dynamic> _$StockToJson(_Stock instance) => <String, dynamic>{
  '_id': instance.id,
  'stockId': instance.stockId,
  'symbol': instance.symbol,
  'exchange': instance.exchange,
  'exchangeshortname': instance.exchangeshortname,
  'source': instance.source,
  'type': instance.type,
  'companyName': instance.companyName,
  'isActivelyTrading': instance.isActivelyTrading,
  'isAdr': instance.isAdr,
  'isEtf': instance.isEtf,
  'isFund': instance.isFund,
  'isin': instance.isin,
  'marketCap': instance.marketCap,
  'price': instance.price,
  'previousClose': instance.previousClose,
  'pctChange': instance.pctChange,
  'key': instance.key,
  'fiveDayTrend': instance.fiveDayTrend,
  'isPositive': instance.isPositive,
};

_FiveDayTrend _$FiveDayTrendFromJson(Map<String, dynamic> json) =>
    _FiveDayTrend(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$FiveDayTrendToJson(_FiveDayTrend instance) =>
    <String, dynamic>{'data': instance.data};
