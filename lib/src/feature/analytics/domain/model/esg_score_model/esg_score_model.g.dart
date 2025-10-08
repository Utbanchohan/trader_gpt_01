// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esg_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EsgScoreModel _$EsgScoreModelFromJson(Map<String, dynamic> json) =>
    _EsgScoreModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => EsgScoreData.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['errors'],
    );

Map<String, dynamic> _$EsgScoreModelToJson(_EsgScoreModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_EsgScoreData _$EsgScoreDataFromJson(Map<String, dynamic> json) =>
    _EsgScoreData(
      symbol: json['symbol'] as String,
      cik: json['cik'] as String,
      date: json['date'] as String,
      environmentalScore: (json['environmental_score'] as num?)?.toDouble(),
      socialScore: (json['social_score'] as num?)?.toDouble(),
      governanceScore: (json['governance_score'] as num?)?.toDouble(),
      esgscore: (json['esgscore'] as num?)?.toDouble(),
      companyName: json['company_name'] as String?,
      industry: json['industry'] as String?,
      formType: json['form_type'] as String?,
      acceptedDate: json['accepted_date'] as String?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
      lastUpdatedTime: json['last_updated_time'] as String?,
    );

Map<String, dynamic> _$EsgScoreDataToJson(_EsgScoreData instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'cik': instance.cik,
      'date': instance.date,
      'environmental_score': instance.environmentalScore,
      'social_score': instance.socialScore,
      'governance_score': instance.governanceScore,
      'esgscore': instance.esgscore,
      'company_name': instance.companyName,
      'industry': instance.industry,
      'form_type': instance.formType,
      'accepted_date': instance.acceptedDate,
      'url': instance.url,
      'created_at': instance.createdAt,
      'last_updated_time': instance.lastUpdatedTime,
    };
