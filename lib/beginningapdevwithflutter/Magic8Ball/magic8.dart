import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Magic8App extends StatefulWidget {
  @override
  _Magic8AppState createState() => _Magic8AppState();
}

class _Magic8AppState extends State<Magic8App> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset('/assets/images/ball1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
