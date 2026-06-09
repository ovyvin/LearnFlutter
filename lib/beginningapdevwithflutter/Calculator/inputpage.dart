import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/reusableCard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/iconcontent.dart';

const inactiveCardColour = Color(0xFF111328);
const activeCardColour = Color(0xFF1D1E33);

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
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
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
            flex: 2,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Row(),
              onPress: () {},
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
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
