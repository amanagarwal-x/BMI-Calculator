import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
}
