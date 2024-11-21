import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/pages/utils/api_key.dart';

class ApiRepository {
  static Future<WeatherModel> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&units=metric&appid=${MyKey.api_key}');
      final data = res.data;
      WeatherModel result = WeatherModel.fromMap(data);
      return result;
    } catch (e) {
      throw e;
    }
  }
}
