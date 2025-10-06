// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fundamental_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FundamentalResponse _$FundamentalResponseFromJson(Map<String, dynamic> json) =>
    _FundamentalResponse(
      data: FundamentalData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$FundamentalResponseToJson(
  _FundamentalResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'msg': instance.msg,
  'status': instance.status,
};

_FundamentalData _$FundamentalDataFromJson(Map<String, dynamic> json) =>
    _FundamentalData(
      fundamentals: Fundamentals.fromJson(
        json['fundamentals'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FundamentalDataToJson(_FundamentalData instance) =>
    <String, dynamic>{'fundamentals': instance.fundamentals};

_Fundamentals _$FundamentalsFromJson(Map<String, dynamic> json) =>
    _Fundamentals(
      annualSale: json['annualSale'] as String,
      annualIncome: json['annualIncome'] as String,
      priceCashFlow: json['priceCashFlow'] as String,
      shortInterest: json['shortInterest'] as String,
      shortPercentOfFloat: json['shortPercentOfFloat'] as String,
      daysToCover: json['daysToCover'] as String,
    );

Map<String, dynamic> _$FundamentalsToJson(_Fundamentals instance) =>
    <String, dynamic>{
      'annualSale': instance.annualSale,
      'annualIncome': instance.annualIncome,
      'priceCashFlow': instance.priceCashFlow,
      'shortInterest': instance.shortInterest,
      'shortPercentOfFloat': instance.shortPercentOfFloat,
      'daysToCover': instance.daysToCover,
    };
