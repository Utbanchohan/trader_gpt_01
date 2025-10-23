// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
num parseNum(dynamic value) {
  if (value == null) return 0;
  if (value is num) return value;
  if (value is String) return num.tryParse(value) ?? 0;
  return 0;
}

bool parseBool(dynamic value) {
  if (value is bool) return value;
  if (value is String) {
    return value.toLowerCase() == 'true' || value == '1';
  }
  if (value is num) {
    return value == 1;
  }
  return false;
}

_Stock _$StockFromJson(Map<String, dynamic> json) => _Stock(
  id: json['_id'] as String? ?? '',
  stockId: json['stockId'] as String? ?? '',
  symbol: json['symbol'] as String? ?? '',
  exchange: json['exchange'] as String? ?? '',
  exchangeshortname: json['exchangeshortname'] as String? ?? '',
  source: json['source'] as String? ?? '',
  type: json['type'] as String? ?? '',
  companyName: json['companyName'] as String? ?? '',
  isActivelyTrading: parseBool(json['isActivelyTrading']),
  isAdr: parseBool(json['isAdr']),
  isEtf: parseBool(json['isEtf']),
  isFund: parseBool(json['isFund']),
  isin: json['isin'] as String? ?? '',
  marketCap: parseNum(json['marketCap']).toDouble(),
  price: parseNum(json['price']).toDouble(),
  previousClose: parseNum(json['previousClose']).toDouble(),
  pctChange: parseNum(json['pctChange']).toDouble(),
  key: json['key'] as String? ?? '',
  fiveDayTrend:
      (json['fiveDayTrend'] as List<dynamic>?)
          ?.map((e) => FiveDayTrend.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isPositive: parseBool(json['isPositive']),
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
