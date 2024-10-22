import 'package:flutter/material.dart';

class StatefulWidgetCalculator extends StatefulWidget {
  const StatefulWidgetCalculator() : super();

  State<StatefulWidgetCalculator> createState() => _StatefulWidgetCalculator();
}

class _StatefulWidgetCalculator extends State<StatefulWidgetCalculator> {
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  var resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Calculator'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(
                    onPressed: () {
                      var num1 = int.parse(num1Controller.text.toString());
                      var num2 = int.parse(num2Controller.text.toString());
                      var res = num1 + num2;
                      setState(() {
                        resultText = 'Addition of $num1 and $num2 is $res';
                      });
                    },
                    child: const Text('Add')),
                ElevatedButton(
                    onPressed: () {
                      var num1 = int.parse(num1Controller.text.toString());
                      var num2 = int.parse(num2Controller.text.toString());
                      var res = num1 - num2;
                      setState(() {
                        resultText = 'Substraction of $num1 and $num2 is $res';
                      });
                    },
                    child: Text('Sub')),
                ElevatedButton(
                    onPressed: () {
                      var num1 = int.parse(num1Controller.text.toString());
                      var num2 = int.parse(num2Controller.text.toString());
                      var res = num1 / num2;
                      setState(() {
                        resultText = 'Division of $num1 and $num2 is $res';
                      });
                    },
                    child: Text('Div')),
                ElevatedButton(
                    onPressed: () {
                      var num1 = int.parse(num1Controller.text.toString());
                      var num2 = int.parse(num2Controller.text.toString());
                      var res = num1 * num2;
                      setState(() {
                        resultText =
                            'Multiplication of $num1 and $num2 is $res';
                      });
                    },
                    child: const Text('Mult')),
              ]),
              const SizedBox(height: 20),
              Text('${resultText}')
            ],
          ),
        ),
      ),
    );
  }
}
