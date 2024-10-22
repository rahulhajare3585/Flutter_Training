import 'package:flutter/material.dart';
import 'package:training_app/StatefulAndStaeless/stateful_widget_calculator.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Training App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 21,
                fontFamily: 'Agdasima',
                fontWeight: FontWeight.w700),
            headlineSmall: TextStyle(fontSize: 10, fontFamily: 'Agdasima')),
      ),
      home: const StatefulWidgetCalculator(),
    );
  }
}
