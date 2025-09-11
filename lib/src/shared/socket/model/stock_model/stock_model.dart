import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../feature/chat/domain/model/base_model/base_model.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';
@freezed
abstract class Stock with _$Stock {
  const factory Stock({
    required String stockId,
    @JsonKey(name: "_id") String? id,
    String? type,
    required String symbol,
    @StringOrDoubleConverter() required double price,
    String? name,
    String? logoUrl,
    String? primaryLogoUrl,
    String? secondaryLogoUrl,
    String? tertiaryLogoUrl,
    double? changesPercentage,
    double? change,
    bool? showTrendChart,
    bool? isSelected,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}
