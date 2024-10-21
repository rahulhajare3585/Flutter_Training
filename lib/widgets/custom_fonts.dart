import 'package:flutter/material.dart';

class CustomFonts extends StatefulWidget {
  const CustomFonts({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CustomFonts> createState() => _CustomFonts();
}

class _CustomFonts extends State<CustomFonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Custom fonts",
          style: TextStyle(
              fontFamily: 'Agdasima',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
      ),
      body: Center(
        child: Text(
          'Rahul Hajare',
          style: TextStyle(
              fontFamily: 'Agdasima',
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.red),
        ),
      ),
    );
  }
}
