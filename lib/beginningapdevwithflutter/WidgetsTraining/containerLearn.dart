import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        padding: EdgeInsets.all(20),
        //color: Colors.red,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          color: Colors.red,
          border: Border.all(
            color: Colors.green,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 15,
              spreadRadius: 1,
              offset: Offset(-1.0, -1.0),
            ),
          ],
        ),

        child: Text('Hello World!'),
      ),
    );
  }
}
