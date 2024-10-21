import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ExpandedWidget> createState() => _ExpandedWidget();
}

class _ExpandedWidget extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Expanded widget"),
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.yellow,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 100,
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
      ]),
    );
  }
}
