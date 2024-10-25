import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training_app/dropdown/dropdown_landing_screen.dart';
import 'package:training_app/dropdown/multi_select_dropdown_example.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DropdownLandingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Flutter Training App',
            style: TextStyle(
                fontFamily: 'Agdasima',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30),
          ),
        ),
      ),
    );
  }
}
