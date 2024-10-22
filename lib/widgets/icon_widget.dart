import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<IconWidget> createState() => _IconWidget();
}

class _IconWidget extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Icon Widget '),
        ),
        body: const Center(
          child: Icon(
            Icons.import_contacts,
            size: 100,
          ),
        ));
  }
}
