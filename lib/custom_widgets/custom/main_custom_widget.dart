import 'package:flutter/material.dart';
import 'package:training_app/custom_widgets/custom/rounded_button_widget.dart';
import 'package:training_app/custom_widgets/custom_widget.dart';

class MainCustomWidget extends StatefulWidget {
  const MainCustomWidget({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MainCustomWidget> createState() => _MainCustomWidget();
}

class _MainCustomWidget extends State<MainCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Custom Widget'),
      ),
      body: RoundedButtonWidget(
        btnName: 'Login',
        icon: Icon(Icons.lock),
        callBack: () {
          print('Logged in success');
        },
        textStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}
