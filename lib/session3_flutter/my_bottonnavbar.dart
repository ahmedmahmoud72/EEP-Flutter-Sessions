import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ieee_session6/session3_flutter/screens/home_screen.dart';
import 'package:ieee_session6/session3_flutter/screens/messanger%20app.dart';
import 'package:ieee_session6/session3_flutter/screens/user_screen.dart';

class MyWidgets extends StatefulWidget {
  @override
  State<MyWidgets> createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: Colors.blueAccent,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print(index);
        },
      ),
      body: screens[currentIndex],
    );
  }
}

List<Widget> screens = const [
  HomeScreen(),
  MessengerApp(),
  UserScreen(),
];
