import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ScrollWidget> createState() => _ScrollWidget();
}

class _ScrollWidget extends State<ScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Scroll Widget"),
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 200,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 200,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 200,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 200,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ));
  }
}
