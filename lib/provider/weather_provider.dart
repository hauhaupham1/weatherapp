import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherModel> getWeather() async {
    //call to api
    WeatherModel result = await ApiRepository.callApiGetWeather();
    return result;
  }
}
