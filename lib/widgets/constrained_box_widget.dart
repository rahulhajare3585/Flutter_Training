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
          title: const Text('Constrained box '),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
          child: const Text(
            'Hello Wold Hello Wold Hello Wold Hello Wold Hello Wold Hello Wold Hello Wold Hello Wold Hello Wold',
            style: TextStyle(fontSize: 21, overflow: TextOverflow.fade),
          ),
        ));
  }
}
