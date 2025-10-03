// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_comparison_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceComparisonModel _$PriceComparisonModelFromJson(
  Map<String, dynamic> json,
) => _PriceComparisonModel(
  data: PriceComparisonData.fromJson(json['data'] as Map<String, dynamic>),
  msg: json['msg'] as String,
  status: (json['status'] as num).toInt(),
  errors: json['errors'],
);

Map<String, dynamic> _$PriceComparisonModelToJson(
  _PriceComparisonModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'msg': instance.msg,
  'status': instance.status,
  'errors': instance.errors,
};

_PriceComparisonData _$PriceComparisonDataFromJson(Map<String, dynamic> json) =>
    _PriceComparisonData(
      MSFT: (json['MSFT'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      SPY: (json['SPY'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$PriceComparisonDataToJson(
  _PriceComparisonData instance,
) => <String, dynamic>{'MSFT': instance.MSFT, 'SPY': instance.SPY};
