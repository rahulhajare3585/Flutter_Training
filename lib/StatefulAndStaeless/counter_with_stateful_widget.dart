import 'package:flutter/material.dart';

class CounterWithStatefulWidget extends StatefulWidget {
  const CounterWithStatefulWidget() : super();

  @override
  State<CounterWithStatefulWidget> createState() =>
      _CounterWithStatefulWidget();
}

class _CounterWithStatefulWidget extends State<CounterWithStatefulWidget> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Stateful widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('User Tapper ${counter} Times'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Pressed'),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
