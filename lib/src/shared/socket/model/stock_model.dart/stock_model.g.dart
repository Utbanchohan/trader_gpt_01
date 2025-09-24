// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stock _$StockFromJson(Map<String, dynamic> json) => _Stock(
  avgVolume: (json['avgVolume'] as num?)?.toInt() ?? 0,
  change: (json['change'] as num?)?.toDouble() ?? 0.0,
  changesPercentage: (json['changesPercentage'] as num?)?.toDouble() ?? 0.0,
  dayHigh: (json['dayHigh'] as num?)?.toDouble() ?? 0.0,
  dayLow: (json['dayLow'] as num?)?.toDouble() ?? 0.0,
  earningsAnnouncement: json['earningsAnnouncement'] as String? ?? '',
  eps: (json['eps'] as num?)?.toDouble() ?? 0.0,
  exchange: json['exchange'] as String? ?? '',
  fiveDayTrend:
      (json['fiveDayTrend'] as List<dynamic>?)
          ?.map((e) => FiveDayTrend.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  marketCap: (json['marketCap'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  open: (json['open'] as num?)?.toDouble() ?? 0.0,
  pe: (json['pe'] as num?)?.toDouble() ?? 0.0,
  previousClose: (json['previousClose'] as num?)?.toDouble() ?? 0.0,
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  priceAvg200: (json['priceAvg200'] as num?)?.toDouble() ?? 0.0,
  priceAvg50: (json['priceAvg50'] as num?)?.toDouble() ?? 0.0,
  sharesOutstanding: (json['sharesOutstanding'] as num?)?.toInt() ?? 0,
  stockId: json['stockId'] as String? ?? '',
  symbol: json['symbol'] as String? ?? '',
  timestamp: (json['timestamp'] as num?)?.toInt() ?? 0,
  volume: (json['volume'] as num?)?.toInt() ?? 0,
  yearHigh: (json['yearHigh'] as num?)?.toDouble() ?? 0.0,
  yearLow: (json['yearLow'] as num?)?.toDouble() ?? 0.0,
  logoUrl: json['logoUrl'] as String? ?? '',
  type: json['type'] as String? ?? '',
  count: (json['count'] as num?)?.toInt() ?? 0,
  dateHours: json['dateHours'] as String? ?? '',
  ticks: (json['ticks'] as num?)?.toInt() ?? 0,
  primaryLogoUrl: json['primaryLogoUrl'] as String? ?? '',
  secondaryLogoUrl: json['secondaryLogoUrl'] as String? ?? '',
  tertiaryLogoUrl: json['tertiaryLogoUrl'] as String? ?? '',
  status: json['status'] as String? ?? '',
  updatedFrom: json['updatedFrom'] as String? ?? '',
  country: json['country'] as String? ?? '',
  exchangeSortOrder: (json['exchangeSortOrder'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StockToJson(_Stock instance) => <String, dynamic>{
  'avgVolume': instance.avgVolume,
  'change': instance.change,
  'changesPercentage': instance.changesPercentage,
  'dayHigh': instance.dayHigh,
  'dayLow': instance.dayLow,
  'earningsAnnouncement': instance.earningsAnnouncement,
  'eps': instance.eps,
  'exchange': instance.exchange,
  'fiveDayTrend': instance.fiveDayTrend,
  'marketCap': instance.marketCap,
  'name': instance.name,
  'open': instance.open,
  'pe': instance.pe,
  'previousClose': instance.previousClose,
  'price': instance.price,
  'priceAvg200': instance.priceAvg200,
  'priceAvg50': instance.priceAvg50,
  'sharesOutstanding': instance.sharesOutstanding,
  'stockId': instance.stockId,
  'symbol': instance.symbol,
  'timestamp': instance.timestamp,
  'volume': instance.volume,
  'yearHigh': instance.yearHigh,
  'yearLow': instance.yearLow,
  'logoUrl': instance.logoUrl,
  'type': instance.type,
  'count': instance.count,
  'dateHours': instance.dateHours,
  'ticks': instance.ticks,
  'primaryLogoUrl': instance.primaryLogoUrl,
  'secondaryLogoUrl': instance.secondaryLogoUrl,
  'tertiaryLogoUrl': instance.tertiaryLogoUrl,
  'status': instance.status,
  'updatedFrom': instance.updatedFrom,
  'country': instance.country,
  'exchangeSortOrder': instance.exchangeSortOrder,
};

_FiveDayTrend _$FiveDayTrendFromJson(Map<String, dynamic> json) =>
    _FiveDayTrend(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$FiveDayTrendToJson(_FiveDayTrend instance) =>
    <String, dynamic>{'data': instance.data};
