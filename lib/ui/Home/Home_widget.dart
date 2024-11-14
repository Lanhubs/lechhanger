import 'package:flutter/material.dart';
import 'package:lexchanger/ui/Home/Header.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Header()
        ],
      ),
    );
  }
}