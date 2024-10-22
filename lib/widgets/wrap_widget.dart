import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WrapWidget> createState() => _WrapWidget();
}

class _WrapWidget extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Wrap widgets'),
      ),
      body: Wrap(
        direction: Axis.vertical,
        spacing: 10,
        runSpacing: 11,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.purple,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
