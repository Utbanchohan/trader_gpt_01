import 'package:freezed_annotation/freezed_annotation.dart';

part 'updates_questions_model.freezed.dart';
part 'updates_questions_model.g.dart';

@freezed
abstract class AnalysisTask with _$AnalysisTask {
  const factory AnalysisTask({
    required String definition,
    @JsonKey(name: 'child_tasks') required List<ChildTask>? childTasks,
  }) = _AnalysisTask;

  factory AnalysisTask.fromJson(Map<String, dynamic> json) =>
      _$AnalysisTaskFromJson(json);
}

@freezed
abstract class ChildTask with _$ChildTask {
  const factory ChildTask({
    @JsonKey(name: 'task_id') required String taskId,
    required String description,
    required String status,
  }) = _ChildTask;

  factory ChildTask.fromJson(Map<String, dynamic> json) =>
      _$ChildTaskFromJson(json);
}
