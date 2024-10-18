import 'package:flutter/material.dart';

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ContainerDecoration> createState() => _ContainerDecoration();
}

class _ContainerDecoration extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Container Decoration"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(20, 40),
                    bottomRight: Radius.circular(40)),
                border: Border.all(width: 4, color: Colors.orange),
                boxShadow: [
                  BoxShadow(blurRadius: 51, spreadRadius: 5, color: Colors.grey)
                ],
              ),
            ),
          ),
        ));
  }
}
