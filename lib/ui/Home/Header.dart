import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lexchanger/ui/Home/Home_left_drawer.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right:10,top: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.withOpacity(0.5)),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(Icons.verified_user),
                )),
            onTap: () {
              showGeneralDialog(
              context: context,
              pageBuilder: (context, animation, secondaryAnimation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1, 0), // Slide in from the left
                    end: Offset(0, 0),
                  ).animate(CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeInOut,
                  )),
                  child: HomeLeftDrawer(),
                );
              },
              barrierDismissible: true,
               barrierLabel: "",
              barrierColor: Colors.black54, // Background color
            ); 

                            },
          ),
          Expanded(
            child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.orange.shade100),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.search,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (value) => {},
                          style: TextStyle(fontSize: 16, color: Colors.white38),
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          GestureDetector(
            child: Container(
                padding: EdgeInsets.all(5),
                child: const Icon(Icons.support_agent)),
            onTap: () {},
          ),
          GestureDetector(
            child: Container(
                padding: EdgeInsets.all(5),
                child: const Icon(Icons.notifications_outlined)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
