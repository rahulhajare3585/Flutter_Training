import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CardWidget> createState() => _CardWidget();
}

class _CardWidget extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Card widget'),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.blue,
          elevation: 12,
          child: Container(
            child: Padding(
                padding: EdgeInsets.all(10), child: Text("Rahul Hajare")),
          ),
        ),
      ),
    );
  }
}
