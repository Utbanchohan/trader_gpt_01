import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_chart_data_model.freezed.dart';
part 'financial_chart_data_model.g.dart';

@freezed
abstract class FinanceDataResponse with _$FinanceDataResponse {
  const factory FinanceDataResponse({
    required FinanceData data,
    required String msg,
    required int status,
    dynamic errors,
  }) = _FinanceDataResponse;

  factory FinanceDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FinanceDataResponseFromJson(json);
}

@freezed
abstract class FinanceData with _$FinanceData {
  const factory FinanceData({
    @JsonKey(name: 'Cash and Debt') required FinanceCategory cashAndDebt,
    @JsonKey(name: 'Assets and StockHolders')
    required FinanceCategory assetsAndStockHolders,
    @JsonKey(name: 'Outstanding Shares & Buyback')
    required FinanceCategory outstandingSharesBuyback,
    @JsonKey(name: 'Revenue and Income')
    required FinanceCategory revenueAndIncome,
    @JsonKey(name: 'Cash Flow Data') required FinanceCategory cashFlowData,
  }) = _FinanceData;

  factory FinanceData.fromJson(Map<String, dynamic> json) =>
      _$FinanceDataFromJson(json);
}

/// Each high-level section like "Cash and Debt", "Assets and StockHolders", etc.
@freezed
abstract class FinanceCategory with _$FinanceCategory {
  const factory FinanceCategory({
    @JsonKey(name: "Yearly") FinancePeriod? yearly,
    @JsonKey(name: "Quarterly") FinancePeriod? quarterly,
  }) = _FinanceCategory;

  factory FinanceCategory.fromJson(Map<String, dynamic> json) =>
      _$FinanceCategoryFromJson(json);
}

/// Represents Yearly / Quarterly data (maps of metric names to lists)
@freezed
abstract class FinancePeriod with _$FinancePeriod {
  const factory FinancePeriod({
    @JsonKey(fromJson: _metricsFromJson, toJson: _metricsToJson)
    required Map<String, List<List<num?>>> metrics,
  }) = _FinancePeriod;

  factory FinancePeriod.fromJson(Map<String, dynamic> json) =>
      _$FinancePeriodFromJson(json);
}

/// --- Custom (De)Serialization ---
/// Convert JSON objects like:
/// { "Cash": [[timestamp, value], [timestamp, value]], "Debt": [[timestamp, value]] }
/// into a `Map<String, List<List<num?>>>`
Map<String, List<List<num?>>> _metricsFromJson(Map<String, dynamic> json) {
  return json.map(
    (key, value) => MapEntry(
      key,
      (value as List)
          .map((item) => (item as List).map((v) => v as num?).toList())
          .toList(),
    ),
  );
}

Map<String, dynamic> _metricsToJson(Map<String, List<List<num?>>> metrics) {
  return metrics.map((key, value) => MapEntry(key, value));
}
