import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CustomWidget> createState() => _CustomWidget();
}

class _CustomWidget extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Custom Widgets'),
      ),
    );
  }
}
