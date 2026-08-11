import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:learnflutter/beginningapdevwithflutter/Clima2/services/location.dart';

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  // void somethinThatExpects(int n) {
  //   if (n > 10) {
  //     throw 'n is greater than 10, not ok';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
