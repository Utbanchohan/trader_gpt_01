// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProbabilityResponse _$ProbabilityResponseFromJson(Map<String, dynamic> json) =>
    _ProbabilityResponse(
      probability: json['Probability'] == null
          ? null
          : Probability.fromJson(json['Probability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProbabilityResponseToJson(
  _ProbabilityResponse instance,
) => <String, dynamic>{'Probability': instance.probability};

_Probability _$ProbabilityFromJson(Map<String, dynamic> json) => _Probability(
  january: (json['January'] as num?)?.toDouble(),
  february: (json['February'] as num?)?.toDouble(),
  march: (json['March'] as num?)?.toDouble(),
  april: (json['April'] as num?)?.toDouble(),
  may: (json['May'] as num?)?.toDouble(),
  june: (json['June'] as num?)?.toDouble(),
  july: (json['July'] as num?)?.toDouble(),
  august: (json['August'] as num?)?.toDouble(),
  september: (json['September'] as num?)?.toDouble(),
  october: (json['October'] as num?)?.toDouble(),
  november: (json['November'] as num?)?.toDouble(),
  december: (json['December'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ProbabilityToJson(_Probability instance) =>
    <String, dynamic>{
      'January': instance.january,
      'February': instance.february,
      'March': instance.march,
      'April': instance.april,
      'May': instance.may,
      'June': instance.june,
      'July': instance.july,
      'August': instance.august,
      'September': instance.september,
      'October': instance.october,
      'November': instance.november,
      'December': instance.december,
    };
