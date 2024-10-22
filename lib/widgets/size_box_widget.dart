import 'package:flutter/material.dart';

class SizeBoxWidget extends StatefulWidget {
  const SizeBoxWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SizeBoxWidget> createState() => _SizeBoxWidget();
}

class _SizeBoxWidget extends State<SizeBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Size box '),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 50,
          //sizeBox.expand, SizeBox.Square & sizeBox.shrink is also there
          child: ElevatedButton(onPressed: () {}, child: Text('Click')),
        ),
      ),
    );
  }
}
