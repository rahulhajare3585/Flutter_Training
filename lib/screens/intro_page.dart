import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training_app/StatefulAndStaeless/stateful_widget_calculator.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Navigation'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StatefulWidgetCalculator()));
            },
            child: const Text('Next Page')),
      ),
    );
  }
}
