// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stock _$StockFromJson(Map<String, dynamic> json) => _Stock(
  stockId: json['stockId'] as String,
  id: json['_id'] as String?,
  type: json['type'] as String?,
  symbol: json['symbol'] as String,
  price: const StringOrDoubleConverter().fromJson(json['price']),
  name: json['name'] as String?,
  logoUrl: json['logoUrl'] as String?,
  primaryLogoUrl: json['primaryLogoUrl'] as String?,
  secondaryLogoUrl: json['secondaryLogoUrl'] as String?,
  tertiaryLogoUrl: json['tertiaryLogoUrl'] as String?,
  changesPercentage: (json['changesPercentage'] as num?)?.toDouble(),
  change: (json['change'] as num?)?.toDouble(),
  showTrendChart: json['showTrendChart'] as bool?,
  isSelected: json['isSelected'] as bool?,
);

Map<String, dynamic> _$StockToJson(_Stock instance) => <String, dynamic>{
  'stockId': instance.stockId,
  '_id': instance.id,
  'type': instance.type,
  'symbol': instance.symbol,
  'price': const StringOrDoubleConverter().toJson(instance.price),
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'primaryLogoUrl': instance.primaryLogoUrl,
  'secondaryLogoUrl': instance.secondaryLogoUrl,
  'tertiaryLogoUrl': instance.tertiaryLogoUrl,
  'changesPercentage': instance.changesPercentage,
  'change': instance.change,
  'showTrendChart': instance.showTrendChart,
  'isSelected': instance.isSelected,
};
