import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SurgeonDropdown extends StatelessWidget {
  final List<String> surgeonList = [
    "Dr. John Doe",
    "Dr. Jane Smith",
    "Dr. Emily White",
    "Dr. Michael Brown",
    "Dr. Olivia Green"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Surgeon")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DropdownSearch<String>(
          popupProps: const PopupProps.menu(
            showSearchBox: true,
          ),
          items: surgeonList,
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: "Surgeon",
              hintText: "Select a surgeon",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              border: OutlineInputBorder(),
            ),
          ),
          onChanged: (String? selectedSurgeon) {
            print("Selected Surgeon: $selectedSurgeon");
          },
        ),
      ),
    );
  }
}
