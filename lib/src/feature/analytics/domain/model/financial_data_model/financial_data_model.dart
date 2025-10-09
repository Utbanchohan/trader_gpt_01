import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_data_model.freezed.dart';
part 'financial_data_model.g.dart';

@freezed
abstract class FinancialResponse with _$FinancialResponse {
  const factory FinancialResponse({
    required FinancialData data,
    required String msg,
    required int status,
    dynamic errors,
  }) = _FinancialResponse;

  factory FinancialResponse.fromJson(Map<String, dynamic> json) =>
      _$FinancialResponseFromJson(json);
}

@freezed
abstract class FinancialData with _$FinancialData {
  const factory FinancialData({
    @JsonKey(name: 'financials_balance_sheet')
    required FinancialBalanceSheet financialsBalanceSheet,
    @JsonKey(name: 'financials_cash_flow')
    required FinancialCashFlow financialsCashFlow,
    @JsonKey(name: 'financials_income_statement')
    required FinancialIncomeStatement financialsIncomeStatement,
  }) = _FinancialData;

  factory FinancialData.fromJson(Map<String, dynamic> json) =>
      _$FinancialDataFromJson(json);
}

@freezed
abstract class FinancialBalanceSheet with _$FinancialBalanceSheet {
  const factory FinancialBalanceSheet({
    required FinancialChart chart,
    required Map<String, YearlyFinancialData> data,
    @JsonKey(name: 'current_ratio') required double currentRatio,
  }) = _FinancialBalanceSheet;

  factory FinancialBalanceSheet.fromJson(Map<String, dynamic> json) =>
      _$FinancialBalanceSheetFromJson(json);
}

@freezed
abstract class FinancialCashFlow with _$FinancialCashFlow {
  const factory FinancialCashFlow({
    required FinancialChart chart,
    required Map<String, YearlyFinancialData> data,
  }) = _FinancialCashFlow;

  factory FinancialCashFlow.fromJson(Map<String, dynamic> json) =>
      _$FinancialCashFlowFromJson(json);
}

@freezed
abstract class FinancialIncomeStatement with _$FinancialIncomeStatement {
  const factory FinancialIncomeStatement({
    required FinancialChart chart,
    required Map<String, YearlyFinancialData> data,
  }) = _FinancialIncomeStatement;

  factory FinancialIncomeStatement.fromJson(Map<String, dynamic> json) =>
      _$FinancialIncomeStatementFromJson(json);
}

@freezed
abstract class FinancialChart with _$FinancialChart {
  const factory FinancialChart({
    List<FinancialDataPoint>? totalAssets,
    List<FinancialDataPoint>? intangibleAssets,
    List<FinancialDataPoint>? earningAssets,
    List<FinancialDataPoint>? otherCurrentAssets,
    List<FinancialDataPoint>? totalLiab,
    List<FinancialDataPoint>? totalStockholderEquity,
    List<FinancialDataPoint>? deferredLongTermLiab,
    List<FinancialDataPoint>? otherCurrentLiab,
    List<FinancialDataPoint>? commonStock,
    List<FinancialDataPoint>? capitalStock,
    List<FinancialDataPoint>? retainedEarnings,
    List<FinancialDataPoint>? otherLiab,
    List<FinancialDataPoint>? goodWill,
    List<FinancialDataPoint>? otherAssets,
    List<FinancialDataPoint>? cash,
    List<FinancialDataPoint>? cashAndEquivalents,
    List<FinancialDataPoint>? totalCurrentLiabilities,
    List<FinancialDataPoint>? currentDeferredRevenue,
    List<FinancialDataPoint>? netDebt,
    List<FinancialDataPoint>? shortTermDebt,
    List<FinancialDataPoint>? shortLongTermDebt,
    List<FinancialDataPoint>? shortLongTermDebtTotal,
    List<FinancialDataPoint>? otherStockholderEquity,
    List<FinancialDataPoint>? propertyPlantEquipment,
    List<FinancialDataPoint>? totalCurrentAssets,
    List<FinancialDataPoint>? longTermInvestments,
    List<FinancialDataPoint>? netTangibleAssets,
    List<FinancialDataPoint>? shortTermInvestments,
    List<FinancialDataPoint>? netReceivables,
    List<FinancialDataPoint>? longTermDebt,
    List<FinancialDataPoint>? inventory,
    List<FinancialDataPoint>? accountsPayable,
    List<FinancialDataPoint>? totalPermanentEquity,
    List<FinancialDataPoint>? noncontrollingInterestInConsolidatedEntity,
    List<FinancialDataPoint>? temporaryEquityRedeemableNoncontrollingInterests,
    List<FinancialDataPoint>? accumulatedOtherComprehensiveIncome,
    List<FinancialDataPoint>? additionalPaidInCapital,
    List<FinancialDataPoint>? commonStockTotalEquity,
    List<FinancialDataPoint>? preferredStockTotalEquity,
    List<FinancialDataPoint>? retainedEarningsTotalEquity,
    List<FinancialDataPoint>? treasuryStock,
    List<FinancialDataPoint>? accumulatedAmortization,
    List<FinancialDataPoint>? nonCurrrentAssetsOther,
    List<FinancialDataPoint>? deferredLongTermAssetCharges,
    List<FinancialDataPoint>? nonCurrentAssetsTotal,
    List<FinancialDataPoint>? capitalLeaseObligations,
    List<FinancialDataPoint>? longTermDebtTotal,
    List<FinancialDataPoint>? nonCurrentLiabilitiesOther,
    List<FinancialDataPoint>? nonCurrentLiabilitiesTotal,
    List<FinancialDataPoint>? negativeGoodwill,
    List<FinancialDataPoint>? warrants,
    List<FinancialDataPoint>? preferredStockRedeemable,
    List<FinancialDataPoint>? capitalSurpluse,
    List<FinancialDataPoint>? liabilitiesAndStockholdersEquity,
    List<FinancialDataPoint>? cashAndShortTermInvestments,
    List<FinancialDataPoint>? propertyPlantAndEquipmentGross,
    List<FinancialDataPoint>? propertyPlantAndEquipmentNet,
    List<FinancialDataPoint>? accumulatedDepreciation,
    List<FinancialDataPoint>? netWorkingCapital,
    List<FinancialDataPoint>? netInvestedCapital,
    List<FinancialDataPoint>? commonStockSharesOutstanding,
    // Cash Flow specific fields
    List<FinancialDataPoint>? investments,
    List<FinancialDataPoint>? changeToLiabilities,
    List<FinancialDataPoint>? totalCashflowsFromInvestingActivities,
    List<FinancialDataPoint>? netBorrowings,
    List<FinancialDataPoint>? totalCashFromFinancingActivities,
    List<FinancialDataPoint>? changeToOperatingActivities,
    List<FinancialDataPoint>? netIncome,
    List<FinancialDataPoint>? changeInCash,
    List<FinancialDataPoint>? beginPeriodCashFlow,
    List<FinancialDataPoint>? endPeriodCashFlow,
    List<FinancialDataPoint>? totalCashFromOperatingActivities,
    List<FinancialDataPoint>? issuanceOfCapitalStock,
    List<FinancialDataPoint>? depreciation,
    List<FinancialDataPoint>? otherCashflowsFromInvestingActivities,
    List<FinancialDataPoint>? dividendsPaid,
    List<FinancialDataPoint>? changeToInventory,
    List<FinancialDataPoint>? changeToAccountReceivables,
    List<FinancialDataPoint>? salePurchaseOfStock,
    List<FinancialDataPoint>? otherCashflowsFromFinancingActivities,
    List<FinancialDataPoint>? changeToNetincome,
    List<FinancialDataPoint>? capitalExpenditures,
    List<FinancialDataPoint>? changeReceivables,
    List<FinancialDataPoint>? cashFlowsOtherOperating,
    List<FinancialDataPoint>? exchangeRateChanges,
    List<FinancialDataPoint>? cashAndCashEquivalentsChanges,
    List<FinancialDataPoint>? changeInWorkingCapital,
    List<FinancialDataPoint>? stockBasedCompensation,
    List<FinancialDataPoint>? otherNonCashItems,
    List<FinancialDataPoint>? freeCashFlow,
    // Income Statement specific fields
    List<FinancialDataPoint>? researchDevelopment,
    List<FinancialDataPoint>? effectOfAccountingCharges,
    List<FinancialDataPoint>? incomeBeforeTax,
    List<FinancialDataPoint>? minorityInterest,
    List<FinancialDataPoint>? sellingGeneralAdministrative,
    List<FinancialDataPoint>? sellingAndMarketingExpenses,
    List<FinancialDataPoint>? grossProfit,
    List<FinancialDataPoint>? reconciledDepreciation,
    List<FinancialDataPoint>? ebit,
    List<FinancialDataPoint>? ebitda,
    List<FinancialDataPoint>? depreciationAndAmortization,
    List<FinancialDataPoint>? nonOperatingIncomeNetOther,
    List<FinancialDataPoint>? operatingIncome,
    List<FinancialDataPoint>? otherOperatingExpenses,
    List<FinancialDataPoint>? interestExpense,
    List<FinancialDataPoint>? taxProvision,
    List<FinancialDataPoint>? interestIncome,
    List<FinancialDataPoint>? netInterestIncome,
    List<FinancialDataPoint>? extraordinaryItems,
    List<FinancialDataPoint>? nonRecurring,
    List<FinancialDataPoint>? otherItems,
    List<FinancialDataPoint>? incomeTaxExpense,
    List<FinancialDataPoint>? totalRevenue,
    List<FinancialDataPoint>? totalOperatingExpenses,
    List<FinancialDataPoint>? costOfRevenue,
    List<FinancialDataPoint>? totalOtherIncomeExpenseNet,
    List<FinancialDataPoint>? discontinuedOperations,
    List<FinancialDataPoint>? netIncomeFromContinuingOps,
    List<FinancialDataPoint>? netIncomeApplicableToCommonShares,
    List<FinancialDataPoint>? preferredStockAndOtherAdjustments,
    // Common fields
    List<FinancialDataPoint>? type,
    @JsonKey(name: 'stock_type') List<FinancialDataPoint>? stockType,
  }) = _FinancialChart;

  factory FinancialChart.fromJson(Map<String, dynamic> json) =>
      _$FinancialChartFromJson(json);
}

@freezed
abstract class FinancialDataPoint with _$FinancialDataPoint {
  const factory FinancialDataPoint({required String x, required dynamic y}) =
      _FinancialDataPoint;

  factory FinancialDataPoint.fromJson(Map<String, dynamic> json) =>
      _$FinancialDataPointFromJson(json);
}

@freezed
abstract class YearlyFinancialData with _$YearlyFinancialData {
  const factory YearlyFinancialData({
    List<dynamic>? totalAssets,
    List<dynamic>? intangibleAssets,
    List<dynamic>? earningAssets,
    List<dynamic>? otherCurrentAssets,
    List<dynamic>? totalLiab,
    List<dynamic>? totalStockholderEquity,
    List<dynamic>? deferredLongTermLiab,
    List<dynamic>? otherCurrentLiab,
    List<dynamic>? commonStock,
    List<dynamic>? capitalStock,
    List<dynamic>? retainedEarnings,
    List<dynamic>? otherLiab,
    List<dynamic>? goodWill,
    List<dynamic>? otherAssets,
    List<dynamic>? cash,
    List<dynamic>? cashAndEquivalents,
    List<dynamic>? totalCurrentLiabilities,
    List<dynamic>? currentDeferredRevenue,
    List<dynamic>? netDebt,
    List<dynamic>? shortTermDebt,
    List<dynamic>? shortLongTermDebt,
    List<dynamic>? shortLongTermDebtTotal,
    List<dynamic>? otherStockholderEquity,
    List<dynamic>? propertyPlantEquipment,
    List<dynamic>? totalCurrentAssets,
    List<dynamic>? longTermInvestments,
    List<dynamic>? netTangibleAssets,
    List<dynamic>? shortTermInvestments,
    List<dynamic>? netReceivables,
    List<dynamic>? longTermDebt,
    List<dynamic>? inventory,
    List<dynamic>? accountsPayable,
    List<dynamic>? totalPermanentEquity,
    List<dynamic>? noncontrollingInterestInConsolidatedEntity,
    List<dynamic>? temporaryEquityRedeemableNoncontrollingInterests,
    List<dynamic>? accumulatedOtherComprehensiveIncome,
    List<dynamic>? additionalPaidInCapital,
    List<dynamic>? commonStockTotalEquity,
    List<dynamic>? preferredStockTotalEquity,
    List<dynamic>? retainedEarningsTotalEquity,
    List<dynamic>? treasuryStock,
    List<dynamic>? accumulatedAmortization,
    List<dynamic>? nonCurrrentAssetsOther,
    List<dynamic>? deferredLongTermAssetCharges,
    List<dynamic>? nonCurrentAssetsTotal,
    List<dynamic>? capitalLeaseObligations,
    List<dynamic>? longTermDebtTotal,
    List<dynamic>? nonCurrentLiabilitiesOther,
    List<dynamic>? nonCurrentLiabilitiesTotal,
    List<dynamic>? negativeGoodwill,
    List<dynamic>? warrants,
    List<dynamic>? preferredStockRedeemable,
    List<dynamic>? capitalSurpluse,
    List<dynamic>? liabilitiesAndStockholdersEquity,
    List<dynamic>? cashAndShortTermInvestments,
    List<dynamic>? propertyPlantAndEquipmentGross,
    List<dynamic>? propertyPlantAndEquipmentNet,
    List<dynamic>? accumulatedDepreciation,
    List<dynamic>? netWorkingCapital,
    List<dynamic>? netInvestedCapital,
    List<dynamic>? commonStockSharesOutstanding,
    // Cash Flow specific fields
    List<dynamic>? investments,
    List<dynamic>? changeToLiabilities,
    List<dynamic>? totalCashflowsFromInvestingActivities,
    List<dynamic>? netBorrowings,
    List<dynamic>? totalCashFromFinancingActivities,
    List<dynamic>? changeToOperatingActivities,
    List<dynamic>? netIncome,
    List<dynamic>? changeInCash,
    List<dynamic>? beginPeriodCashFlow,
    List<dynamic>? endPeriodCashFlow,
    List<dynamic>? totalCashFromOperatingActivities,
    List<dynamic>? issuanceOfCapitalStock,
    List<dynamic>? depreciation,
    List<dynamic>? otherCashflowsFromInvestingActivities,
    List<dynamic>? dividendsPaid,
    List<dynamic>? changeToInventory,
    List<dynamic>? changeToAccountReceivables,
    List<dynamic>? salePurchaseOfStock,
    List<dynamic>? otherCashflowsFromFinancingActivities,
    List<dynamic>? changeToNetincome,
    List<dynamic>? capitalExpenditures,
    List<dynamic>? changeReceivables,
    List<dynamic>? cashFlowsOtherOperating,
    List<dynamic>? exchangeRateChanges,
    List<dynamic>? cashAndCashEquivalentsChanges,
    List<dynamic>? changeInWorkingCapital,
    List<dynamic>? stockBasedCompensation,
    List<dynamic>? otherNonCashItems,
    List<dynamic>? freeCashFlow,
    // Income Statement specific fields
    List<dynamic>? researchDevelopment,
    List<dynamic>? effectOfAccountingCharges,
    List<dynamic>? incomeBeforeTax,
    List<dynamic>? minorityInterest,
    List<dynamic>? sellingGeneralAdministrative,
    List<dynamic>? sellingAndMarketingExpenses,
    List<dynamic>? grossProfit,
    List<dynamic>? reconciledDepreciation,
    List<dynamic>? ebit,
    List<dynamic>? ebitda,
    List<dynamic>? depreciationAndAmortization,
    List<dynamic>? nonOperatingIncomeNetOther,
    List<dynamic>? operatingIncome,
    List<dynamic>? otherOperatingExpenses,
    List<dynamic>? interestExpense,
    List<dynamic>? taxProvision,
    List<dynamic>? interestIncome,
    List<dynamic>? netInterestIncome,
    List<dynamic>? extraordinaryItems,
    List<dynamic>? nonRecurring,
    List<dynamic>? otherItems,
    List<dynamic>? incomeTaxExpense,
    List<dynamic>? totalRevenue,
    List<dynamic>? totalOperatingExpenses,
    List<dynamic>? costOfRevenue,
    List<dynamic>? totalOtherIncomeExpenseNet,
    List<dynamic>? discontinuedOperations,
    List<dynamic>? netIncomeFromContinuingOps,
    List<dynamic>? netIncomeApplicableToCommonShares,
    List<dynamic>? preferredStockAndOtherAdjustments,
    // Common fields
    List<dynamic>? type,
    @JsonKey(name: 'stock_type') List<dynamic>? stockType,
  }) = _YearlyFinancialData;

  factory YearlyFinancialData.fromJson(Map<String, dynamic> json) =>
      _$YearlyFinancialDataFromJson(json);
}
