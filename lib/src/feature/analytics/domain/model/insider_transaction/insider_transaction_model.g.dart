// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insider_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InsiderTransactionResponse _$InsiderTransactionResponseFromJson(
  Map<String, dynamic> json,
) => _InsiderTransactionResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => InsiderTransaction.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$InsiderTransactionResponseToJson(
  _InsiderTransactionResponse instance,
) => <String, dynamic>{'data': instance.data};

_InsiderTransaction _$InsiderTransactionFromJson(Map<String, dynamic> json) =>
    _InsiderTransaction(
      name: json['name'] as String,
      formType: json['formType'] as String,
      code: json['code'] as String,
      fileDate: json['fileDate'] as String,
      shares: (json['shares'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
      transactionDate: json['transactionDate'] as String,
      stockType: (json['stock_type'] as num).toInt(),
      link: json['link'] as String,
    );

Map<String, dynamic> _$InsiderTransactionToJson(_InsiderTransaction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'formType': instance.formType,
      'code': instance.code,
      'fileDate': instance.fileDate,
      'shares': instance.shares,
      'value': instance.value,
      'transactionDate': instance.transactionDate,
      'stock_type': instance.stockType,
      'link': instance.link,
    };
