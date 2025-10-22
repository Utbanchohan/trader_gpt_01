// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_memory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteMemoryModel _$DeleteMemoryModelFromJson(Map<String, dynamic> json) =>
    _DeleteMemoryModel(
      message: json['message'] as String?,
      memoryId: json['memory_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$DeleteMemoryModelToJson(_DeleteMemoryModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'memory_id': instance.memoryId,
      'user_id': instance.userId,
    };
