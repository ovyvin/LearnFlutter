import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/constants.dart';

class BottomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonTitle;

  BottomButton({
    this.onTap,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 5.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        height: 60.0,
        width: double.infinity,
      ),
    );
  }
}
