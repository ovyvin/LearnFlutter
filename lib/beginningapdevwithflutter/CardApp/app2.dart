import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        color: Colors.white,
        height: 100.0,
        width: 100.0,
        //margin: EdgeInsets.all(20),
        //margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        margin: EdgeInsets.fromLTRB(50, 20, 10, 50),
        child: Text('FlutterApp'),
      ),
    );
  }
}
