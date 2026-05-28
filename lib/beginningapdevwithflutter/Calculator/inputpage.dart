import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator/reusableCard.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.worm,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'WOMEN',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFF8D8E98),
                          ),
                        ),
                      ],
                    ),
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
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(),
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
