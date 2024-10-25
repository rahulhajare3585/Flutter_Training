import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidget();
}

class _AnimatedOpacityWidget extends State<AnimatedOpacityWidget> {
  var myOpacity = 1.0;
  Color containerColor = Colors.grey;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Animated opacity'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(seconds: 5),
                curve: Curves.bounceOut,
                child: Container(
                  width: 200,
                  height: 200,
                  color: containerColor,
                ),
              ),
              //Elevated Button

              ElevatedButton(
                  onPressed: () {
                    if (flag) {
                      myOpacity = 0;
                      containerColor = Colors.blue;
                      flag = false;
                    } else {
                      myOpacity = 1.0;
                      containerColor = Colors.grey;
                      flag = true;
                    }
                    setState(() {});
                  },
                  child: Text('Animate')),
            ],
          ),
        ));
  }
}
