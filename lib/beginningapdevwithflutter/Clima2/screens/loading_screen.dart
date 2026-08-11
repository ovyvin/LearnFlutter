import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima2/services/location.dart';

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
  }

  // void somethinThatExpects(int n) {
  //   if (n > 10) {
  //     throw 'n is greater than 10, not ok';
  //   }
  // }

  // initState() {
  //   super.initState();
  //   getLocation();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
