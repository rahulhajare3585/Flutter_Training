import 'package:flutter/material.dart';

class FlutterGridView extends StatefulWidget {
  const FlutterGridView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FlutterGridView> createState() => _FlutterGridView();
}

class _FlutterGridView extends State<FlutterGridView> {
  var colorArray = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.amber,
    Colors.greenAccent,
    Colors.grey
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Grid View'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          /*GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(
                color: colorArray[0],
              ),
              Container(
                color: colorArray[1],
              ),
              Container(
                color: colorArray[2],
              ),
              Container(
                color: colorArray[3],
              ),
              Container(
                color: colorArray[4],
              ),
              Container(
                color: colorArray[5],
              ),
              Container(
                color: colorArray[6],
              ),
              Container(
                color: colorArray[7],
              ),
            ],
          ),
          SizedBox(height: 100),*/
          GridView.extent(
            maxCrossAxisExtent: 50,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(
                color: colorArray[0],
              ),
              Container(
                color: colorArray[1],
              ),
              Container(
                color: colorArray[2],
              ),
              Container(
                color: colorArray[3],
              ),
              Container(
                color: colorArray[4],
              ),
              Container(
                color: colorArray[5],
              ),
              Container(
                color: colorArray[6],
              ),
              Container(
                color: colorArray[7],
              ),
            ],
          ),

          // GridView.builder( itemBuilder: (context,index){
          //   return Container(color:  arrColor[index],)
          // })
        ],
      ),
    );
  }
}
