import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator2/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator2/Components/reusablecard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator2/Components/buttondart.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int number1 = 0;
  int number2 = 0;
  int selection = 0;

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
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                children: [
                  Expanded(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RoundIconButton(
                  child: Icon(Icons.remove),
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
            child: Container(),
          ),
        ],
      ),
    );
  }
}
