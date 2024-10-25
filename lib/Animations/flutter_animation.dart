import 'package:flutter/material.dart';

class FlutterAnimation extends StatefulWidget {
  @override
  State<FlutterAnimation> createState() => _FlutterAnimation();
}

class _FlutterAnimation extends State<FlutterAnimation> {
  double containerHeight = 100;
  double containeWeidth = 200;
  Color containerColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('SliderAnimated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: containerHeight,
              height: containeWeidth,
              color: containerColor,
              curve: Curves.slowMiddle,
              duration: const Duration(seconds: 1),
              child: const Text('Hello'),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerHeight = containerHeight == 200 ? 100 : 200;
                    containeWeidth = containeWeidth == 200 ? 100 : 200;
                    containerColor =
                        containerHeight == 200 ? Colors.grey : Colors.green;
                  });
                },
                child: const Text('Animate'))
          ],
        ),
      ),
    );
  }
}
