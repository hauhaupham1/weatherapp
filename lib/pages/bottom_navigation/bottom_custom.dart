import 'package:flutter/material.dart';
import 'package:weather_app/pages/detail/detail_page.dart';
import 'package:weather_app/pages/home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({Key? key}) : super(key: key);

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
  ];

  int currentIndex = 0;

  List<Widget> listWidget = [HomePage(), DetailPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listWidget[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: listItem),
    );
  }
}
