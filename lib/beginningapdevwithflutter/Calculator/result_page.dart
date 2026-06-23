import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/reusableCard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/bottombutton.dart';

class ResultsPage extends StatelessWidget {
  String finalRez;
  String finalText1;
  String finalText2;

  ResultsPage(
      {@required this.finalRez = '',
      @required this.finalText1 = '',
      @required this.finalText2 = ''});

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
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
                    finalText1,
                    style: resultTextStyle,
                  ),
                  Text(
                    finalRez,
                    style: kBMITextStyle,
                  ),
                  Text(
                    finalText2,
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
