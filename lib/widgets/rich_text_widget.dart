import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<RichTextWidget> createState() => _RichTextWidget();
}

class _RichTextWidget extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Rich Text '),
      ),
      body: RichText(
        text: const TextSpan(
            style: TextStyle(
                color: Colors.grey, fontSize: 21, fontFamily: 'Agdasima'),
            children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(
                  text: 'World',
                  style: TextStyle(color: Colors.red, fontSize: 32)),
              TextSpan(text: ' Welcome to '),
              TextSpan(
                  text: 'Flutter.',
                  style: TextStyle(color: Colors.green, fontSize: 43)),
            ]),
      ),
    );
  }
}
