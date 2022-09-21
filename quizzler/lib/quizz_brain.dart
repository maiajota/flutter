import 'package:quizzler/question.dart';

class QuizzBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(text: "Apolo 11 landed on the moon in 1970", answer: false),
    Question(text: "The square root of 114 is 12", answer: true),
    Question(
        text: "It is legal to pee in the Ocean in Portugal.", answer: false),
    Question(text: "A slug's blood is red.", answer: false),
    Question(
        text: "Elephants have the best memory in the animal kingdom",
        answer: false),
    Question(text: "Brazil has 26 states", answer: true),
    Question(text: "The chemical composition of water is H20", answer: true),
    Question(text: "Flutter was created in 2017", answer: true),
    Question(
        text:
            "No piece of square dry paper can be folded in half more than 7 times.",
        answer: false),
    Question(text: "There are 4 Newton's Laws", answer: false),
    Question(text: "Google was originally called \"Backrub\"", answer: true),
    Question(
        text:
            "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
        answer: true),
    Question(
        text:
            "Chocolate doesn't affects a dog's heart and nervous system; a few ounces aren't enough to kill a small dog.",
        answer: false),
    Question(
        text: "Approximately one quarter of human bones are in the feet.",
        answer: true),
    Question(
        text:
            "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
        answer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    //*WILL SHOW THE QUESTION TEXT
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    //*WILL SHOW THE QUESTION ANSWER
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
