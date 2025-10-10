// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinancialResponse _$FinancialResponseFromJson(Map<String, dynamic> json) =>
    _FinancialResponse(
      data: FinancialData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
      status: (json['status'] as num).toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$FinancialResponseToJson(_FinancialResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_FinancialData _$FinancialDataFromJson(Map<String, dynamic> json) =>
    _FinancialData(
      financialsBalanceSheet: FinancialBalanceSheet.fromJson(
        json['financials_balance_sheet'] as Map<String, dynamic>,
      ),
      financialsCashFlow: FinancialCashFlow.fromJson(
        json['financials_cash_flow'] as Map<String, dynamic>,
      ),
      financialsIncomeStatement: FinancialIncomeStatement.fromJson(
        json['financials_income_statement'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FinancialDataToJson(_FinancialData instance) =>
    <String, dynamic>{
      'financials_balance_sheet': instance.financialsBalanceSheet,
      'financials_cash_flow': instance.financialsCashFlow,
      'financials_income_statement': instance.financialsIncomeStatement,
    };

_FinancialBalanceSheet _$FinancialBalanceSheetFromJson(
  Map<String, dynamic> json,
) => _FinancialBalanceSheet(
  chart: FinancialChart.fromJson(json['chart'] as Map<String, dynamic>),
  data: (json['data'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry(k, YearlyFinancialData.fromJson(e as Map<String, dynamic>)),
  ),
  currentRatio: (json['current_ratio'] as num).toDouble(),
);

Map<String, dynamic> _$FinancialBalanceSheetToJson(
  _FinancialBalanceSheet instance,
) => <String, dynamic>{
  'chart': instance.chart,
  'data': instance.data,
  'current_ratio': instance.currentRatio,
};

_FinancialCashFlow _$FinancialCashFlowFromJson(Map<String, dynamic> json) =>
    _FinancialCashFlow(
      chart: FinancialChart.fromJson(json['chart'] as Map<String, dynamic>),
      data: (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          YearlyFinancialData.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );

Map<String, dynamic> _$FinancialCashFlowToJson(_FinancialCashFlow instance) =>
    <String, dynamic>{'chart': instance.chart, 'data': instance.data};

_FinancialIncomeStatement _$FinancialIncomeStatementFromJson(
  Map<String, dynamic> json,
) => _FinancialIncomeStatement(
  chart: FinancialChart.fromJson(json['chart'] as Map<String, dynamic>),
  data: (json['data'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry(k, YearlyFinancialData.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$FinancialIncomeStatementToJson(
  _FinancialIncomeStatement instance,
) => <String, dynamic>{'chart': instance.chart, 'data': instance.data};

_FinancialChart _$FinancialChartFromJson(
  Map<String, dynamic> json,
) => _FinancialChart(
  totalAssets: (json['totalAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  intangibleAssets: (json['intangibleAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  earningAssets: (json['earningAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherCurrentAssets: (json['otherCurrentAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalLiab: (json['totalLiab'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalStockholderEquity: (json['totalStockholderEquity'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  deferredLongTermLiab: (json['deferredLongTermLiab'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherCurrentLiab: (json['otherCurrentLiab'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  commonStock: (json['commonStock'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  capitalStock: (json['capitalStock'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  retainedEarnings: (json['retainedEarnings'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherLiab: (json['otherLiab'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  goodWill: (json['goodWill'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherAssets: (json['otherAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  cash: (json['cash'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  cashAndEquivalents: (json['cashAndEquivalents'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCurrentLiabilities: (json['totalCurrentLiabilities'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  currentDeferredRevenue: (json['currentDeferredRevenue'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netDebt: (json['netDebt'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  shortTermDebt: (json['shortTermDebt'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  shortLongTermDebt: (json['shortLongTermDebt'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  shortLongTermDebtTotal: (json['shortLongTermDebtTotal'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherStockholderEquity: (json['otherStockholderEquity'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  propertyPlantEquipment: (json['propertyPlantEquipment'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCurrentAssets: (json['totalCurrentAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  longTermInvestments: (json['longTermInvestments'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netTangibleAssets: (json['netTangibleAssets'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  shortTermInvestments: (json['shortTermInvestments'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netReceivables: (json['netReceivables'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  longTermDebt: (json['longTermDebt'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  inventory: (json['inventory'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  accountsPayable: (json['accountsPayable'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPermanentEquity: (json['totalPermanentEquity'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  noncontrollingInterestInConsolidatedEntity:
      (json['noncontrollingInterestInConsolidatedEntity'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  temporaryEquityRedeemableNoncontrollingInterests:
      (json['temporaryEquityRedeemableNoncontrollingInterests']
              as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  accumulatedOtherComprehensiveIncome:
      (json['accumulatedOtherComprehensiveIncome'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  additionalPaidInCapital: (json['additionalPaidInCapital'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  commonStockTotalEquity: (json['commonStockTotalEquity'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  preferredStockTotalEquity:
      (json['preferredStockTotalEquity'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  retainedEarningsTotalEquity:
      (json['retainedEarningsTotalEquity'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  treasuryStock: (json['treasuryStock'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  accumulatedAmortization: (json['accumulatedAmortization'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  nonCurrrentAssetsOther: (json['nonCurrrentAssetsOther'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  deferredLongTermAssetCharges:
      (json['deferredLongTermAssetCharges'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  nonCurrentAssetsTotal: (json['nonCurrentAssetsTotal'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  capitalLeaseObligations: (json['capitalLeaseObligations'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  longTermDebtTotal: (json['longTermDebtTotal'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  nonCurrentLiabilitiesOther:
      (json['nonCurrentLiabilitiesOther'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  nonCurrentLiabilitiesTotal:
      (json['nonCurrentLiabilitiesTotal'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  negativeGoodwill: (json['negativeGoodwill'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  warrants: (json['warrants'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  preferredStockRedeemable: (json['preferredStockRedeemable'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  capitalSurpluse: (json['capitalSurpluse'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  liabilitiesAndStockholdersEquity:
      (json['liabilitiesAndStockholdersEquity'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  cashAndShortTermInvestments:
      (json['cashAndShortTermInvestments'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  propertyPlantAndEquipmentGross:
      (json['propertyPlantAndEquipmentGross'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  propertyPlantAndEquipmentNet:
      (json['propertyPlantAndEquipmentNet'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  accumulatedDepreciation: (json['accumulatedDepreciation'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netWorkingCapital: (json['netWorkingCapital'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netInvestedCapital: (json['netInvestedCapital'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  commonStockSharesOutstanding:
      (json['commonStockSharesOutstanding'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  investments: (json['investments'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  changeToLiabilities: (json['changeToLiabilities'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCashflowsFromInvestingActivities:
      (json['totalCashflowsFromInvestingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  netBorrowings: (json['netBorrowings'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCashFromFinancingActivities:
      (json['totalCashFromFinancingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  changeToOperatingActivities:
      (json['changeToOperatingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  netIncome: (json['netIncome'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  changeInCash: (json['changeInCash'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  beginPeriodCashFlow: (json['beginPeriodCashFlow'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  endPeriodCashFlow: (json['endPeriodCashFlow'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCashFromOperatingActivities:
      (json['totalCashFromOperatingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  issuanceOfCapitalStock: (json['issuanceOfCapitalStock'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  depreciation: (json['depreciation'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherCashflowsFromInvestingActivities:
      (json['otherCashflowsFromInvestingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  dividendsPaid: (json['dividendsPaid'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  changeToInventory: (json['changeToInventory'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  changeToAccountReceivables:
      (json['changeToAccountReceivables'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  salePurchaseOfStock: (json['salePurchaseOfStock'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherCashflowsFromFinancingActivities:
      (json['otherCashflowsFromFinancingActivities'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  changeToNetincome: (json['changeToNetincome'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  capitalExpenditures: (json['capitalExpenditures'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  changeReceivables: (json['changeReceivables'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  cashFlowsOtherOperating: (json['cashFlowsOtherOperating'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  exchangeRateChanges: (json['exchangeRateChanges'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  cashAndCashEquivalentsChanges:
      (json['cashAndCashEquivalentsChanges'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  changeInWorkingCapital: (json['changeInWorkingCapital'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  stockBasedCompensation: (json['stockBasedCompensation'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherNonCashItems: (json['otherNonCashItems'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  freeCashFlow: (json['freeCashFlow'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  researchDevelopment: (json['researchDevelopment'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  effectOfAccountingCharges:
      (json['effectOfAccountingCharges'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  incomeBeforeTax: (json['incomeBeforeTax'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  minorityInterest: (json['minorityInterest'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  sellingGeneralAdministrative:
      (json['sellingGeneralAdministrative'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  sellingAndMarketingExpenses:
      (json['sellingAndMarketingExpenses'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  grossProfit: (json['grossProfit'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  reconciledDepreciation: (json['reconciledDepreciation'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  ebit: (json['ebit'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  ebitda: (json['ebitda'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  depreciationAndAmortization:
      (json['depreciationAndAmortization'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  nonOperatingIncomeNetOther:
      (json['nonOperatingIncomeNetOther'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  operatingIncome: (json['operatingIncome'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherOperatingExpenses: (json['otherOperatingExpenses'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  interestExpense: (json['interestExpense'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  taxProvision: (json['taxProvision'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  interestIncome: (json['interestIncome'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netInterestIncome: (json['netInterestIncome'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  extraordinaryItems: (json['extraordinaryItems'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  nonRecurring: (json['nonRecurring'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  otherItems: (json['otherItems'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  incomeTaxExpense: (json['incomeTaxExpense'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalRevenue: (json['totalRevenue'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalOperatingExpenses: (json['totalOperatingExpenses'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  costOfRevenue: (json['costOfRevenue'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalOtherIncomeExpenseNet:
      (json['totalOtherIncomeExpenseNet'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  discontinuedOperations: (json['discontinuedOperations'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  netIncomeFromContinuingOps:
      (json['netIncomeFromContinuingOps'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  netIncomeApplicableToCommonShares:
      (json['netIncomeApplicableToCommonShares'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  preferredStockAndOtherAdjustments:
      (json['preferredStockAndOtherAdjustments'] as List<dynamic>?)
          ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
  type: (json['type'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
  stockType: (json['stock_type'] as List<dynamic>?)
      ?.map((e) => FinancialDataPoint.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FinancialChartToJson(
  _FinancialChart instance,
) => <String, dynamic>{
  'totalAssets': instance.totalAssets,
  'intangibleAssets': instance.intangibleAssets,
  'earningAssets': instance.earningAssets,
  'otherCurrentAssets': instance.otherCurrentAssets,
  'totalLiab': instance.totalLiab,
  'totalStockholderEquity': instance.totalStockholderEquity,
  'deferredLongTermLiab': instance.deferredLongTermLiab,
  'otherCurrentLiab': instance.otherCurrentLiab,
  'commonStock': instance.commonStock,
  'capitalStock': instance.capitalStock,
  'retainedEarnings': instance.retainedEarnings,
  'otherLiab': instance.otherLiab,
  'goodWill': instance.goodWill,
  'otherAssets': instance.otherAssets,
  'cash': instance.cash,
  'cashAndEquivalents': instance.cashAndEquivalents,
  'totalCurrentLiabilities': instance.totalCurrentLiabilities,
  'currentDeferredRevenue': instance.currentDeferredRevenue,
  'netDebt': instance.netDebt,
  'shortTermDebt': instance.shortTermDebt,
  'shortLongTermDebt': instance.shortLongTermDebt,
  'shortLongTermDebtTotal': instance.shortLongTermDebtTotal,
  'otherStockholderEquity': instance.otherStockholderEquity,
  'propertyPlantEquipment': instance.propertyPlantEquipment,
  'totalCurrentAssets': instance.totalCurrentAssets,
  'longTermInvestments': instance.longTermInvestments,
  'netTangibleAssets': instance.netTangibleAssets,
  'shortTermInvestments': instance.shortTermInvestments,
  'netReceivables': instance.netReceivables,
  'longTermDebt': instance.longTermDebt,
  'inventory': instance.inventory,
  'accountsPayable': instance.accountsPayable,
  'totalPermanentEquity': instance.totalPermanentEquity,
  'noncontrollingInterestInConsolidatedEntity':
      instance.noncontrollingInterestInConsolidatedEntity,
  'temporaryEquityRedeemableNoncontrollingInterests':
      instance.temporaryEquityRedeemableNoncontrollingInterests,
  'accumulatedOtherComprehensiveIncome':
      instance.accumulatedOtherComprehensiveIncome,
  'additionalPaidInCapital': instance.additionalPaidInCapital,
  'commonStockTotalEquity': instance.commonStockTotalEquity,
  'preferredStockTotalEquity': instance.preferredStockTotalEquity,
  'retainedEarningsTotalEquity': instance.retainedEarningsTotalEquity,
  'treasuryStock': instance.treasuryStock,
  'accumulatedAmortization': instance.accumulatedAmortization,
  'nonCurrrentAssetsOther': instance.nonCurrrentAssetsOther,
  'deferredLongTermAssetCharges': instance.deferredLongTermAssetCharges,
  'nonCurrentAssetsTotal': instance.nonCurrentAssetsTotal,
  'capitalLeaseObligations': instance.capitalLeaseObligations,
  'longTermDebtTotal': instance.longTermDebtTotal,
  'nonCurrentLiabilitiesOther': instance.nonCurrentLiabilitiesOther,
  'nonCurrentLiabilitiesTotal': instance.nonCurrentLiabilitiesTotal,
  'negativeGoodwill': instance.negativeGoodwill,
  'warrants': instance.warrants,
  'preferredStockRedeemable': instance.preferredStockRedeemable,
  'capitalSurpluse': instance.capitalSurpluse,
  'liabilitiesAndStockholdersEquity': instance.liabilitiesAndStockholdersEquity,
  'cashAndShortTermInvestments': instance.cashAndShortTermInvestments,
  'propertyPlantAndEquipmentGross': instance.propertyPlantAndEquipmentGross,
  'propertyPlantAndEquipmentNet': instance.propertyPlantAndEquipmentNet,
  'accumulatedDepreciation': instance.accumulatedDepreciation,
  'netWorkingCapital': instance.netWorkingCapital,
  'netInvestedCapital': instance.netInvestedCapital,
  'commonStockSharesOutstanding': instance.commonStockSharesOutstanding,
  'investments': instance.investments,
  'changeToLiabilities': instance.changeToLiabilities,
  'totalCashflowsFromInvestingActivities':
      instance.totalCashflowsFromInvestingActivities,
  'netBorrowings': instance.netBorrowings,
  'totalCashFromFinancingActivities': instance.totalCashFromFinancingActivities,
  'changeToOperatingActivities': instance.changeToOperatingActivities,
  'netIncome': instance.netIncome,
  'changeInCash': instance.changeInCash,
  'beginPeriodCashFlow': instance.beginPeriodCashFlow,
  'endPeriodCashFlow': instance.endPeriodCashFlow,
  'totalCashFromOperatingActivities': instance.totalCashFromOperatingActivities,
  'issuanceOfCapitalStock': instance.issuanceOfCapitalStock,
  'depreciation': instance.depreciation,
  'otherCashflowsFromInvestingActivities':
      instance.otherCashflowsFromInvestingActivities,
  'dividendsPaid': instance.dividendsPaid,
  'changeToInventory': instance.changeToInventory,
  'changeToAccountReceivables': instance.changeToAccountReceivables,
  'salePurchaseOfStock': instance.salePurchaseOfStock,
  'otherCashflowsFromFinancingActivities':
      instance.otherCashflowsFromFinancingActivities,
  'changeToNetincome': instance.changeToNetincome,
  'capitalExpenditures': instance.capitalExpenditures,
  'changeReceivables': instance.changeReceivables,
  'cashFlowsOtherOperating': instance.cashFlowsOtherOperating,
  'exchangeRateChanges': instance.exchangeRateChanges,
  'cashAndCashEquivalentsChanges': instance.cashAndCashEquivalentsChanges,
  'changeInWorkingCapital': instance.changeInWorkingCapital,
  'stockBasedCompensation': instance.stockBasedCompensation,
  'otherNonCashItems': instance.otherNonCashItems,
  'freeCashFlow': instance.freeCashFlow,
  'researchDevelopment': instance.researchDevelopment,
  'effectOfAccountingCharges': instance.effectOfAccountingCharges,
  'incomeBeforeTax': instance.incomeBeforeTax,
  'minorityInterest': instance.minorityInterest,
  'sellingGeneralAdministrative': instance.sellingGeneralAdministrative,
  'sellingAndMarketingExpenses': instance.sellingAndMarketingExpenses,
  'grossProfit': instance.grossProfit,
  'reconciledDepreciation': instance.reconciledDepreciation,
  'ebit': instance.ebit,
  'ebitda': instance.ebitda,
  'depreciationAndAmortization': instance.depreciationAndAmortization,
  'nonOperatingIncomeNetOther': instance.nonOperatingIncomeNetOther,
  'operatingIncome': instance.operatingIncome,
  'otherOperatingExpenses': instance.otherOperatingExpenses,
  'interestExpense': instance.interestExpense,
  'taxProvision': instance.taxProvision,
  'interestIncome': instance.interestIncome,
  'netInterestIncome': instance.netInterestIncome,
  'extraordinaryItems': instance.extraordinaryItems,
  'nonRecurring': instance.nonRecurring,
  'otherItems': instance.otherItems,
  'incomeTaxExpense': instance.incomeTaxExpense,
  'totalRevenue': instance.totalRevenue,
  'totalOperatingExpenses': instance.totalOperatingExpenses,
  'costOfRevenue': instance.costOfRevenue,
  'totalOtherIncomeExpenseNet': instance.totalOtherIncomeExpenseNet,
  'discontinuedOperations': instance.discontinuedOperations,
  'netIncomeFromContinuingOps': instance.netIncomeFromContinuingOps,
  'netIncomeApplicableToCommonShares':
      instance.netIncomeApplicableToCommonShares,
  'preferredStockAndOtherAdjustments':
      instance.preferredStockAndOtherAdjustments,
  'type': instance.type,
  'stock_type': instance.stockType,
};

_FinancialDataPoint _$FinancialDataPointFromJson(Map<String, dynamic> json) =>
    _FinancialDataPoint(x: json['x'] as String, y: json['y']);

Map<String, dynamic> _$FinancialDataPointToJson(_FinancialDataPoint instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_YearlyFinancialData _$YearlyFinancialDataFromJson(
  Map<String, dynamic> json,
) => _YearlyFinancialData(
  totalAssets: json['totalAssets'] as List<dynamic>?,
  intangibleAssets: json['intangibleAssets'] as List<dynamic>?,
  earningAssets: json['earningAssets'] as List<dynamic>?,
  otherCurrentAssets: json['otherCurrentAssets'] as List<dynamic>?,
  totalLiab: json['totalLiab'] as List<dynamic>?,
  totalStockholderEquity: json['totalStockholderEquity'] as List<dynamic>?,
  deferredLongTermLiab: json['deferredLongTermLiab'] as List<dynamic>?,
  otherCurrentLiab: json['otherCurrentLiab'] as List<dynamic>?,
  commonStock: json['commonStock'] as List<dynamic>?,
  capitalStock: json['capitalStock'] as List<dynamic>?,
  retainedEarnings: json['retainedEarnings'] as List<dynamic>?,
  otherLiab: json['otherLiab'] as List<dynamic>?,
  goodWill: json['goodWill'] as List<dynamic>?,
  otherAssets: json['otherAssets'] as List<dynamic>?,
  cash: json['cash'] as List<dynamic>?,
  cashAndEquivalents: json['cashAndEquivalents'] as List<dynamic>?,
  totalCurrentLiabilities: json['totalCurrentLiabilities'] as List<dynamic>?,
  currentDeferredRevenue: json['currentDeferredRevenue'] as List<dynamic>?,
  netDebt: json['netDebt'] as List<dynamic>?,
  shortTermDebt: json['shortTermDebt'] as List<dynamic>?,
  shortLongTermDebt: json['shortLongTermDebt'] as List<dynamic>?,
  shortLongTermDebtTotal: json['shortLongTermDebtTotal'] as List<dynamic>?,
  otherStockholderEquity: json['otherStockholderEquity'] as List<dynamic>?,
  propertyPlantEquipment: json['propertyPlantEquipment'] as List<dynamic>?,
  totalCurrentAssets: json['totalCurrentAssets'] as List<dynamic>?,
  longTermInvestments: json['longTermInvestments'] as List<dynamic>?,
  netTangibleAssets: json['netTangibleAssets'] as List<dynamic>?,
  shortTermInvestments: json['shortTermInvestments'] as List<dynamic>?,
  netReceivables: json['netReceivables'] as List<dynamic>?,
  longTermDebt: json['longTermDebt'] as List<dynamic>?,
  inventory: json['inventory'] as List<dynamic>?,
  accountsPayable: json['accountsPayable'] as List<dynamic>?,
  totalPermanentEquity: json['totalPermanentEquity'] as List<dynamic>?,
  noncontrollingInterestInConsolidatedEntity:
      json['noncontrollingInterestInConsolidatedEntity'] as List<dynamic>?,
  temporaryEquityRedeemableNoncontrollingInterests:
      json['temporaryEquityRedeemableNoncontrollingInterests']
          as List<dynamic>?,
  accumulatedOtherComprehensiveIncome:
      json['accumulatedOtherComprehensiveIncome'] as List<dynamic>?,
  additionalPaidInCapital: json['additionalPaidInCapital'] as List<dynamic>?,
  commonStockTotalEquity: json['commonStockTotalEquity'] as List<dynamic>?,
  preferredStockTotalEquity:
      json['preferredStockTotalEquity'] as List<dynamic>?,
  retainedEarningsTotalEquity:
      json['retainedEarningsTotalEquity'] as List<dynamic>?,
  treasuryStock: json['treasuryStock'] as List<dynamic>?,
  accumulatedAmortization: json['accumulatedAmortization'] as List<dynamic>?,
  nonCurrrentAssetsOther: json['nonCurrrentAssetsOther'] as List<dynamic>?,
  deferredLongTermAssetCharges:
      json['deferredLongTermAssetCharges'] as List<dynamic>?,
  nonCurrentAssetsTotal: json['nonCurrentAssetsTotal'] as List<dynamic>?,
  capitalLeaseObligations: json['capitalLeaseObligations'] as List<dynamic>?,
  longTermDebtTotal: json['longTermDebtTotal'] as List<dynamic>?,
  nonCurrentLiabilitiesOther:
      json['nonCurrentLiabilitiesOther'] as List<dynamic>?,
  nonCurrentLiabilitiesTotal:
      json['nonCurrentLiabilitiesTotal'] as List<dynamic>?,
  negativeGoodwill: json['negativeGoodwill'] as List<dynamic>?,
  warrants: json['warrants'] as List<dynamic>?,
  preferredStockRedeemable: json['preferredStockRedeemable'] as List<dynamic>?,
  capitalSurpluse: json['capitalSurpluse'] as List<dynamic>?,
  liabilitiesAndStockholdersEquity:
      json['liabilitiesAndStockholdersEquity'] as List<dynamic>?,
  cashAndShortTermInvestments:
      json['cashAndShortTermInvestments'] as List<dynamic>?,
  propertyPlantAndEquipmentGross:
      json['propertyPlantAndEquipmentGross'] as List<dynamic>?,
  propertyPlantAndEquipmentNet:
      json['propertyPlantAndEquipmentNet'] as List<dynamic>?,
  accumulatedDepreciation: json['accumulatedDepreciation'] as List<dynamic>?,
  netWorkingCapital: json['netWorkingCapital'] as List<dynamic>?,
  netInvestedCapital: json['netInvestedCapital'] as List<dynamic>?,
  commonStockSharesOutstanding:
      json['commonStockSharesOutstanding'] as List<dynamic>?,
  investments: json['investments'] as List<dynamic>?,
  changeToLiabilities: json['changeToLiabilities'] as List<dynamic>?,
  totalCashflowsFromInvestingActivities:
      json['totalCashflowsFromInvestingActivities'] as List<dynamic>?,
  netBorrowings: json['netBorrowings'] as List<dynamic>?,
  totalCashFromFinancingActivities:
      json['totalCashFromFinancingActivities'] as List<dynamic>?,
  changeToOperatingActivities:
      json['changeToOperatingActivities'] as List<dynamic>?,
  netIncome: json['netIncome'] as List<dynamic>?,
  changeInCash: json['changeInCash'] as List<dynamic>?,
  beginPeriodCashFlow: json['beginPeriodCashFlow'] as List<dynamic>?,
  endPeriodCashFlow: json['endPeriodCashFlow'] as List<dynamic>?,
  totalCashFromOperatingActivities:
      json['totalCashFromOperatingActivities'] as List<dynamic>?,
  issuanceOfCapitalStock: json['issuanceOfCapitalStock'] as List<dynamic>?,
  depreciation: json['depreciation'] as List<dynamic>?,
  otherCashflowsFromInvestingActivities:
      json['otherCashflowsFromInvestingActivities'] as List<dynamic>?,
  dividendsPaid: json['dividendsPaid'] as List<dynamic>?,
  changeToInventory: json['changeToInventory'] as List<dynamic>?,
  changeToAccountReceivables:
      json['changeToAccountReceivables'] as List<dynamic>?,
  salePurchaseOfStock: json['salePurchaseOfStock'] as List<dynamic>?,
  otherCashflowsFromFinancingActivities:
      json['otherCashflowsFromFinancingActivities'] as List<dynamic>?,
  changeToNetincome: json['changeToNetincome'] as List<dynamic>?,
  capitalExpenditures: json['capitalExpenditures'] as List<dynamic>?,
  changeReceivables: json['changeReceivables'] as List<dynamic>?,
  cashFlowsOtherOperating: json['cashFlowsOtherOperating'] as List<dynamic>?,
  exchangeRateChanges: json['exchangeRateChanges'] as List<dynamic>?,
  cashAndCashEquivalentsChanges:
      json['cashAndCashEquivalentsChanges'] as List<dynamic>?,
  changeInWorkingCapital: json['changeInWorkingCapital'] as List<dynamic>?,
  stockBasedCompensation: json['stockBasedCompensation'] as List<dynamic>?,
  otherNonCashItems: json['otherNonCashItems'] as List<dynamic>?,
  freeCashFlow: json['freeCashFlow'] as List<dynamic>?,
  researchDevelopment: json['researchDevelopment'] as List<dynamic>?,
  effectOfAccountingCharges:
      json['effectOfAccountingCharges'] as List<dynamic>?,
  incomeBeforeTax: json['incomeBeforeTax'] as List<dynamic>?,
  minorityInterest: json['minorityInterest'] as List<dynamic>?,
  sellingGeneralAdministrative:
      json['sellingGeneralAdministrative'] as List<dynamic>?,
  sellingAndMarketingExpenses:
      json['sellingAndMarketingExpenses'] as List<dynamic>?,
  grossProfit: json['grossProfit'] as List<dynamic>?,
  reconciledDepreciation: json['reconciledDepreciation'] as List<dynamic>?,
  ebit: json['ebit'] as List<dynamic>?,
  ebitda: json['ebitda'] as List<dynamic>?,
  depreciationAndAmortization:
      json['depreciationAndAmortization'] as List<dynamic>?,
  nonOperatingIncomeNetOther:
      json['nonOperatingIncomeNetOther'] as List<dynamic>?,
  operatingIncome: json['operatingIncome'] as List<dynamic>?,
  otherOperatingExpenses: json['otherOperatingExpenses'] as List<dynamic>?,
  interestExpense: json['interestExpense'] as List<dynamic>?,
  taxProvision: json['taxProvision'] as List<dynamic>?,
  interestIncome: json['interestIncome'] as List<dynamic>?,
  netInterestIncome: json['netInterestIncome'] as List<dynamic>?,
  extraordinaryItems: json['extraordinaryItems'] as List<dynamic>?,
  nonRecurring: json['nonRecurring'] as List<dynamic>?,
  otherItems: json['otherItems'] as List<dynamic>?,
  incomeTaxExpense: json['incomeTaxExpense'] as List<dynamic>?,
  totalRevenue: json['totalRevenue'] as List<dynamic>?,
  totalOperatingExpenses: json['totalOperatingExpenses'] as List<dynamic>?,
  costOfRevenue: json['costOfRevenue'] as List<dynamic>?,
  totalOtherIncomeExpenseNet:
      json['totalOtherIncomeExpenseNet'] as List<dynamic>?,
  discontinuedOperations: json['discontinuedOperations'] as List<dynamic>?,
  netIncomeFromContinuingOps:
      json['netIncomeFromContinuingOps'] as List<dynamic>?,
  netIncomeApplicableToCommonShares:
      json['netIncomeApplicableToCommonShares'] as List<dynamic>?,
  preferredStockAndOtherAdjustments:
      json['preferredStockAndOtherAdjustments'] as List<dynamic>?,
  type: json['type'] as List<dynamic>?,
  stockType: json['stock_type'] as List<dynamic>?,
);

Map<String, dynamic> _$YearlyFinancialDataToJson(
  _YearlyFinancialData instance,
) => <String, dynamic>{
  'totalAssets': instance.totalAssets,
  'intangibleAssets': instance.intangibleAssets,
  'earningAssets': instance.earningAssets,
  'otherCurrentAssets': instance.otherCurrentAssets,
  'totalLiab': instance.totalLiab,
  'totalStockholderEquity': instance.totalStockholderEquity,
  'deferredLongTermLiab': instance.deferredLongTermLiab,
  'otherCurrentLiab': instance.otherCurrentLiab,
  'commonStock': instance.commonStock,
  'capitalStock': instance.capitalStock,
  'retainedEarnings': instance.retainedEarnings,
  'otherLiab': instance.otherLiab,
  'goodWill': instance.goodWill,
  'otherAssets': instance.otherAssets,
  'cash': instance.cash,
  'cashAndEquivalents': instance.cashAndEquivalents,
  'totalCurrentLiabilities': instance.totalCurrentLiabilities,
  'currentDeferredRevenue': instance.currentDeferredRevenue,
  'netDebt': instance.netDebt,
  'shortTermDebt': instance.shortTermDebt,
  'shortLongTermDebt': instance.shortLongTermDebt,
  'shortLongTermDebtTotal': instance.shortLongTermDebtTotal,
  'otherStockholderEquity': instance.otherStockholderEquity,
  'propertyPlantEquipment': instance.propertyPlantEquipment,
  'totalCurrentAssets': instance.totalCurrentAssets,
  'longTermInvestments': instance.longTermInvestments,
  'netTangibleAssets': instance.netTangibleAssets,
  'shortTermInvestments': instance.shortTermInvestments,
  'netReceivables': instance.netReceivables,
  'longTermDebt': instance.longTermDebt,
  'inventory': instance.inventory,
  'accountsPayable': instance.accountsPayable,
  'totalPermanentEquity': instance.totalPermanentEquity,
  'noncontrollingInterestInConsolidatedEntity':
      instance.noncontrollingInterestInConsolidatedEntity,
  'temporaryEquityRedeemableNoncontrollingInterests':
      instance.temporaryEquityRedeemableNoncontrollingInterests,
  'accumulatedOtherComprehensiveIncome':
      instance.accumulatedOtherComprehensiveIncome,
  'additionalPaidInCapital': instance.additionalPaidInCapital,
  'commonStockTotalEquity': instance.commonStockTotalEquity,
  'preferredStockTotalEquity': instance.preferredStockTotalEquity,
  'retainedEarningsTotalEquity': instance.retainedEarningsTotalEquity,
  'treasuryStock': instance.treasuryStock,
  'accumulatedAmortization': instance.accumulatedAmortization,
  'nonCurrrentAssetsOther': instance.nonCurrrentAssetsOther,
  'deferredLongTermAssetCharges': instance.deferredLongTermAssetCharges,
  'nonCurrentAssetsTotal': instance.nonCurrentAssetsTotal,
  'capitalLeaseObligations': instance.capitalLeaseObligations,
  'longTermDebtTotal': instance.longTermDebtTotal,
  'nonCurrentLiabilitiesOther': instance.nonCurrentLiabilitiesOther,
  'nonCurrentLiabilitiesTotal': instance.nonCurrentLiabilitiesTotal,
  'negativeGoodwill': instance.negativeGoodwill,
  'warrants': instance.warrants,
  'preferredStockRedeemable': instance.preferredStockRedeemable,
  'capitalSurpluse': instance.capitalSurpluse,
  'liabilitiesAndStockholdersEquity': instance.liabilitiesAndStockholdersEquity,
  'cashAndShortTermInvestments': instance.cashAndShortTermInvestments,
  'propertyPlantAndEquipmentGross': instance.propertyPlantAndEquipmentGross,
  'propertyPlantAndEquipmentNet': instance.propertyPlantAndEquipmentNet,
  'accumulatedDepreciation': instance.accumulatedDepreciation,
  'netWorkingCapital': instance.netWorkingCapital,
  'netInvestedCapital': instance.netInvestedCapital,
  'commonStockSharesOutstanding': instance.commonStockSharesOutstanding,
  'investments': instance.investments,
  'changeToLiabilities': instance.changeToLiabilities,
  'totalCashflowsFromInvestingActivities':
      instance.totalCashflowsFromInvestingActivities,
  'netBorrowings': instance.netBorrowings,
  'totalCashFromFinancingActivities': instance.totalCashFromFinancingActivities,
  'changeToOperatingActivities': instance.changeToOperatingActivities,
  'netIncome': instance.netIncome,
  'changeInCash': instance.changeInCash,
  'beginPeriodCashFlow': instance.beginPeriodCashFlow,
  'endPeriodCashFlow': instance.endPeriodCashFlow,
  'totalCashFromOperatingActivities': instance.totalCashFromOperatingActivities,
  'issuanceOfCapitalStock': instance.issuanceOfCapitalStock,
  'depreciation': instance.depreciation,
  'otherCashflowsFromInvestingActivities':
      instance.otherCashflowsFromInvestingActivities,
  'dividendsPaid': instance.dividendsPaid,
  'changeToInventory': instance.changeToInventory,
  'changeToAccountReceivables': instance.changeToAccountReceivables,
  'salePurchaseOfStock': instance.salePurchaseOfStock,
  'otherCashflowsFromFinancingActivities':
      instance.otherCashflowsFromFinancingActivities,
  'changeToNetincome': instance.changeToNetincome,
  'capitalExpenditures': instance.capitalExpenditures,
  'changeReceivables': instance.changeReceivables,
  'cashFlowsOtherOperating': instance.cashFlowsOtherOperating,
  'exchangeRateChanges': instance.exchangeRateChanges,
  'cashAndCashEquivalentsChanges': instance.cashAndCashEquivalentsChanges,
  'changeInWorkingCapital': instance.changeInWorkingCapital,
  'stockBasedCompensation': instance.stockBasedCompensation,
  'otherNonCashItems': instance.otherNonCashItems,
  'freeCashFlow': instance.freeCashFlow,
  'researchDevelopment': instance.researchDevelopment,
  'effectOfAccountingCharges': instance.effectOfAccountingCharges,
  'incomeBeforeTax': instance.incomeBeforeTax,
  'minorityInterest': instance.minorityInterest,
  'sellingGeneralAdministrative': instance.sellingGeneralAdministrative,
  'sellingAndMarketingExpenses': instance.sellingAndMarketingExpenses,
  'grossProfit': instance.grossProfit,
  'reconciledDepreciation': instance.reconciledDepreciation,
  'ebit': instance.ebit,
  'ebitda': instance.ebitda,
  'depreciationAndAmortization': instance.depreciationAndAmortization,
  'nonOperatingIncomeNetOther': instance.nonOperatingIncomeNetOther,
  'operatingIncome': instance.operatingIncome,
  'otherOperatingExpenses': instance.otherOperatingExpenses,
  'interestExpense': instance.interestExpense,
  'taxProvision': instance.taxProvision,
  'interestIncome': instance.interestIncome,
  'netInterestIncome': instance.netInterestIncome,
  'extraordinaryItems': instance.extraordinaryItems,
  'nonRecurring': instance.nonRecurring,
  'otherItems': instance.otherItems,
  'incomeTaxExpense': instance.incomeTaxExpense,
  'totalRevenue': instance.totalRevenue,
  'totalOperatingExpenses': instance.totalOperatingExpenses,
  'costOfRevenue': instance.costOfRevenue,
  'totalOtherIncomeExpenseNet': instance.totalOtherIncomeExpenseNet,
  'discontinuedOperations': instance.discontinuedOperations,
  'netIncomeFromContinuingOps': instance.netIncomeFromContinuingOps,
  'netIncomeApplicableToCommonShares':
      instance.netIncomeApplicableToCommonShares,
  'preferredStockAndOtherAdjustments':
      instance.preferredStockAndOtherAdjustments,
  'type': instance.type,
  'stock_type': instance.stockType,
};
