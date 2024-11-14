import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
            onTap: () {},
          ),
          Expanded(
            child: Container(
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey.shade500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        onChanged: (value)=>{},
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          GestureDetector(
            child: const Icon(Icons.support_agent),
            onTap: () {},
          ),
          GestureDetector(
            child: const Icon(Icons.notifications_outlined),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
