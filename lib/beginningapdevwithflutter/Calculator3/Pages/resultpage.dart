import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/reusablecard.dart';
import 'package:learnflutter/beginningapdevwithflutter/Calculator3/Components/bottombutton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result Page',
          style: kAppBarTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Column(),
    );
  }
}
