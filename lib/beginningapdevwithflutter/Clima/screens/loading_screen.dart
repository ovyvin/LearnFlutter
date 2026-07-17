import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/services/location.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/services/networking.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima/screens/location_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? longitude;
  double? latitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    longitude = location.longitude;
    print(longitude);
    latitude = location.latitude;
    print(latitude);

    NetworkHelper networkHelper = NetworkHelper(
        'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc');

    var weatherData = await networkHelper.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen();
    }));
  }

  // void getLocationData() async {
  //   http.Response response = await http.get(Uri.parse(
  //       'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc'));
  //   if (response.statusCode == 200) {
  //     String data = response.body;
  //     print(response.statusCode);
  //     var decodedData = jsonDecode(data);
  //     var weatherDescription = decodedData['data_1h']['temperature'][0];
  //     print(weatherDescription);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50.0,
          duration: Duration(milliseconds: 5000),
        ),
      ),
    );
  }
}
