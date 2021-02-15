import 'Question.dart';

class QuestionBrain {
  // this property will keep track of the loop
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: 'Some cats are actually allergic to humans',
        answerText: true),
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        answerText: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        answerText: true),
    Question(questionText: 'A slug\'s blood is green.', answerText: true),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answerText: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        answerText: true),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answerText: false),
    Question(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answerText: true),
    Question(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answerText: false),
    Question(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answerText: true),
    Question(
        questionText: 'Google was originally called \"Backrub\".',
        answerText: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answerText: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answerText: true),
  ];

  int questionsLength() {
    return _questionBank.length;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswerText() {
    return _questionBank[_questionNumber].answerText;
  }

  void nextQuestion() {
    if (_questionNumber < questionsLength() - 1) {
      //  increment the questionNumber as well
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= questionsLength() - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
