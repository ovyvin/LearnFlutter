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
                          'Number',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('1'),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text('2'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
