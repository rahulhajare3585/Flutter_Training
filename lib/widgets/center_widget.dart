import 'package:flutter/material.dart';

class CenterWidget extends StatefulWidget {
  const CenterWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CenterWidget> createState() => _CenterWidget();
}

class _CenterWidget extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey,
          child: Center(
            child: Text(
              "This is container in center widget",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }
}
