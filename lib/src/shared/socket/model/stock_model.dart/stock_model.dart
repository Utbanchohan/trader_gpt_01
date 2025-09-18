import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
abstract class Stock with _$Stock {
  const factory Stock({
    required int avgVolume,
    required double change,
    required double changesPercentage,
    required double dayHigh,
    required double dayLow,
    required String earningsAnnouncement,
    required double eps,
    required String exchange,
    required List<FiveDayTrend> fiveDayTrend,
    required int marketCap,
    required String name,
    required double open,
    required double pe,
    required double previousClose,
    required double price,
    required double priceAvg200,
    required double priceAvg50,
    required int sharesOutstanding,
    required String stockId,
    required String symbol,
    required int timestamp,
    required int volume,
    required double yearHigh,
    required double yearLow,
    required String logoUrl,
    required String type,
    required int count,
    required String dateHours,
    required int ticks,
    required String primaryLogoUrl,
    required String secondaryLogoUrl,
    required String tertiaryLogoUrl,
    required String status,
    required String updatedFrom,
    required String country,
    required int exchangeSortOrder,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
abstract class FiveDayTrend with _$FiveDayTrend {
  const factory FiveDayTrend({
    required List<double> data,
  }) = _FiveDayTrend;

  factory FiveDayTrend.fromJson(Map<String, dynamic> json) =>
      _$FiveDayTrendFromJson(json);
}
