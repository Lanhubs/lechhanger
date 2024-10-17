import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Introfade extends StatefulWidget {
  final String image;
  final String text;

  const Introfade({required this.image, required this.text, super.key});

  @override
  State<Introfade> createState() => _IntrofadeState();
}

class _IntrofadeState extends State<Introfade> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(widget.image, height: 600, 
         width: MediaQuery.of(context).size.width,
         ),
         Text(
          widget.text,
          style:  TextStyle(color: Colors.grey[900], fontSize: 20.0),
        ),
      ],
    );
  }
}
