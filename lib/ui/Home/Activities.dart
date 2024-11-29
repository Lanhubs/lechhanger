import 'package:flutter/material.dart';
import 'package:lexchanger/Components/Utils.dart';

class Activities extends StatelessWidget {
  final List items = [
    ListItem(
        icon: const Icon(Icons.offline_share),
        text: "Referral",
        onPressed: () {}),
    ListItem(
        icon: const Icon(Icons.archive_outlined),
        text: "Deposit",
        onPressed: () {}),
    ListItem(
        icon: const Icon(Icons.account_balance_wallet_outlined),
        text: "Widthdraw",
        onPressed: () {}),
    ListItem(
        icon: const Icon(Icons.precision_manufacturing_outlined),
        text: "Launchpool",
        onPressed: () {}),
    ListItem(
        icon: const Icon(Icons.auto_awesome_mosaic_outlined),
        text: "More",
        onPressed: () {}),
  ];

  Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items.map((dynamic elem) {
        final item = elem as ListItem;
        return GestureDetector(
          onTap: item.onPressed, // Trigger the onPressed function
          
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    child: item.icon,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.orange))),
                const SizedBox(height: 8), // Space between icon and text
                Text(item.text,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)),
              ],
            ),
          
        );
      }).toList(),
    );
  }
}
