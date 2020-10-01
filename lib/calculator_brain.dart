import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain({this.weight, this.height}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 40) {
      return 'Obese Class III';
    } else if (_bmi > 35) {
      return 'Obese Class II';
    } else if (_bmi > 30) {
      return 'Obese Class I';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else if (_bmi > 17) {
      return 'Mild Thinness';
    } else if (_bmi > 16) {
      return 'Moderate Thinness	';
    } else {
      return 'Severe Thinness';
    }
  }
}
