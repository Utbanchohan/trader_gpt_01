// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChartRequestDto _$ChartRequestDtoFromJson(Map<String, dynamic> json) =>
    _ChartRequestDto(
      symbol: json['symbol'] as String,
      interval: json['interval'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
    );

Map<String, dynamic> _$ChartRequestDtoToJson(_ChartRequestDto instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'interval': instance.interval,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
