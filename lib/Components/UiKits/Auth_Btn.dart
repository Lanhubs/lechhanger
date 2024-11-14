import 'package:flutter/material.dart';

class AuthBtn extends StatefulWidget {
  final VoidCallback onClick;
  final String text;
  const AuthBtn({super.key, required this.onClick, required this.text});

  @override
  State<AuthBtn> createState() => _AuthBtnState();
}

class _AuthBtnState extends State<AuthBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onClick,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: Text(widget.text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, ))
          )
        ));
  }
}
