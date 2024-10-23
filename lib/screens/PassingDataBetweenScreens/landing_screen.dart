import 'package:flutter/material.dart';
import '../PassingDataBetweenScreens/welcome_screen.dart';

class LandingScreen extends StatelessWidget {
  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Landing screen'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: messageController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen(
                                messageString:
                                    messageController.text.toString())));
                  },
                  child: Text("next")),
            ],
          ),
        ),
      ),
    );
  }
}
