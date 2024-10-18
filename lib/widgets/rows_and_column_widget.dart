import 'package:flutter/material.dart';

//use to arrange widget horizontally
class RowsAndColumnWidget extends StatefulWidget {
  const RowsAndColumnWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RowsAndColumnWidget> createState() => _RowsWidget();
}

class _RowsWidget extends State<RowsAndColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Rows & column Widget"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("A"),
              Text("B"),
              Text("C"),
              Text("D"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("A"),
                  Text("B"),
                  Text("C"),
                  Text("D"),
                ],
              )
            ],
          ),
        ));
  }
}
