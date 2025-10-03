// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyModel _$WeeklyModelFromJson(Map<String, dynamic> json) => _WeeklyModel(
  probability: json['Probability'] == null
      ? null
      : WeeklyProbability.fromJson(json['Probability'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeeklyModelToJson(_WeeklyModel instance) =>
    <String, dynamic>{'Probability': instance.probability};

_WeeklyProbability _$WeeklyProbabilityFromJson(Map<String, dynamic> json) =>
    _WeeklyProbability(
      monday: (json['Monday'] as num?)?.toDouble(),
      tuesday: (json['Tuesday'] as num?)?.toDouble(),
      wednesday: (json['Wednesday'] as num?)?.toDouble(),
      thursday: (json['Thursday'] as num?)?.toDouble(),
      friday: (json['Friday'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeeklyProbabilityToJson(_WeeklyProbability instance) =>
    <String, dynamic>{
      'Monday': instance.monday,
      'Tuesday': instance.tuesday,
      'Wednesday': instance.wednesday,
      'Thursday': instance.thursday,
      'Friday': instance.friday,
    };
