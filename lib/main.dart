import 'package:flutter/material.dart';
import 'package:training_app/widgets/add_image.dart';
import 'package:training_app/widgets/button_widget.dart';
import 'package:training_app/widgets/center_widget.dart';
import 'package:training_app/widgets/container_widget.dart';
import 'package:training_app/widgets/rows_and_column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RowsAndColumnWidget(title: "Center widget"),
    );
  }
}
