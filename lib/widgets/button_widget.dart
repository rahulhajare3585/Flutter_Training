import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ButtonWidget> createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Button Widget'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                print('Text button tapped');
              },
              onLongPress: () {
                print('long Pressed');
              },
              child: Text('Click Here..')),
          //elevated button
          ElevatedButton(
              onPressed: () {
                print('Elevated button pressed');
              },
              child: Text('Elevated Button')),
          //outlined button
          OutlinedButton(
              onPressed: () {
                print('outlined button pressed');
              },
              child: Text('Outlined Button'))
        ],
      )),
    );
  }
}
