import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:learnflutter/beginningapdevwithflutter/Clima2/services/location.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima2/services/networking.dart';
import 'package:learnflutter/beginningapdevwithflutter/Clima2/screens/location_screen.dart';

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
    getLocationData();
    //getData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    print(location.latitude);
    longitude = location.longitude;
    print(location.longitude);

    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc');
    var weatherData = await networkHelper.getData();
    //print(weatherData);

    //var temp1 = weatherData['data_day']['temperature_instant'][3];
    //print(temp1);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));

    //var temp1 = weatherData['data_day']['temperature_instant'][3];
  }

  // void getData() async {
  //   //https://api.openweathermap.org/data/4.0/onecall/current?lat={lat}&lon={lon}&appid={6009e78560f913dcfc7230ab83ac55b2}
  //   // try {
  //   //   http.Response response = await http.get(Uri.parse(
  //   //       'https://api.openweathermap.org/data/4.0/onecall/current?lat=52.2297&lon=21.0122&units=metric&lang=en&appid=5f2e776e1eafd56eb851fb905e64be65'));
  //   //   //https://samples/openweathermap.org/data/2.5/weather?lat=45.77&lon=21.21&appid=6009e78560f913dcfc7230ab83ac55b2
  //   //   //  https://api.openweathermap.org/data/4.0/onecall/current?lat=52.2297&lon=21.0122&units=metric&lang=en&appid={API key}
  //   //   // https://my.meteoblue.com/packages/basic-1h_basic-day?lat=45.77&lon=21.21&apikey=CWBXAKz0pT1MLsUc
  //   //   print(response.body);
  //   // } catch (e) {
  //   //   print(e);
  //   // }
  //   http.Response response = await http.get(Uri.parse(
  //       'https://my.meteoblue.com/packages/basic-1h_basic-day?lat=$latitude&lon=$longitude&apikey=CWBXAKz0pT1MLsUc'));

  //   if (response.statusCode == 200) {
  //     String data = response.body;
  //     var temperature = jsonDecode(data);
  //     var temp1 = temperature['data_day']['temperature_instant'][3];
  //     print(temp1);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  // void somethinThatExpects(int n) {
  //   if (n > 10) {
  //     throw 'n is greater than 10, not ok';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/BlackSmokeShenron_animation.gif'),
          fit: BoxFit.cover,
        ),
      ),
      constraints: BoxConstraints.expand(),

      // Center(
      //   child: SpinKitDoubleBounce(
      //     color: Colors.white,
      //     size: 100.0,
      //   ),
      // ),
    ));
  }
}
