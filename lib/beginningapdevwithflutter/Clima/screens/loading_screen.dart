import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=47.558&lon=7.573&apikey=CWBXAKz0pT1MLsUc'));
    if (response.statusCode == 200) {
      String data = response.body;
      print(response.statusCode);
      var decodedData = jsonDecode(data);
      var weatherDescription = decodedData['data_1h']['temperature'][0];
      print(weatherDescription);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            getLocation();
            getData();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
