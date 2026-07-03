import 'package:flutter/material.dart';

class CalculatorBrain {
  double numbera1;
  double numbera2;

  CalculatorBrain({required this.numbera1, required this.numbera2});

  double SumOfTwo() {
    return numbera1 + numbera2;
  }

  double DiffOfTwo() {
    return numbera1 - numbera2;
  }

  double MultiplyofTwo() {
    return numbera1 * numbera2;
  }

  double DivofTwo() {
    return numbera1 / numbera2;
  }
}
