import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage() : super();

  @override
  State<DetailsPage> createState() => _HeroAnimationWidget();
}

class _HeroAnimationWidget extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hero Animation'),
      ),
      body: Container(
        child: Container(
          child: Hero(
            child: Image.asset('assets/images/profile.jpeg'),
            tag: 'background',
          ),
        ),
      ),
    );
  }
}
