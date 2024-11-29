import 'package:flutter/material.dart';

class WalletBalance extends StatefulWidget {
  final double assets = 0.00;
  const WalletBalance({super.key, assets});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text("Total Assets", style: TextStyle(fontSize: 20),)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("${widget.assets.toString()}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
                SizedBox(height: 4,),
                Text("~\$${widget.assets.toString()}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.orange.shade500,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  "Add fund",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
