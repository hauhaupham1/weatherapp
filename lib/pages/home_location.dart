import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  final String nameLocation;
  const HomeLocation({super.key, required this.nameLocation});

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('MM dd yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Colors.white),
            Text(
              nameLocation,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(fontSize: 28, color: Colors.white),
        )
      ],
    );
  }
}
