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
    @_DynamicSymbolsConverter() required Map<String, Map<String, double>> data,
  }) = _PriceComparisonData;

  factory PriceComparisonData.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonDataFromJson(json);
}

/// ✅ Custom converter that handles dynamic stock symbols (NDAQ, SPY, etc.)
class _DynamicSymbolsConverter
    implements
        JsonConverter<Map<String, Map<String, double>>, Map<String, dynamic>> {
  const _DynamicSymbolsConverter();

  @override
  Map<String, Map<String, double>> fromJson(Map<String, dynamic> json) {
    return json.map((symbol, prices) {
      final parsedPrices = (prices as Map<String, dynamic>).map(
        (timestamp, price) =>
            MapEntry(timestamp.toString(), (price as num).toDouble()),
      );
      return MapEntry(symbol, parsedPrices);
    });
  }

  @override
  Map<String, dynamic> toJson(Map<String, Map<String, double>> object) {
    return object.map((symbol, prices) {
      final inner = prices.map(
        (timestamp, price) => MapEntry(timestamp, price),
      );
      return MapEntry(symbol, inner);
    });
  }
}
