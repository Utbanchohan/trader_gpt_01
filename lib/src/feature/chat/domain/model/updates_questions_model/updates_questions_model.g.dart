// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_questions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisTask _$AnalysisTaskFromJson(Map<String, dynamic> json) =>
    _AnalysisTask(
      definition: json['definition'] as String,
      childTasks: (json['child_tasks'] as List<dynamic>?)
          ?.map((e) => ChildTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnalysisTaskToJson(_AnalysisTask instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'child_tasks': instance.childTasks,
    };

_ChildTask _$ChildTaskFromJson(Map<String, dynamic> json) => _ChildTask(
  taskId: json['task_id'] as String,
  description: json['description'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$ChildTaskToJson(_ChildTask instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'description': instance.description,
      'status': instance.status,
    };
