import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment
            .stretch, //when use this , the width of the container is not respected
        children: [
          Container(
            color: Colors.yellow,
            height: 100.0,
            width: 100.0,
            //margin: EdgeInsets.all(20),
            //margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            //margin: EdgeInsets.fromLTRB(50, 20, 10, 50),
            child: Text('FlutterApp1'),
          ),
          Container(
            color: Colors.blue,
            height: 100.0,
            //width: 300.0,
            width: double.infinity,
            //width: 100.0,
            //margin: EdgeInsets.all(20),
            //margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            //margin: EdgeInsets.fromLTRB(50, 20, 10, 50),
            child: Text('FlutterApp2'),
          ),
          Container(
            color: Colors.green,
            height: 100.0,
            width: 100.0,
            //margin: EdgeInsets.all(20),
            //margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            //margin: EdgeInsets.fromLTRB(50, 20, 10, 50),
            child: Text('FlutterApp2'),
          ),
        ],
      ),
    );
  }
}
