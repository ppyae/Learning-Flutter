import 'package:ep01_calculator/ep01_calculator.dart';

void main(List<String> args) {
  var calculator = Ep01Calculator(10, 5);
  print("${calculator.digit1} + ${calculator.digit2} = ${calculator.add()}");
  print(
      "${calculator.digit1} - ${calculator.digit2} = ${calculator.subStract()}");
  print(
      "${calculator.digit1} * ${calculator.digit2} = ${calculator.multiple()}");
}
