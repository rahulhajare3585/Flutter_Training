import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListTileWidget> createState() => _ListTileWidget();
}

class _ListTileWidget extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Raman',
      'Ramanujan',
      'Rahul',
      'Rajesh',
      'Ram',
      'Rahim',
      'Raman',
      'Ramanujan',
      'Rahul',
      'Rajesh',
      'Ram',
      'Rahim'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 32, 54),
          title: Text("List view separator",
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  child: Text(
                    'Rahul Hajare',
                    style: TextStyle(fontSize: 6),
                  ),
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  maxRadius: 50,
                  minRadius: 20,
                ),
              ),
              title: Text(arrNames[index]),
              subtitle: Text('Software developer'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          reverse: false,
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
            );
          },
        ));
  }
}
