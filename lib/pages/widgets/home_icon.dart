import 'package:flutter/material.dart';
import 'package:weather_app/pages/utils/api_key.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        AssetCustom.getLinkImg(icon),
        fit: BoxFit.cover,
      ),
    );
  }
}
