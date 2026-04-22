import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
            height: 300,
            width: 300,
            //padding: EdgeInsets.all(20),
            //color: Colors.red,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
              //border: Border.all(
              //color: Colors.grey[300],
              //   width: 3,
              //),
              // borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(4.0, 4.0),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(-4.0, -4.0),
                ),
              ],
            ),

            //child: Text('Hello World!'),
            child: Image.asset('assets/images/ball1.png')),
      ),
    );
  }
}
