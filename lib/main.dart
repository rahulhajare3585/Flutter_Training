import 'package:flutter/material.dart';
import 'package:training_app/widgets/container_decoration.dart';
import 'package:training_app/widgets/expanded_widget.dart';
import 'package:training_app/widgets/list_view_separator.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ExpandedWidget(title: "Center widget"),
    );
  }
}
