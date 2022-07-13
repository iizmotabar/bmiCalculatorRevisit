import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);
  final double height;
  final double weight;

  var _bmiResult = 0.0;

  String calculateBmi() {
    _bmiResult = weight / pow(height / 100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmiResult < 18.5) {
      return 'Underweight';
    } else if (_bmiResult >= 18.5 && _bmiResult <= 24.9) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  String getBmiComment() {
    if (_bmiResult < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmiResult >= 18.5 && _bmiResult <= 24.9) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
  }
}
