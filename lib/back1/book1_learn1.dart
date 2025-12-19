import 'package:flutter/material.dart';

class Book1ex1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: [
          Theme(
            data: ThemeData(
              cardColor: Colors.deepOrange,
            ),
            child: Card(
              child: Text('Zece'),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(cardColor: Colors.deepOrange),
            child: Card(
              child: Text('MM'),
            ),
          ),
        ],
      ),
    );
  }
}
