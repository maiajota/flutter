import 'package:flutter/material.dart';
import 'package:quizzler/quizz_brain.dart';

QuizzBrain quizzBrain = QuizzBrain();

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> scoreKeeper = [];

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              quizzBrain.questionBank[questionNumber].questionText,
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
                bool correctAnswer = quizzBrain.questionBank[questionNumber]
                    .questionAnswer; //GET THE ANSWER
                setState(() {
                  //ADD SCORE KEEPER
                  questionNumber = questionNumber + 1;
                  if (correctAnswer == true) {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                });
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
                bool correctAnswer = quizzBrain.questionBank[questionNumber]
                    .questionAnswer; //GET THE ANSWER
                setState(() {
                  //ADD SCORE KEEPER
                  questionNumber = questionNumber + 1;
                  if (correctAnswer == false) {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                });
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
    ));
  }
}
