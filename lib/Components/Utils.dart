import 'package:flutter/material.dart';

class ListItem {
  final Icon icon;
  final String text;
  final VoidCallback onPressed;

  ListItem({required this.icon, required this.text, required this.onPressed});
}