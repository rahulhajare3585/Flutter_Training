import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatefulWidget {
  const ConstrainedBoxWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ConstrainedBoxWidget> createState() => _ConstrainedBoxWidget();
}

class _ConstrainedBoxWidget extends State<ConstrainedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Constrained box '),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
          child: Container(
            color: Colors.red,
          ),
        ));
  }
}
