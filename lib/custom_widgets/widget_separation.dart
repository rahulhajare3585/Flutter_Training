import 'package:flutter/material.dart';

class WidgetSeparation extends StatefulWidget {
  const WidgetSeparation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<WidgetSeparation> createState() => _WidgetSeparation();
}

class _WidgetSeparation extends State<WidgetSeparation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Splitting Widgets'),
      ),
      body: containerWidget(),
    );
  }
}

class containerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        color: Colors.amber,
        child:
            Center(child: Text('This text is placed inside splitted widget')),
      ),
    );
  }
}
