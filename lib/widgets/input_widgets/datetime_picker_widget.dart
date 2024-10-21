import 'package:flutter/material.dart';

class DatetimePickerWidget extends StatefulWidget {
  const DatetimePickerWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  State<DatetimePickerWidget> createState() => _DatetimePickerWidget();
}

class _DatetimePickerWidget extends State<DatetimePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Select Date'),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2025));
                  print(datePicked);
                },
                child: Text('Show')),
            ElevatedButton(
                onPressed: () async {
                  var timePicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  print(timePicked);
                },
                child: Text('Show Time'))
          ],
        ),
      ),
    );
  }
}
