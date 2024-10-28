import 'dart:async';

import 'package:flutter/material.dart';

class FlutterAnimatedCrossFadeWidget extends StatefulWidget {
  @override
  State<FlutterAnimatedCrossFadeWidget> createState() =>
      _AnimatedOpacityWidget();
}

class _AnimatedOpacityWidget extends State<FlutterAnimatedCrossFadeWidget> {
  bool isFirst = true;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = isFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Animated Cross Fade '),
      ),
      body: Center(
        child: Column(children: [
          AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            secondChild: Image.asset('assets/images/profile.jpeg',
                width: 100, height: 100),
            duration: const Duration(seconds: 2),
            firstCurve: Curves.bounceInOut,
            secondCurve: Curves.decelerate,
            crossFadeState:
                isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          ElevatedButton(
              onPressed: () {
                reload();
              },
              child: const Text('Animate'))
        ]),
      ),
    );
  }
}
