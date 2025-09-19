import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
abstract class Stock with _$Stock {
  const factory Stock({
    @JsonKey(nullable: true)  @JsonKey(nullable: true) required int avgVolume,
     @JsonKey(nullable: true) required double change,
     @JsonKey(nullable: true) required double changesPercentage,
     @JsonKey(nullable: true) required double dayHigh,
     @JsonKey(nullable: true) required double dayLow,
     @JsonKey(nullable: true) required String earningsAnnouncement,
     @JsonKey(nullable: true) required double eps,
     @JsonKey(nullable: true) required String exchange,
     @JsonKey(nullable: true) required List<FiveDayTrend> fiveDayTrend,
     @JsonKey(nullable: true) required int marketCap,
     @JsonKey(nullable: true) required String name,
     @JsonKey(nullable: true) required double open,
     @JsonKey(nullable: true) required double pe,
     @JsonKey(nullable: true) required double previousClose,
     @JsonKey(nullable: true) required double price,
     @JsonKey(nullable: true) required double priceAvg200,
     @JsonKey(nullable: true) required double priceAvg50,
     @JsonKey(nullable: true) required int sharesOutstanding,
     @JsonKey(nullable: true) required String stockId,
     @JsonKey(nullable: true) required String symbol,
     @JsonKey(nullable: true) required int timestamp,
     @JsonKey(nullable: true) required int volume,
     @JsonKey(nullable: true) required double yearHigh,
     @JsonKey(nullable: true) required double yearLow,
     @JsonKey(nullable: true) required String logoUrl,
     @JsonKey(nullable: true) required String type,
     @JsonKey(nullable: true) required int count,
     @JsonKey(nullable: true) required String dateHours,
     @JsonKey(nullable: true) required int ticks,
     @JsonKey(nullable: true) required String primaryLogoUrl,
     @JsonKey(nullable: true) required String secondaryLogoUrl,
     @JsonKey(nullable: true) required String tertiaryLogoUrl,
     @JsonKey(nullable: true) required String status,
     @JsonKey(nullable: true) required String updatedFrom,
     @JsonKey(nullable: true) required String country,
     @JsonKey(nullable: true) required int exchangeSortOrder,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
abstract class FiveDayTrend with _$FiveDayTrend {
  const factory FiveDayTrend({
     @JsonKey(nullable: true) required List<double> data,
  }) = _FiveDayTrend;

  factory FiveDayTrend.fromJson(Map<String, dynamic> json) =>
      _$FiveDayTrendFromJson(json);
}
