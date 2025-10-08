// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esg_score_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EsgDto _$EsgDtoFromJson(Map<String, dynamic> json) => _EsgDto(
  symbol: json['symbol'] as String,
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: DateTime.parse(json['end_date'] as String),
);

Map<String, dynamic> _$EsgDtoToJson(_EsgDto instance) => <String, dynamic>{
  'symbol': instance.symbol,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
};
