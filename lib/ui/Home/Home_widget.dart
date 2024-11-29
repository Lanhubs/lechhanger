import 'package:flutter/material.dart';
import 'package:lexchanger/ui/Home/Activities.dart';
import 'package:lexchanger/ui/Home/Header.dart';
import 'package:lexchanger/ui/Home/Trends.dart';
import 'package:lexchanger/ui/Home/Wallet_balance.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Header(),
          Container(
            child: WalletBalance(),
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          ),
          Container(
              child: Activities(),
              margin: const EdgeInsets.symmetric(horizontal: 20)),
          Trends(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20,),
            child: Text(
              "Trendings",
              style: TextStyle(
                fontSize: 18,
                  color: Colors.grey.shade800, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
