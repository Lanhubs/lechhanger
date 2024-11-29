import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeLeftDrawer extends StatelessWidget {
  const HomeLeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(LineIcons.angleLeft),
          onTap: () => Navigator.of(context).pop(),
        ),
        actions: [],
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          width: MediaQuery.of(context).size.width, // Full width for drawer
          child: Column(
            children: [],
          )),
    );
  }
}
