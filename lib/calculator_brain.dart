import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi > 18.8) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'you have a higher than normal. try to exercise now';
    } else if (_bmi > 18.8) {
      return 'you have a normal body. good jop';
    } else {
      return 'you have a lower normal body weight. you can eat a bit more';
    }
  }
}