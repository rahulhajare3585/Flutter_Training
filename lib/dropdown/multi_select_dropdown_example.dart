import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class MultiSelectDropdownWithCustomItems extends StatefulWidget {
  @override
  _MultiSelectDropdownWithCustomItemsState createState() =>
      _MultiSelectDropdownWithCustomItemsState();
}

class _MultiSelectDropdownWithCustomItemsState
    extends State<MultiSelectDropdownWithCustomItems> {
  final List<Map<String, String>> _options = [
    {"DxCode": "A4.02", "description": "Low fever desc"},
    {"DxCode": "A04.02", "description": "High fever desc"},
    {"DxCode": "A02.39", "description": "Low fever desc"},
  ];

// Surgeon List
  final List<String> surgeonList = [
    "Dr. John Doe",
    "Dr. Jane Smith",
    "Dr. Emily White",
    "Dr. Michael Brown",
    "Dr. Olivia Green"
  ];

  List<Map<String, String>> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdowns"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('DX Codes'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownSearch<Map<String, String>>.multiSelection(
              items: _options,
              selectedItems: _selectedOptions,
              onChanged: (List<Map<String, String>> selections) {
                setState(() {
                  _selectedOptions = selections;
                });
              },
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "DX Codes",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              popupProps: PopupPropsMultiSelection.menu(
                showSearchBox: true,
                searchFieldProps: const TextFieldProps(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search DX Codes',
                  ),
                ),
                itemBuilder: (context, item, isSelected) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          // Deselect the item
                          _selectedOptions.remove(item);
                        } else {
                          // Select the item
                          _selectedOptions.add(item);
                        }
                      });
                    },
                    child: ListTile(
                      title: Row(
                        children: [
                          if (isSelected) // Show check icon based on selection
                            Icon(Icons.check, color: Colors.blue),
                          const SizedBox(
                              width: 8), // Space between check icon and text
                          RichText(
                            textDirection: TextDirection.ltr,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${item['DxCode']} ",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "${item['description']}",
                                  style: const TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              itemAsString: (Map<String, String>? item) =>
                  item?['DxCode'] ?? '',
            ),
          ),
          Padding(padding: EdgeInsets.all(16), child: Text('DX Codes')),
          Padding(
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
        ],
      ),
    );
  }
}
