// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
    this.height,
    this.weight, {
    Height,
    Weight,
  });
  final int height;
  final int weight;
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return 'UnderWeight';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'You have a Higher than normal body weight. Try exercise more';
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return 'You Have a lower than normal body weight. You get eat a bit more.';
    }
  }
}