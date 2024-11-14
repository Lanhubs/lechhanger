import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String placeholder; // Added for the placeholder
  final bool isPassword;
  final ValueChanged<String> onChanged;


  const AuthInput({
    super.key,
    required this.placeholder, // Added for the placeholder
    required this.onChanged,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        hintText: placeholder, // Placeholder text
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Colors.orange, // Orange when focused
            width: 2.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey, // Orange when focused
            width: 2.0,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orange, // Grey when not focused
            width: 1.5,
          ),
        ),
      ),
      onChanged: onChanged, // Triggered when text changes
    );
  }
}
