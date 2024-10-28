import 'package:flutter/material.dart';
import 'package:training_app/Animations/details_page.dart';

class HeroAnimationWidget extends StatefulWidget {
  const HeroAnimationWidget() : super();

  @override
  State<HeroAnimationWidget> createState() => _HeroAnimationWidget();
}

class _HeroAnimationWidget extends State<HeroAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hero Animation'),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsPage()));
            },
            child: Hero(
                child: Image.asset('assets/images/profile.jpeg',
                    width: 100, height: 100),
                tag: 'background'),
          ),
        ),
      ),
    );
  }
}
