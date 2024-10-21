import 'package:flutter/material.dart';
import 'package:training_app/ui_helper/util.dart';

class Theames extends StatefulWidget {
  const Theames({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Theames> createState() => _Theames();
}

class _Theames extends State<Theames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Text Widget"),
        ),
        body: Center(
          child: Column(children: [
            Text('Rahul Hajare',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.red)),
            Text('Rahul Hajare',
                style: Theme.of(context).textTheme.headlineSmall),
            Text('Rahul Hajare', style: mTextStyle14()),
            Text('Rahul Hajare', style: mTextStyle11()),
            Text('Rahul Hajare',
                style: mTextStyle19(
                    textColor: Colors.blue, fontWeifgt: FontWeight.bold)),
          ]),
        ));
  }
}
