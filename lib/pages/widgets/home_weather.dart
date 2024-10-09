import 'package:flutter/material.dart';

class HomeWeather extends StatelessWidget {
  final double windSpeed;
  final dynamic humidity;
  const HomeWeather(
      {super.key, required this.windSpeed, required this.humidity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/icons/wind.png',
              fit: BoxFit.fill,
              width: 30,
              height: 30,
            ),
            Text(
              '${windSpeed.toString()} km/h',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/icons/humidity.png',
              fit: BoxFit.fill,
              width: 30,
              height: 30,
            ),
            Text(
              '${humidity.toString()} %',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
