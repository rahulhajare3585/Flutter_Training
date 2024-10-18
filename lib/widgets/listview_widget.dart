import 'package:flutter/material.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListviewWidget> createState() => _TextWidget();
}

class _TextWidget extends State<ListviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text Widget"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'one',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'two',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'three',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'four',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}
