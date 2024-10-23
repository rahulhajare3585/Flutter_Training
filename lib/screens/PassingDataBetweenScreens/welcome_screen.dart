import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({required this.messageString}) : super();
  final String messageString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text('Welcome $messageString')),
    );
  }
}
