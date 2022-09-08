import 'package:quizzler/question.dart';

class QuizzBrain {
  List<Question> questionBank = [
    Question(text: "Apolo 11 landed on the moon in 1970", answer: false),
    Question(text: "The square root of 114 is 12", answer: true),
    Question(
        text: "Elephants have the best memory in the animal kingdom",
        answer: false),
    Question(text: "Brazil has 26 states", answer: true),
    Question(text: "The chemical composition of water is H20", answer: true),
    Question(text: "Flutter was created in 2017", answer: true),
    Question(text: "There are 4 Newton's Laws", answer: false),
    Question(text: "Google was originally called \"Backrub\"", answer: true)
  ];
}
