import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$noteNumber.wav"));
  }

  Expanded noteButton({Color color, int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
          style: ButtonStyle(
              enableFeedback: false,
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ))),
          onPressed: (() {
            playSound(noteNumber);
          }),
          child: Text(" ")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              noteButton(color: Colors.red, noteNumber: 1),
              noteButton(color: Colors.orange, noteNumber: 2),
              noteButton(color: Colors.yellow, noteNumber: 3),
              noteButton(color: Colors.green, noteNumber: 4),
              noteButton(color: Colors.teal, noteNumber: 5),
              noteButton(color: Colors.blue, noteNumber: 6),
              noteButton(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
