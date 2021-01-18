import 'package:demo/screens/itemOverviewScreen.dart';
import 'package:demo/screens/loginScreen.dart';
import 'package:demo/screens/spaceScreen.dart';
import 'package:flutter/material.dart';
import './screens/homeOverviewScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NearbyPlaces',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF7F7F7),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 17.0,
            color: Color(
              0xff6B6B6B,
            ),
          ),
        ),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeOverviewScreen.id: (context) => HomeOverviewScreen(),
        ItemOverviewScreen.id: (context) => ItemOverviewScreen(),
      },
    );
  }
}
