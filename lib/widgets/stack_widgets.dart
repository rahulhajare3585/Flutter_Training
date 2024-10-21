import 'package:flutter/material.dart';

class StackWidgets extends StatefulWidget {
  const StackWidgets({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StackWidgets> createState() => _StackWidgets();
}

class _StackWidgets extends State<StackWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Positioned(
              top: 50,
              right: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
