import 'package:dicee/AppBarWidget.dart';
import 'package:dicee/DicePage1.dart';
import 'package:dicee/DicePage2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              //1 Dice
              child: InkWell(
                child: Image.asset("images/dice1.png"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DicePage1()));
                },
              ),
            ),
          ),
          SizedBox(
            child: Divider(
              color: Colors.blueGrey[200],
              height: 20,
            ),
          ),
          Expanded(
            //2 Dices
            child: InkWell(
              enableFeedback: false,
              child: Image.asset("images/dice2.png"),
              onTap: (() {
                Navigator.push(
                  //Go To DicePage2()
                  context,
                  MaterialPageRoute(builder: (context) => DicePage2()),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
