import 'dart:math';

class BMIcalculator {
  final height;
  final weight;
  var Bmi;

  BMIcalculator({this.height, this.weight});

  String calculate() {
    Bmi = weight / pow(height / 100, 2);
    return Bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (Bmi >= 25)
      return 'Overweight';
    else if (Bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInfo() {
    if (Bmi >= 25)
      return 'You have a higher than normal body weight, Try to Exercise.';
    else if (Bmi >= 18.5)
      return 'You have normal body weight, Keep It Up.';
    else
      return 'You have a lower than normal body weight, Eat Healthy Food.';
  }
}
