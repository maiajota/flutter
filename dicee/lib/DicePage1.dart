import 'package:dicee/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage1 extends StatefulWidget {
  DicePage1({Key? key}) : super(key: key);

  @override
  State<DicePage1> createState() => _DicePage1State();
}

class _DicePage1State extends State<DicePage1> {
  int DiceNumber = 6;
  void Randomizer() {
    setState(() {
      DiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBarWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              child: Image.asset("images/dice$DiceNumber.png"),
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blueGrey[700]),
              ),
              onPressed: (() {
                Randomizer();
              }),
              child: Text("Randomize"))
        ],
      ),
    );
  }
}
