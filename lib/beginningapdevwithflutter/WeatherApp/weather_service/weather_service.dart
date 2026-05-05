import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learnflutter/beginningapdevwithflutter/WeatherApp/weather_model/weather_model.dart';

class WeatherService {
  static const BASE_URL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey;

  WeatherService(this.apiKey);

  Future<Weather> getWeather(String cityName) async {
    final response = await 
  }
}
