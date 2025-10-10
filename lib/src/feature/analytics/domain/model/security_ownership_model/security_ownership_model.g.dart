// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_ownership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SecurityOwnershipResponse _$SecurityOwnershipResponseFromJson(
  Map<String, dynamic> json,
) => _SecurityOwnershipResponse(
  status: (json['status'] as num).toInt(),
  msg: json['msg'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => SecurityOwnership.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: json['errors'],
);

Map<String, dynamic> _$SecurityOwnershipResponseToJson(
  _SecurityOwnershipResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'msg': instance.msg,
  'data': instance.data,
  'errors': instance.errors,
};

_SecurityOwnership _$SecurityOwnershipFromJson(Map<String, dynamic> json) =>
    _SecurityOwnership(
      name: json['name'] as String,
      formType: json['formType'] as String,
      effectiveDate: json['effectiveDate'] as String,
      fileDate: json['fileDate'] as String,
      shares: (json['shares'] as num).toInt(),
      sharesChange: (json['sharesChange'] as num).toInt(),
      sharesPercentChange: (json['sharesPercentChange'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
      valueChange: (json['valueChange'] as num).toDouble(),
      valuePercentChange: (json['valuePercentChange'] as num).toDouble(),
      ownershipPercentChange: (json['ownershipPercentChange'] as num)
          .toDouble(),
      ownershipPercent: (json['ownershipPercent'] as num).toDouble(),
      stockType: (json['stock_type'] as num).toInt(),
    );

Map<String, dynamic> _$SecurityOwnershipToJson(_SecurityOwnership instance) =>
    <String, dynamic>{
      'name': instance.name,
      'formType': instance.formType,
      'effectiveDate': instance.effectiveDate,
      'fileDate': instance.fileDate,
      'shares': instance.shares,
      'sharesChange': instance.sharesChange,
      'sharesPercentChange': instance.sharesPercentChange,
      'value': instance.value,
      'valueChange': instance.valueChange,
      'valuePercentChange': instance.valuePercentChange,
      'ownershipPercentChange': instance.ownershipPercentChange,
      'ownershipPercent': instance.ownershipPercent,
      'stock_type': instance.stockType,
    };
