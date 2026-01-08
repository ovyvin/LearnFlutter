import 'package:flutter/material.dart';

class MaximumBid extends StatefulWidget {
  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _maxBid = 0.0;

  void _incrementMaxBid() {
    setState(() {
      _maxBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('My max bid $_maxBid'),
          FloatingActionButton(
            onPressed: () => _incrementMaxBid(),
          ),
        ],
      ),
    );
  }
}
