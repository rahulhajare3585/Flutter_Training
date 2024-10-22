import 'package:flutter/material.dart';

class PositionedWidget extends StatefulWidget {
  const PositionedWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PositionedWidget> createState() => _PositionedWidget();
}

class _PositionedWidget extends State<PositionedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Positioned Widget '),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                bottom: 100,
                right: 40,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
