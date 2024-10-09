import 'package:flutter/material.dart';

class HomeTemperature extends StatelessWidget {
  final num temperature;
  const HomeTemperature({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          temperature.round().toString(),
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '°C',
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
