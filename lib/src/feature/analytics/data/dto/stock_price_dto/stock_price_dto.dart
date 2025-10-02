import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_price_dto.freezed.dart';
part 'stock_price_dto.g.dart';

@freezed
abstract class StockPrice with _$StockPrice {
  const factory StockPrice({
    required String symbol,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String interval,
  }) = _StockPrice;

  factory StockPrice.fromJson(Map<String, dynamic> json) =>
      _$StockPriceFromJson(json);
}
