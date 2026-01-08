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
        child: Column(
          children: [
            Text('$firstName'),
            Image.asset('assets/images/image1.jpg', fit: BoxFit.cover),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.phone_iphone_rounded,
          color: Colors.red,
        ),
        onPressed: () => {},
      ),
    );
  }
}
