import 'package:flutter/material.dart';
import 'package:quizzler/quizz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzBrain quizzBrain = QuizzBrain();

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> scoreKeeper = [];
  int totalScore = 0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer =
        quizzBrain.getQuestionAnswer(); //*WILL GET THE ANSWER OF THE QUESTION

    setState(() {
      if (quizzBrain.isFinished() == false) {
        if (correctAnswer == userPickedAnswer) {
          totalScore++; //*WILL ADD A POINT IF ITS CORRECT
          scoreKeeper.add(
            const Icon(
              //*TRUE ICON
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          //*FALSE ICON
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizzBrain.nextQuestion();
      } else {
        Alert(
          context: context,
          title: "Finished!",
          desc: "$totalScore correct answers!",
          buttons: [
            DialogButton(
              color: Colors.black,
              child: const Text(
                "Exit",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ).show();
        scoreKeeper = []; //*RESET THE SCORE
        totalScore = 0;
        quizzBrain.reset(); //*RESET THE QUIZ
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              quizzBrain.getQuestionText(),
              style: const TextStyle(color: Colors.white, fontSize: 20.0),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            //TRUE BUTTON
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: (() {
                checkAnswer(true); //*CHECK IF ITS TRUE
              }),
              child: const Text(
                "True",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            //FALSE BUTTON
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: (() {
                checkAnswer(false); //*CHECK IF ITS FALSE
              }),
              child: const Text(
                "False",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
