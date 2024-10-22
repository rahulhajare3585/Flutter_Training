import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesome extends StatefulWidget {
  const FontAwesome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<FontAwesome> createState() => _FontAwesome();
}

class _FontAwesome extends State<FontAwesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Icon Widget '),
        ),
        body: const Center(
          child: Row(children: [
            Icon(
              Icons.import_contacts,
              size: 100,
            ),
            FaIcon(
              FontAwesomeIcons.googlePay,
              size: 100,
            ),
          ]),
        ));
  }
}
