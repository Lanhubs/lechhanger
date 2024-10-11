import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lexchanger/ui/Intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    return Timer(const Duration(seconds: 3), route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (conext) => const IntroScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: const Center(
          child: SpinKitCubeGrid(color: Colors.orangeAccent, size: 50.0),
        ),
      ),
    );
  }
}
