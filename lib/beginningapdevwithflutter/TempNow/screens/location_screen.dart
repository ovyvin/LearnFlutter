import 'package:flutter/material.dart';
import 'package:learnflutter/beginningapdevwithflutter/TempNow/utilities/constants.dart';
import 'package:learnflutter/beginningapdevwithflutter/TempNow/services/animation_service.dart';

class LocationScreen extends StatefulWidget {
  final locationWeather;
  LocationScreen({this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature = 0;
  int hour = 0;
  //String valueString = 'gokuin';
  String valueString = '';

  initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    AnimationService animationService = AnimationService();
    double temp;
    final timeNow = DateTime.now();
    var hourNow = timeNow.hour;
    hour = hourNow.toInt();
    print('The hour is $hour');

    //temp = weatherData['data_day']['temperature_instant'][3];
    //temp = weatherData['data_day']['temperature_mean'][0];
    temp = weatherData['data_1h']['temperature'][hour];
    temperature = temp.toInt();
    //cityName = weatherData['metadata']['name'];
    print(temperature);
    valueString = animationService.getAnimation(temperature);
    print(valueString);
    //print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$valueString'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
