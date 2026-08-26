import 'package:flutter/material.dart';

class AnimationService {
  //int? inputValue;
  String animationValue = '';

  String getAnimation(int inputValue) {
    if (inputValue > 10) {
      animationValue = 'goku-sun.gif';
    }

    return animationValue;
  }
}
