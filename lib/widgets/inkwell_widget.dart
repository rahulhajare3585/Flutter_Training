import 'package:flutter/material.dart';

//is a material widget in flutter
class InkwellWidget extends StatefulWidget {
  const InkwellWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<InkwellWidget> createState() => _InkwellWidget();
}

class _InkwellWidget extends State<InkwellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Rows & column Widget"),
      ),
      body: InkWell(
        onTap: () {
          print('tapped');
        },
        onDoubleTap: () {
          print('double tapped');
        },
        onLongPress: () {
          print('long tapped');
        },
        child: Center(
          child: Container(
            child: Text(
              'Inkwell widget tap',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
