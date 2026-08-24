import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TempNow/screens/location_screen.dart';
import 'package:learnflutter/beginningapdevwithflutter/TempNow/services/location.dart';
import 'package:learnflutter/beginningapdevwithflutter/TempNow/services/networking.dart';

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  double latitude = 0;
  double longitude = 0;

  @override
  initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc');
    var weatherData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gokuin.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
