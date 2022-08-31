import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("images/card_profile.png"),
              radius: 50.0,
            ),
            const Text(
              "João Victor Maia",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 15.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(
              width: 150.0,
              child: Divider(
                color: Colors.blue[900],
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue[800]),
                  title: Text(
                    "maia.joaovic@gmail.com",
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[800]),
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.blue[800],
                  ),
                  title: Text(
                    "João Pessoa, Paraíba, Brazil",
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[800]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
