import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrics_data_model.freezed.dart';
part 'matrics_data_model.g.dart';

@freezed
abstract class MatricsResponse with _$MatricsResponse {
  const factory MatricsResponse({
    List<MatricsData>? data,
    String? msg,
    int? status,
    dynamic errors,
  }) = _MatricsResponse;

  factory MatricsResponse.fromJson(Map<String, dynamic> json) =>
      _$MatricsResponseFromJson(json);
}

@freezed
abstract class MatricsData with _$MatricsData {
  const factory MatricsData({
    @JsonKey(name: "revenue_per_share") double? revenuePerShare,
    @JsonKey(name: "net_income_per_share") double? netIncomePerShare,
    @JsonKey(name: "operating_cash_flow_per_share")
    double? operatingCashFlowPerShare,
    @JsonKey(name: "free_cash_flow_per_share") double? freeCashFlowPerShare,
    @JsonKey(name: "cash_per_share") double? cashPerShare,
    @JsonKey(name: "book_value_per_share") double? bookValuePerShare,
    @JsonKey(name: "tangible_book_value_per_share")
    double? tangibleBookValuePerShare,
    @JsonKey(name: "shareholders_equity_per_share")
    double? shareholdersEquityPerShare,
    @JsonKey(name: "interest_debt_per_share") double? interestDebtPerShare,
    @JsonKey(name: "market_cap") double? marketCap,
    @JsonKey(name: "enterprise_value") double? enterpriseValue,
    @JsonKey(name: "pe_ratio") double? peRatio,
    @JsonKey(name: "price_to_sales_ratio") double? priceToSalesRatio,
    @JsonKey(name: "pocfratio") double? pocfRatio,
    @JsonKey(name: "pfcf_ratio") double? pfcfRatio,
    @JsonKey(name: "pb_ratio") double? pbRatio,
    @JsonKey(name: "ptb_ratio") double? ptbRatio,
    @JsonKey(name: "ev_to_sales") double? evToSales,
    @JsonKey(name: "enterprise_value_over_ebitda")
    double? enterpriseValueOverEbitda,
    @JsonKey(name: "ev_to_operating_cash_flow") double? evToOperatingCashFlow,
    @JsonKey(name: "ev_to_free_cash_flow") double? evToFreeCashFlow,
    @JsonKey(name: "earnings_yield") double? earningsYield,
    @JsonKey(name: "free_cash_flow_yield") double? freeCashFlowYield,
    @JsonKey(name: "debt_to_equity") double? debtToEquity,
    @JsonKey(name: "debt_to_assets") double? debtToAssets,
    @JsonKey(name: "net_debt_to_ebitda") double? netDebtToEbitda,
    @JsonKey(name: "current_ratio") double? currentRatio,
    @JsonKey(name: "interest_coverage") double? interestCoverage,
    @JsonKey(name: "income_quality") double? incomeQuality,
    @JsonKey(name: "dividend_yield") double? dividendYield,
    @JsonKey(name: "payout_ratio") double? payoutRatio,
    @JsonKey(name: "sales_general_and_administrative_to_revenue")
    double? salesGeneralAndAdministrativeToRevenue,
    @JsonKey(name: "research_and_developement_to_revenue")
    double? researchAndDevelopementToRevenue,
    @JsonKey(name: "intangibles_to_total_assets")
    double? intangiblesToTotalAssets,
    @JsonKey(name: "capex_to_operating_cash_flow")
    double? capexToOperatingCashFlow,
    @JsonKey(name: "capex_to_revenue") double? capexToRevenue,
    @JsonKey(name: "capex_to_depreciation") double? capexToDepreciation,
    @JsonKey(name: "stock_based_compensation_to_revenue")
    double? stockBasedCompensationToRevenue,
    @JsonKey(name: "graham_number") double? grahamNumber,
    @JsonKey(name: "roic") double? roic,
    @JsonKey(name: "return_on_tangible_assets") double? returnOnTangibleAssets,
    @JsonKey(name: "graham_net_net") double? grahamNetNet,
    @JsonKey(name: "working_capital") double? workingCapital,
    @JsonKey(name: "tangible_asset_value") double? tangibleAssetValue,
    @JsonKey(name: "net_current_asset_value") double? netCurrentAssetValue,
    @JsonKey(name: "invested_capital") double? investedCapital,
    @JsonKey(name: "average_receivables") double? averageReceivables,
    @JsonKey(name: "average_payables") double? averagePayables,
    @JsonKey(name: "average_inventory") double? averageInventory,
    @JsonKey(name: "days_sales_outstanding") double? daysSalesOutstanding,
    @JsonKey(name: "days_payables_outstanding") double? daysPayablesOutstanding,
    @JsonKey(name: "days_of_inventory_on_hand") double? daysOfInventoryOnHand,
    @JsonKey(name: "receivables_turnover") double? receivablesTurnover,
    @JsonKey(name: "payables_turnover") double? payablesTurnover,
    @JsonKey(name: "inventory_turnover") double? inventoryTurnover,
    @JsonKey(name: "roe") double? roe,
    @JsonKey(name: "capex_per_share") double? capexPerShare,
  }) = _MatricsData;

  factory MatricsData.fromJson(Map<String, dynamic> json) =>
      _$MatricsDataFromJson(json);
}
