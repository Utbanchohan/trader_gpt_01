// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrics_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatricsResponse _$MatricsResponseFromJson(Map<String, dynamic> json) =>
    _MatricsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MatricsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$MatricsResponseToJson(_MatricsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_MatricsData _$MatricsDataFromJson(Map<String, dynamic> json) => _MatricsData(
  revenuePerShare: (json['revenue_per_share'] as num?)?.toDouble(),
  netIncomePerShare: (json['net_income_per_share'] as num?)?.toDouble(),
  operatingCashFlowPerShare: (json['operating_cash_flow_per_share'] as num?)
      ?.toDouble(),
  freeCashFlowPerShare: (json['free_cash_flow_per_share'] as num?)?.toDouble(),
  cashPerShare: (json['cash_per_share'] as num?)?.toDouble(),
  bookValuePerShare: (json['book_value_per_share'] as num?)?.toDouble(),
  tangibleBookValuePerShare: (json['tangible_book_value_per_share'] as num?)
      ?.toDouble(),
  shareholdersEquityPerShare: (json['shareholders_equity_per_share'] as num?)
      ?.toDouble(),
  interestDebtPerShare: (json['interest_debt_per_share'] as num?)?.toDouble(),
  marketCap: (json['market_cap'] as num?)?.toDouble(),
  enterpriseValue: (json['enterprise_value'] as num?)?.toDouble(),
  peRatio: (json['pe_ratio'] as num?)?.toDouble(),
  priceToSalesRatio: (json['price_to_sales_ratio'] as num?)?.toDouble(),
  pocfRatio: (json['pocfratio'] as num?)?.toDouble(),
  pfcfRatio: (json['pfcf_ratio'] as num?)?.toDouble(),
  pbRatio: (json['pb_ratio'] as num?)?.toDouble(),
  ptbRatio: (json['ptb_ratio'] as num?)?.toDouble(),
  evToSales: (json['ev_to_sales'] as num?)?.toDouble(),
  enterpriseValueOverEbitda: (json['enterprise_value_over_ebitda'] as num?)
      ?.toDouble(),
  evToOperatingCashFlow: (json['ev_to_operating_cash_flow'] as num?)
      ?.toDouble(),
  evToFreeCashFlow: (json['ev_to_free_cash_flow'] as num?)?.toDouble(),
  earningsYield: (json['earnings_yield'] as num?)?.toDouble(),
  freeCashFlowYield: (json['free_cash_flow_yield'] as num?)?.toDouble(),
  debtToEquity: (json['debt_to_equity'] as num?)?.toDouble(),
  debtToAssets: (json['debt_to_assets'] as num?)?.toDouble(),
  netDebtToEbitda: (json['net_debt_to_ebitda'] as num?)?.toDouble(),
  currentRatio: (json['current_ratio'] as num?)?.toDouble(),
  interestCoverage: (json['interest_coverage'] as num?)?.toDouble(),
  incomeQuality: (json['income_quality'] as num?)?.toDouble(),
  dividendYield: (json['dividend_yield'] as num?)?.toDouble(),
  payoutRatio: (json['payout_ratio'] as num?)?.toDouble(),
  salesGeneralAndAdministrativeToRevenue:
      (json['sales_general_and_administrative_to_revenue'] as num?)?.toDouble(),
  researchAndDevelopementToRevenue:
      (json['research_and_developement_to_revenue'] as num?)?.toDouble(),
  intangiblesToTotalAssets: (json['intangibles_to_total_assets'] as num?)
      ?.toDouble(),
  capexToOperatingCashFlow: (json['capex_to_operating_cash_flow'] as num?)
      ?.toDouble(),
  capexToRevenue: (json['capex_to_revenue'] as num?)?.toDouble(),
  capexToDepreciation: (json['capex_to_depreciation'] as num?)?.toDouble(),
  stockBasedCompensationToRevenue:
      (json['stock_based_compensation_to_revenue'] as num?)?.toDouble(),
  grahamNumber: (json['graham_number'] as num?)?.toDouble(),
  roic: (json['roic'] as num?)?.toDouble(),
  returnOnTangibleAssets: (json['return_on_tangible_assets'] as num?)
      ?.toDouble(),
  grahamNetNet: (json['graham_net_net'] as num?)?.toDouble(),
  workingCapital: (json['working_capital'] as num?)?.toDouble(),
  tangibleAssetValue: (json['tangible_asset_value'] as num?)?.toDouble(),
  netCurrentAssetValue: (json['net_current_asset_value'] as num?)?.toDouble(),
  investedCapital: (json['invested_capital'] as num?)?.toDouble(),
  averageReceivables: (json['average_receivables'] as num?)?.toDouble(),
  averagePayables: (json['average_payables'] as num?)?.toDouble(),
  averageInventory: (json['average_inventory'] as num?)?.toDouble(),
  daysSalesOutstanding: (json['days_sales_outstanding'] as num?)?.toDouble(),
  daysPayablesOutstanding: (json['days_payables_outstanding'] as num?)
      ?.toDouble(),
  daysOfInventoryOnHand: (json['days_of_inventory_on_hand'] as num?)
      ?.toDouble(),
  receivablesTurnover: (json['receivables_turnover'] as num?)?.toDouble(),
  payablesTurnover: (json['payables_turnover'] as num?)?.toDouble(),
  inventoryTurnover: (json['inventory_turnover'] as num?)?.toDouble(),
  roe: (json['roe'] as num?)?.toDouble(),
  capexPerShare: (json['capex_per_share'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MatricsDataToJson(_MatricsData instance) =>
    <String, dynamic>{
      'revenue_per_share': instance.revenuePerShare,
      'net_income_per_share': instance.netIncomePerShare,
      'operating_cash_flow_per_share': instance.operatingCashFlowPerShare,
      'free_cash_flow_per_share': instance.freeCashFlowPerShare,
      'cash_per_share': instance.cashPerShare,
      'book_value_per_share': instance.bookValuePerShare,
      'tangible_book_value_per_share': instance.tangibleBookValuePerShare,
      'shareholders_equity_per_share': instance.shareholdersEquityPerShare,
      'interest_debt_per_share': instance.interestDebtPerShare,
      'market_cap': instance.marketCap,
      'enterprise_value': instance.enterpriseValue,
      'pe_ratio': instance.peRatio,
      'price_to_sales_ratio': instance.priceToSalesRatio,
      'pocfratio': instance.pocfRatio,
      'pfcf_ratio': instance.pfcfRatio,
      'pb_ratio': instance.pbRatio,
      'ptb_ratio': instance.ptbRatio,
      'ev_to_sales': instance.evToSales,
      'enterprise_value_over_ebitda': instance.enterpriseValueOverEbitda,
      'ev_to_operating_cash_flow': instance.evToOperatingCashFlow,
      'ev_to_free_cash_flow': instance.evToFreeCashFlow,
      'earnings_yield': instance.earningsYield,
      'free_cash_flow_yield': instance.freeCashFlowYield,
      'debt_to_equity': instance.debtToEquity,
      'debt_to_assets': instance.debtToAssets,
      'net_debt_to_ebitda': instance.netDebtToEbitda,
      'current_ratio': instance.currentRatio,
      'interest_coverage': instance.interestCoverage,
      'income_quality': instance.incomeQuality,
      'dividend_yield': instance.dividendYield,
      'payout_ratio': instance.payoutRatio,
      'sales_general_and_administrative_to_revenue':
          instance.salesGeneralAndAdministrativeToRevenue,
      'research_and_developement_to_revenue':
          instance.researchAndDevelopementToRevenue,
      'intangibles_to_total_assets': instance.intangiblesToTotalAssets,
      'capex_to_operating_cash_flow': instance.capexToOperatingCashFlow,
      'capex_to_revenue': instance.capexToRevenue,
      'capex_to_depreciation': instance.capexToDepreciation,
      'stock_based_compensation_to_revenue':
          instance.stockBasedCompensationToRevenue,
      'graham_number': instance.grahamNumber,
      'roic': instance.roic,
      'return_on_tangible_assets': instance.returnOnTangibleAssets,
      'graham_net_net': instance.grahamNetNet,
      'working_capital': instance.workingCapital,
      'tangible_asset_value': instance.tangibleAssetValue,
      'net_current_asset_value': instance.netCurrentAssetValue,
      'invested_capital': instance.investedCapital,
      'average_receivables': instance.averageReceivables,
      'average_payables': instance.averagePayables,
      'average_inventory': instance.averageInventory,
      'days_sales_outstanding': instance.daysSalesOutstanding,
      'days_payables_outstanding': instance.daysPayablesOutstanding,
      'days_of_inventory_on_hand': instance.daysOfInventoryOnHand,
      'receivables_turnover': instance.receivablesTurnover,
      'payables_turnover': instance.payablesTurnover,
      'inventory_turnover': instance.inventoryTurnover,
      'roe': instance.roe,
      'capex_per_share': instance.capexPerShare,
    };
