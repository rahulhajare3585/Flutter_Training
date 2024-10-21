import 'package:flutter/material.dart';

class CallbackFunctions extends StatefulWidget {
  const CallbackFunctions({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CallbackFunctions> createState() => _CallbackFunctions();
}

class _CallbackFunctions extends State<CallbackFunctions> {
  callBack() {
    print('Clicked...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(onPressed: callBack, child: Text('Click me!!!')),
      ),
    );
  }
}
