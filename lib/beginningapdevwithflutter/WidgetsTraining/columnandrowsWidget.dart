import 'package:flutter/material.dart';

class ColumnsRowsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 300,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Container(
              height: 100,
              width: 200,
              color: Colors.orange,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
