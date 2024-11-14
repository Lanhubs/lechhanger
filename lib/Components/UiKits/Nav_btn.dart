// lib/widgets/custom_nav_bar_item.dart
import 'package:flutter/material.dart';

BottomNavigationBarItem NavBtn({
  required IconData icon,
  required String label,
  required bool isSelected,
  Widget? customIcon =  null,
}) {
  return BottomNavigationBarItem(

    icon: AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutExpo,
      // padding: EdgeInsets.symmetric(horizontal: isSelected ? 12 : 0),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),

            )
          : null,
      child: Row(
        children: [
          customIcon ?? Icon(icon, size: 24),
          if (isSelected)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    ),
    label: '',
  );
}
