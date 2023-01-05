import 'package:flutter/material.dart';

import './Screens/splashScreen.dart';
import './Screens/loginScreen.dart';
import './Screens/Dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color primaryColor = Color.fromARGB(255, 58, 79, 155);
  Color secondaryColor = Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: const Color(0xFF1976D2),
        backgroundColor: const Color.fromARGB(255, 237, 244, 250),
        // colorScheme: ColorSch(0xFF81c784),
        // bottomAppBarColor: const Color(0xFF64B5F6),
        // accentColor: Colors.deepOrange, Color(0xFFC8E6C9),
        // fontFamily: 'Lato',
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        loginScreen.routeName: (ctx) => loginScreen(),
        Dashboard.routeName: (ctx) => Dashboard(),
      },
    );
  }
}
