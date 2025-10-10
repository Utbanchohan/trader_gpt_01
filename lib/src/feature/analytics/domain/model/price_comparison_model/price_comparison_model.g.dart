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
      data: const _DynamicSymbolsConverter().fromJson(
        json as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PriceComparisonDataToJson(
  _PriceComparisonData instance,
) => <String, dynamic>{
  'data': const _DynamicSymbolsConverter().toJson(instance.data),
};
