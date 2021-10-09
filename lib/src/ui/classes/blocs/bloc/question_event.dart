part of 'question_bloc.dart';

@immutable
abstract class QuestionEvent {}

class GetListQuestionEvent extends QuestionEvent {}

class CreateQuestionEvent extends QuestionEvent {
  final BuildContext context;
  final String examId;
  final int duration;
  final List<int> corrects;
  final List<String> answers;
  final String question;

  CreateQuestionEvent({
    required this.answers,
    required this.context,
    required this.corrects,
    required this.duration,
    required this.examId,
    required this.question,
  });
}

class UpdateQuestionEvent extends QuestionEvent {
  final BuildContext context;
  final int duration;
  final List<int> corrects;
  final List<String> answers;
  final String question;
  final String questionId;

  UpdateQuestionEvent({
    required this.answers,
    required this.context,
    required this.corrects,
    required this.duration,
    required this.question,
    required this.questionId,
  });
}

class DeleteQuestionEvent extends QuestionEvent {
  final BuildContext context;
  final String questionId;
  DeleteQuestionEvent({required this.questionId, required this.context});
}