import 'dart:async';

import 'package:demo/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffFFB901),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    //
                    child: Image.asset('images/logo.png')),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    // height: MediaQuery.of(context).size.height * 0.70,
                    child: Image.asset('images/woman.png')),
              ],
            ),
          ),
        ));
  }
}
