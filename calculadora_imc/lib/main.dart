import 'package:flutter/material.dart';
import 'package:calculadora_imc/screens/input_page.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //!ROUTE
      initialRoute: '/input',
      routes: {'/input': (context) => const InputPage()},
      //!DARK THEME
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        
      ),
    );
  }
}
