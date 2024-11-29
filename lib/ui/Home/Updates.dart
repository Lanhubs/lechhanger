import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          GestureDetector(child: Text("Spot"),),
          GestureDetector(child: Text("Futures"),)

        ],),
        SizedBox(height: 20,),
        
      ],
    );
  }
}