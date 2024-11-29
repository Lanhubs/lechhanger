import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
class Trends extends StatelessWidget {
  const Trends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      height: 250, // Fixed height for the parent container
      child: GridView.count(
        crossAxisCount: 2, // Two columns in the grid
        crossAxisSpacing: 10, // Horizontal space between columns
        mainAxisSpacing: 10, // Vertical space between rows
        childAspectRatio: 1 / 1.05, // Adjusts the width/height ratio of items
        physics:
            const NeverScrollableScrollPhysics(), // Prevent scrolling since height is fixed
        children: [
          // Grid item 1
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.orangeAccent),
                color: Colors.orange.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    child: Text(
                      "Claim 200 USDT worth of DOGECOIN",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.orange.shade500),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Image.asset(
                        "assets/images/dogecoin.png",
                        width: 90,
                        height: 90,
                      )),
                  Positioned(
                    child: GestureDetector(
                        child: Text("Claim now >>"), onTap: () {}),
                    top: 150,
                  )
                ],
              )),
          // Grid item 2
          Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 110,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    border: Border.all(width: 1, color: Colors.orangeAccent),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Stack(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    alignment: Alignment.topLeft,
                    children: [
                      Text(
                        "LaunchPool",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.orange.shade500),
                      ),
                      // Image.asset("assets/images/NOT.png"),
                      Positioned(
                          right: 20,
                          top: 15,
                          child: Image.asset(
                            "assets/images/picoin.png",
                            width: 60,
                            height: 60,
                          )),
                      Positioned(
                        top: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              LineIcons.clock,
                              size: 30,
                              color: Colors.orange.shade500,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "20:19:10",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 20,
                                      fontFamily: "Play",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange.shade500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 1, color: Colors.orangeAccent),
                      color: Colors.orange.shade50,
                    ),
                    width: double.infinity,
                    child: Stack(children: [
                       Text(
                        "Latest",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
                      ),
                        // LineChart()
                        Positioned(child: Row(
                          children: [
                            Text("\$BTC"),
                            Text("70%"),
                            Icon(Icons.arrow_upward)
                          ],
                        ))
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
