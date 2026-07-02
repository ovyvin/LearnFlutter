import 'package:flutter/material.dart';

class CalculatorBrain {
  int numbera1;
  int numbera2;

  CalculatorBrain({required this.numbera1, required this.numbera2});

  int SumOfTwo() {
    return numbera1 + numbera2;
  }

  int DiffOfTwo() {
    return numbera1 - numbera2;
  }
}
