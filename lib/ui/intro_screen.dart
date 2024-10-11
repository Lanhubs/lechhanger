import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
      body:  Center(
          child:  Text(
        "Intro screen",
        style: TextStyle(color: Colors.black, fontSize: 20.0),
      )),
    );
  }
}
