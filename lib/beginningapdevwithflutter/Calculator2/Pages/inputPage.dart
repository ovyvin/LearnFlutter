import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator2/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator2/Components/reusablecard.dart';

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
          'CALCULATOR',
          style: kAppBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(),
          Row(),
          Container(),
        ],
      ),
    );
  }
}
