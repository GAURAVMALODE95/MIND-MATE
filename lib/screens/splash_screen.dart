import 'package:flutter/material.dart';

import 'dart:async';

import 'package:mind_mate/screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 second
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Replace with your preferred background color
      body: Center(
        child: Image.asset(
            'assets/images/splash_1.jpg'), // Replace with your image asset path
      ),
    );
  }
}
