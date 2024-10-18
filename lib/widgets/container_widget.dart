import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TextWidget> createState() => _TextWidget();
}

class _TextWidget extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Text Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: const Center(
            child: Text(
              "This is Text in inside center widget",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  backgroundColor: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}
