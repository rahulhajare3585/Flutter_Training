import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatefulWidget {
  const ListviewBuilderWidget({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<ListviewBuilderWidget> createState() => _ListviewBuilderWidget();
}

class _ListviewBuilderWidget extends State<ListviewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Ramanujan', 'Rahul', 'Rajesh', 'Ram', 'Rahim'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("list view builder"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            );
          },
          itemCount: arrNames.length,
          reverse: false,
          itemExtent: 100,
          scrollDirection: Axis.horizontal,
        ));
  }
}
