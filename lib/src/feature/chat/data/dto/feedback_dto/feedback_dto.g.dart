// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedbackDto _$FeedbackDtoFromJson(Map<String, dynamic> json) => _FeedbackDto(
  comment: json['comment'] as String,
  key: json['key'] as String,
  messageId: json['messageid'] as String,
  score: (json['score'] as num).toInt(),
  traceId: json['trace_id'] as String,
);

Map<String, dynamic> _$FeedbackDtoToJson(_FeedbackDto instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'key': instance.key,
      'messageid': instance.messageId,
      'score': instance.score,
      'trace_id': instance.traceId,
    };
