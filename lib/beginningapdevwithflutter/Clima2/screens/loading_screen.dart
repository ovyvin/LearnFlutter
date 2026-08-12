import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:learnflutter/beginningapdevwithflutter/Clima2/services/location.dart';

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
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    print(location.latitude);
    longitude = location.longitude;
    print(location.longitude);
  }

  void getData() async {
    //https://api.openweathermap.org/data/4.0/onecall/current?lat={lat}&lon={lon}&appid={6009e78560f913dcfc7230ab83ac55b2}
    // try {
    //   http.Response response = await http.get(Uri.parse(
    //       'https://api.openweathermap.org/data/4.0/onecall/current?lat=52.2297&lon=21.0122&units=metric&lang=en&appid=5f2e776e1eafd56eb851fb905e64be65'));
    //   //https://samples/openweathermap.org/data/2.5/weather?lat=45.77&lon=21.21&appid=6009e78560f913dcfc7230ab83ac55b2
    //   //  https://api.openweathermap.org/data/4.0/onecall/current?lat=52.2297&lon=21.0122&units=metric&lang=en&appid={API key}
    //   // https://my.meteoblue.com/packages/basic-1h_basic-day?lat=45.77&lon=21.21&apikey=CWBXAKz0pT1MLsUc
    //   print(response.body);
    // } catch (e) {
    //   print(e);
    // }
    http.Response response = await http.get(Uri.parse(
        'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc'));

    if (response.statusCode == 200) {
      String data = response.body;
      var temperature = jsonDecode(data);
      var temp1 = temperature['data_day']['temperature_instant'][1];
      print(temp1);
    } else {
      print(response.statusCode);
    }
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
