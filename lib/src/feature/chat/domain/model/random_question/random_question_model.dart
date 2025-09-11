
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_question_model.freezed.dart';
part 'random_question_model.g.dart';

@freezed
abstract class RandomQuestionModel with _$RandomQuestionModel {
  const factory RandomQuestionModel({
    required List<String> questions,
  }) = _RandomQuestionModel;

  factory RandomQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$RandomQuestionModelFromJson(json);
}