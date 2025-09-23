import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
abstract class Stock with _$Stock {
  const factory Stock({
      @Default(0) int avgVolume,
    @Default(0.0) double change,
    @Default(0.0) double changesPercentage,
    @Default(0.0) double dayHigh,
    @Default(0.0) double dayLow,
    @Default('') String earningsAnnouncement,
    @Default(0.0) double eps,
    @Default('') String exchange,
    @Default([]) List<FiveDayTrend> fiveDayTrend,
    @Default(0) int marketCap,
    @Default('') String name,
    @Default(0.0) double open,
    @Default(0.0) double pe,
    @Default(0.0) double previousClose,
    @Default(0.0) double price,
    @Default(0.0) double priceAvg200,
    @Default(0.0) double priceAvg50,
    @Default(0) int sharesOutstanding,
    @Default('') String stockId,
    @Default('') String symbol,
    @Default(0) int timestamp,
    @Default(0) int volume,
    @Default(0.0) double yearHigh,
    @Default(0.0) double yearLow,
    @Default('') String logoUrl,
    @Default('') String type,
    @Default(0) int count,
    @Default('') String dateHours,
    @Default(0) int ticks,
    @Default('') String primaryLogoUrl,
    @Default('') String secondaryLogoUrl,
    @Default('') String tertiaryLogoUrl,
    @Default('') String status,
    @Default('') String updatedFrom,
    @Default('') String country,
    @Default(0) int exchangeSortOrder,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
abstract class FiveDayTrend with _$FiveDayTrend {
  const factory FiveDayTrend({
      List<double> ?data,
  }) = _FiveDayTrend;

  factory FiveDayTrend.fromJson(Map<String, dynamic> json) =>
      _$FiveDayTrendFromJson(json);
}
