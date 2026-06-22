import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/reusableCard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/bottombutton.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Result',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.9',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, You should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          ButtomButton(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            buttonTitle: 'Return',
          ),
        ],
      ),
    );
  }
}
