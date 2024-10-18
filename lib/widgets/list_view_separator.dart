import 'package:flutter/material.dart';

class ListViewSeparator extends StatefulWidget {
  const ListViewSeparator({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListViewSeparator> createState() => _ListViewSeparator();
}

class _ListViewSeparator extends State<ListViewSeparator> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Ramanujan', 'Rahul', 'Rajesh', 'Ram', 'Rahim'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Text Widget"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            );
          },
          itemCount: arrNames.length,
          reverse: false,
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
            );
          },
        ));
  }
}
