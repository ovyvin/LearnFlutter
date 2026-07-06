import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/reusablecard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/buttondart.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/bottombutton.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/calculatorfunction.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Pages/resultpage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double number1 = 0;
  double number2 = 0;
  double selection = 0;
  double resultValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CALCULATOR',
          style: kAppBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kCardColour,
                      onPress: () {},
                      cardChild: Column(
                        children: [
                          Text(
                            'First Number',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            number1.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                child: Icon(Icons.remove),
                                colour: kButtonColour,
                                onPressed: () {
                                  setState(() {
                                    number1--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                child: Icon(Icons.add),
                                colour: kButtonColour,
                                onPressed: () {
                                  setState(() {
                                    number1++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: kCardColour2,
                      onPress: () {},
                      cardChild: Column(
                        children: [
                          Text(
                            'Second Number',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            number2.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                child: Icon(Icons.remove),
                                colour: kButtonColour,
                                onPressed: () {
                                  setState(() {
                                    number2--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              RoundIconButton(
                                child: Icon(Icons.add),
                                colour: kButtonColour,
                                onPressed: () {
                                  setState(() {
                                    number2++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RoundIconButton(
                  child: Icon(Icons.remove),
                  colour: selection == 1 ? kButtonColour1 : kButtonColour,
                  onPressed: () {
                    setState(() {
                      selection = 1;
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                RoundIconButton(
                  child: Icon(Icons.add),
                  colour: selection == 2 ? kButtonColour2 : kButtonColour,
                  onPressed: () {
                    setState(() {
                      selection = 2;
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                RoundIconButton(
                  child: Icon(Icons.close),
                  colour: selection == 3 ? kButtonColour3 : kButtonColour,
                  onPressed: () {
                    setState(() {
                      selection = 3;
                    });
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                RoundIconButton(
                  child: Icon(Icons.percent),
                  colour: selection == 4 ? kButtonColour4 : kButtonColour,
                  onPressed: () {
                    setState(() {
                      selection = 4;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(resultValue.toString(), style: kNumberResultvalue),
            ),
          ),
          BottomButton(
            onTap: () {
              CalculatorBrain calc =
                  new CalculatorBrain(numbera1: number1, numbera2: number2);

              setState(() {
                switch (selection) {
                  case 1:
                    resultValue = calc.DiffOfTwo();
                    break;

                  case 2:
                    resultValue = calc.SumOfTwo();
                    break;

                  case 3:
                    resultValue = calc.MultiplyofTwo();
                    break;

                  case 4:
                    resultValue = calc.DivofTwo();
                    break;
                }
              });

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          resultV: resultValue,
                        )),
              );
            },
            buttonTitle: 'Calculate',
          ),
        ],
      ),
    );
  }
}
