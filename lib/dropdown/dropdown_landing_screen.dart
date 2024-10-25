import 'package:flutter/material.dart';
import 'package:training_app/dropdown/multi_select_dropdown_example.dart';
import 'package:training_app/dropdown/surgeon_dropdown.dart';

class DropdownLandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dropdowns'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurgeonDropdown(),
                        ));
                  },
                  child: const Text("Dropdown")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MultiSelectDropdownWithCustomItems(),
                        ));
                  },
                  child: const Text('Multiselector')),
            ],
          ),
        ));
  }
}
