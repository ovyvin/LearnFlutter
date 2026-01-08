import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  String firstName = 'FirstApp';
  MyApp1(this.firstName) {}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstApp"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('$firstName'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: () => {},
      ),
    );
  }
}
