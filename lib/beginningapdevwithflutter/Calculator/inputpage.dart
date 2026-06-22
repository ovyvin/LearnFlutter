import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/reusableCard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/iconcontent.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/buttondart.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/result_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  // Color maleCardColour = activeCardColour;
  // Color femaleCardColour = activeCardColour;

  // void updateColour(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColour == activeCardColour) {
  //       maleCardColour = inactiveCardColour;
  //       femaleCardColour = activeCardColour;
  //     } else {
  //       maleCardColour = activeCardColour;
  //     }
  //   } else if (selectedGender == Gender.female) {
  //     if (femaleCardColour == activeCardColour) {
  //       femaleCardColour = inactiveCardColour;
  //       maleCardColour = activeCardColour;
  //     } else {
  //       femaleCardColour = activeCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? inactiveCardColour
                        : activeCardColour,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? inactiveCardColour
                        : activeCardColour,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //flex: 1,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      //activeColor: Color(0xFFEB1555),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            //flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 25.0,
                            ),
                            RoundIconButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),

                            // FloatingActionButton(
                            //   onPressed: () {},
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   shape: ShapeBorder(),
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),

                            // TextButton(
                            //   onPressed: () {},
                            //   child: Icon(Icons.add),
                            // ),
                            // TextButton(
                            //   onPressed: () {},
                            //   style: ButtonStyle(
                            //     backgroundColor:
                            //         WidgetStatePropertyAll(Colors.white),
                            //     foregroundColor:
                            //         WidgetStatePropertyAll(Colors.black),
                            //     padding:
                            //         WidgetStatePropertyAll(EdgeInsets.all(20)),
                            //     shape: WidgetStatePropertyAll(
                            //         RoundedRectangleBorder(
                            //             borderRadius:
                            //                 BorderRadius.circular(20))),
                            //   ),
                            //   child: Icon(Icons.difference),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 25.0,
                            ),
                            RoundIconButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),

          //flex: 1,
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              //padding: EdgeInsets.only(bottom: 20.0),
              height: 45.0,
              width: double.infinity,
            ),
          ),
        ],
      ),

      // floatingActionButton: Theme(
      //   data: ThemeData(primaryColor: Colors.green),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {},
      //   ),
      // ),
    );
  }
}
