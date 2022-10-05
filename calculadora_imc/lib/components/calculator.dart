import 'dart:math';

class Calculator {
  final int weight;
  final int height;

  double _imc = 0;

  Calculator({required this.weight, required this.height});

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2); //*WEIGHT in kg / (HEIGHT in m) * 2
    return _imc.toStringAsFixed(1); //*FOR GET ONLY ONE DECIMAL PLACE
  }

  String getResult() {
    if (_imc < 18.5) {
      return 'Abaixo do peso normal!';
    } else if (_imc < 24.9) {
      return 'Peso normal!';
    } else if (_imc < 29.9) {
      return 'Excesso de peso!';
    } else if (_imc < 34.9) {
      return 'Obesidade classe 1!';
    } else if (_imc < 39.9) {
      return 'Obesidade classe 2!';
    } else {
      return 'Obesidade classe 3!';
    }
  }
}
