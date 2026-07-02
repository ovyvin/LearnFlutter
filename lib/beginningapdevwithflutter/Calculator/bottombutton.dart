import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/result_page.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/bottombutton.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({required this.onTap, required this.buttonTitle});

  final Function()? onTap;
  final String buttonTitle;

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
        margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 20.0),
        height: 30.0,
        width: double.infinity,
      ),
    );
  }
}

// () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ResultsPage()));
//       }
