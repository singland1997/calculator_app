import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculate extends ChangeNotifier {
  String equation = '0';
  String result = '0';
  String expression = '';

  void numClick(String text) {
    if (equation == '0') {
      equation = text;
    } else {
      equation = equation + text;
    }
    notifyListeners();
  }

  void allClear(String text) {
    equation = '0';
    result = '0';
    notifyListeners();
  }

  void clear(String text) {
    equation = equation.substring(0, equation.length - 1);
    if (equation == '') {
      equation = '0';
    }
    notifyListeners();
  }

  void evaluate(String text) {
    expression = equation;
    expression = expression.replaceAll('⨯', '*');
    expression = expression.replaceAll('÷', '/');

    try {
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      result = exp.evaluate(EvaluationType.REAL, cm).toString();
    } catch (e) {
      result = "Error";
    }

    notifyListeners();
  }
}
