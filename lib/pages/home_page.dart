import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/pages/home_location.dart';
import 'package:weather_app/pages/widgets/home_icon.dart';
import 'package:weather_app/pages/widgets/home_temperature.dart';
import 'package:weather_app/pages/widgets/home_weather.dart';
import 'package:weather_app/provider/weather_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 5, 81, 142),
              Colors.lightBlueAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeather(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator());
            }
            if (!snapshot.hasData) {
              return const Center(child: Text('Erro Loading Data'));
            }
            WeatherModel data = snapshot.data;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeIcon(icon: data.weather[0].main),
                const SizedBox(height: 60),
                HomeTemperature(
                  temperature: data.main.temp,
                ),
                HomeLocation(nameLocation: data.name),
                SizedBox(height: 40),
                HomeWeather(
                  windSpeed: data.wind.speed,
                  humidity: data.main.humidity,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
