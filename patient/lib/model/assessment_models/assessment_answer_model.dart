import 'package:dart_mappable/dart_mappable.dart';
import 'package:patient/core/entities/assessment_entities/assessment_answer_entity.dart';

import 'assessment_question_answer_model.dart';

part 'assessment_answer_model.mapper.dart';

@MappableClass()
class AssessmentAnswerModel with AssessmentAnswerModelMappable {

  @MappableField(key: 'assessment_id')
  final String assessmentId;

  @MappableField(key: 'questions')
  final List<AssessmentQuestionAnswerModel> questions;

  AssessmentAnswerModel({
    required this.assessmentId,
    required this.questions,
  });

  AssessmentAnswerEntity toEntity() {
    return AssessmentAnswerEntity(
      assessmentId: assessmentId,
      questions: questions.map((e) => e.toEntity()).toList(),
    );
  }

}