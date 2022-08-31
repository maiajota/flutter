import 'dart:math';
import 'package:dicee/AppBarWidget.dart';
import 'package:flutter/material.dart';

class DicePage2 extends StatefulWidget {
  DicePage2({Key? key}) : super(key: key);

  @override
  State<DicePage2> createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;
  void Randomizer() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Centralizar
        children: [
          Row(
            //Dados
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    child: Image.asset(
                        "images/dice$leftDiceNumber.png"), //A imagem vai mudar de acordo com a var
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  child: Image.asset(
                      "images/dice$rightDiceNumber.png"), //A imagem vai mudar de acordo com a var
                ),
              )),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey[700]),
            ),
            onPressed: (() {
              Randomizer();
            }),
            child: Text(
              "Randomize",
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
