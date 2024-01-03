
import 'package:questionandanswer_game_app/core/utilities/constants/app_text.dart';

class QuestionAndAnswer {
  final String questionText;
  final String questionAnswer1;
  final String questionAnswer2;
  final String questionAnswer3;
  final String questionAnswer4;
  final String correctAnswer;
  QuestionAndAnswer(
      {required this.questionText,
        required this.questionAnswer1,
        required this.questionAnswer2,
        required this.questionAnswer3,
        required this.questionAnswer4,
        required this.correctAnswer});

  static List<QuestionAndAnswer> questionAndAnswerStore = [
    QuestionAndAnswer(
      questionText: AppText.question1,
      questionAnswer1: AppText.answer1,
      questionAnswer2: AppText.wrongAnswer1a,
      questionAnswer3: AppText.wrongAnswer1b,
      questionAnswer4: AppText.wrongAnswer1c,
      correctAnswer: AppText.answer1,
    ),
    QuestionAndAnswer(
      questionText: AppText.question2,
      questionAnswer1: AppText.wrongAnswer2a,
      questionAnswer2: AppText.wrongAnswer2b,
      questionAnswer3: AppText.answer2,
      questionAnswer4: AppText.wrongAnswer2c,
      correctAnswer: AppText.answer2,
    ),
    QuestionAndAnswer(
      questionText: AppText.question3,
      questionAnswer1: AppText.wrongAnswer3a,
      questionAnswer2: AppText.answer3,
      questionAnswer3: AppText.wrongAnswer3c,
      questionAnswer4: AppText.wrongAnswer3b,
      correctAnswer: AppText.answer3,
    ),
    QuestionAndAnswer(
      questionText: AppText.question4,
      questionAnswer1: AppText.wrongAnswer4b,
      questionAnswer2: AppText.wrongAnswer4c,
      questionAnswer3: AppText.wrongAnswer4a,
      questionAnswer4: AppText.answer4,
      correctAnswer: AppText.answer4,
    ),
    QuestionAndAnswer(
      questionText: AppText.question5,
      questionAnswer1: AppText.wrongAnswer5b,
      questionAnswer2: AppText.answer5,
      questionAnswer3: AppText.wrongAnswer5b,
      questionAnswer4: AppText.wrongAnswer5c,
      correctAnswer: AppText.answer5,
    ),
  ];

}