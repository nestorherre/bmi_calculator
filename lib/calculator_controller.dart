import 'dart:math';

class CalculatorController {
  CalculatorController({this.weight, this.height});
  final double height;
  final double weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excersie more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight, great job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more.';
    }
  }
}
