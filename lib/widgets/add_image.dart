import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AddImage> createState() => _AddImage();
}

class _AddImage extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Image widget"),
        ),
        body: Center(
            child: Container(
          height: 300,
          width: 200,
          child: Center(child: Image.asset('assets/images/profile.jpeg')),
        )));
  }
}
