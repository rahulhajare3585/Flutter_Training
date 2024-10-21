import 'package:flutter/material.dart';

class MarginAndPadding extends StatefulWidget {
  const MarginAndPadding({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MarginAndPadding> createState() => _MarginAndPadding();
}

class _MarginAndPadding extends State<MarginAndPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Margin And Padding"),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.all(11),
          child: Text(
            "Rahul Hajare",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
