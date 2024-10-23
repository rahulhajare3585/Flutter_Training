import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  RangeValues values = RangeValues(0, 1);
  RangeLabels? labels;

  @override
  void initState() {
    super.initState();
    labels = RangeLabels(values.start.toString(), values.end.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Slider'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          divisions: 10,
          labels: labels,
          min: 0,
          max: 100,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          onChanged: (newValue) {
            setState(() {
              values = newValue;
              labels =
                  RangeLabels(values.start.toString(), values.end.toString());
            });
          },
        ),
      ),
    );
  }
}
