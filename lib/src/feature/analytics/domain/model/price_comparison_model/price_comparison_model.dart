import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_model.freezed.dart';
part 'price_comparison_model.g.dart';

@freezed
abstract class PriceComparisonModel with _$PriceComparisonModel {
  const factory PriceComparisonModel({
    required PriceComparisonData data,
    required String msg,
    required int status,
    dynamic errors,
  }) = _PriceComparisonModel;

  factory PriceComparisonModel.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonModelFromJson(json);
}

@freezed
abstract class PriceComparisonData with _$PriceComparisonData {
  const factory PriceComparisonData({
    Map<String, double>? MSFT,
    Map<String, double>? SPY,
  }) = _PriceComparisonData;

  factory PriceComparisonData.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonDataFromJson(json);
}
