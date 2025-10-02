import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_price_model.freezed.dart';
part 'stock_price_model.g.dart';

@freezed
abstract class StockPriceModel with _$StockPriceModel {
  const factory StockPriceModel({
    required StockPriceData data,
    String? msg,
    int? status,
    dynamic errors,
  }) = _StockPriceModel;

  factory StockPriceModel.fromJson(Map<String, dynamic> json) =>
      _$StockPriceModelFromJson(json);
}

@freezed
abstract class StockPriceData with _$StockPriceData {
  const factory StockPriceData({
    required List<ChartCandle> chart,
    @JsonKey(name: 'chart_vol') required List<ChartVolume> chartVol,
    @JsonKey(name: 'eod_data') required Map<String, EodData> eodData,
  }) = _StockPriceData;

  factory StockPriceData.fromJson(Map<String, dynamic> json) =>
      _$StockPriceDataFromJson(json);
}

@freezed
abstract class ChartCandle with _$ChartCandle {
  const factory ChartCandle({
    required String x,
    required List<double> y, // [open, high, low, close]
  }) = _ChartCandle;

  factory ChartCandle.fromJson(Map<String, dynamic> json) =>
      _$ChartCandleFromJson(json);
}

@freezed
abstract class ChartVolume with _$ChartVolume {
  const factory ChartVolume({
    required String x,
    required int y,
    String? fillColor,
  }) = _ChartVolume;

  factory ChartVolume.fromJson(Map<String, dynamic> json) =>
      _$ChartVolumeFromJson(json);
}

@freezed
abstract class EodData with _$EodData {
  const factory EodData({
    double? open,
    double? high,
    double? low,
    double? close,
    double? avolume,
    String? totaltrades,
    double? change,
    double? changepercent,
    double? vwap,
  }) = _EodData;

  factory EodData.fromJson(Map<String, dynamic> json) =>
      _$EodDataFromJson(json);
}
