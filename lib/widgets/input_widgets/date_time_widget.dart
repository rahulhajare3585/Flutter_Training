import 'package:flutter/material.dart';
import 'package:intl/intl_browser.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DateTimeWidget> createState() => _DateTimeWidget();
}

class _DateTimeWidget extends State<DateTimeWidget> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Current Time : ${time}} : ${time.minute} :${time.second}'),
            SizedBox(
              height: 12,
            ),
            Text('Date : ${time.day}'),
            SizedBox(
              height: 12,
            ),
            Text('Month : ${time.month}'),
            SizedBox(
              height: 12,
            ),
            Text('Year : ${time.year}'),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('${time}'))
          ],
        ),
      ),
    );
  }
}
