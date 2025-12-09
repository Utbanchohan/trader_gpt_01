// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_chart_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinanceDataResponse _$FinanceDataResponseFromJson(Map<String, dynamic> json) =>
    _FinanceDataResponse(
      data: FinanceData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
      status: (json['status'] as num).toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$FinanceDataResponseToJson(
  _FinanceDataResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'msg': instance.msg,
  'status': instance.status,
  'errors': instance.errors,
};

_FinanceData _$FinanceDataFromJson(Map<String, dynamic> json) => _FinanceData(
  cashAndDebt: FinanceCategory.fromJson(
    json['Cash and Debt'] as Map<String, dynamic>,
  ),
  assetsAndStockHolders: FinanceCategory.fromJson(
    json['Assets and StockHolders'] as Map<String, dynamic>,
  ),
  outstandingSharesBuyback: FinanceCategory.fromJson(
    json['Outstanding Shares & Buyback'] as Map<String, dynamic>,
  ),
  revenueAndIncome: FinanceCategory.fromJson(
    json['Revenue and Income'] as Map<String, dynamic>,
  ),
  cashFlowData: FinanceCategory.fromJson(
    json['Cash Flow Data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$FinanceDataToJson(_FinanceData instance) =>
    <String, dynamic>{
      'Cash and Debt': instance.cashAndDebt,
      'Assets and StockHolders': instance.assetsAndStockHolders,
      'Outstanding Shares & Buyback': instance.outstandingSharesBuyback,
      'Revenue and Income': instance.revenueAndIncome,
      'Cash Flow Data': instance.cashFlowData,
    };

_FinanceCategory _$FinanceCategoryFromJson(Map<String, dynamic> json) =>
    _FinanceCategory(
      yearly: json['Yearly'] == null
          ? null
          : FinancePeriod.fromJson(json['Yearly'] as Map<String, dynamic>),
      quarterly: json['Quarterly'] == null
          ? null
          : FinancePeriod.fromJson(json['Quarterly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinanceCategoryToJson(_FinanceCategory instance) =>
    <String, dynamic>{
      'Yearly': instance.yearly,
      'Quarterly': instance.quarterly,
    };

_FinancePeriod _$FinancePeriodFromJson(Map<String, dynamic> json) =>
    _FinancePeriod(metrics: _metricsFromJson(json as Map<String, dynamic>));

Map<String, dynamic> _$FinancePeriodToJson(_FinancePeriod instance) =>
    <String, dynamic>{'metrics': _metricsToJson(instance.metrics)};
