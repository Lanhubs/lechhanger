import 'package:flutter/material.dart';
import 'package:lexchanger/ui/Home/Home_widget.dart';
import 'package:lexchanger/ui/Trade/Trade_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screenWidget = [
    HomeWidget(),
    TradeWidget(),
    TradeWidget(),
    TradeWidget(),
    TradeWidget(),
    // Add other screens here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenWidget.elementAt(_selectedIndex),
        // appBar: ,
        
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
            ],
          ),
          child: GNav(
              // backgroundColor: Colors.green,
              tabMargin: EdgeInsets.only(
                  left: _selectedIndex == 4 ? 10 : 0,
                  right: _selectedIndex == 0 ? 10 : 0),
              onTabChange: _onItemTapped,
              curve: Curves.easeOut, // tab animation curves
              duration: Duration(milliseconds: 900), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.grey[800], // unselected icon color
              activeColor: Colors.orange, // selected icon and text color
              iconSize: 20, // tab button icon size
              tabBorderRadius: 10,
              tabBackgroundColor: Colors.orange
                  .withOpacity(0.1), // selected tab background color
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10), // navigation bar padding
              tabs: [
                GButton(
                  icon: _selectedIndex == 0
                      ? Icons.home_filled
                      : Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: _selectedIndex == 1
                      ? Icons.bar_chart_outlined
                      : Icons.bar_chart_sharp,
                  text: 'Markets',
                ),
                const GButton(
                  icon: Icons.show_chart,
                  text: 'Trade',
                ),
                GButton(
                  icon: _selectedIndex == 3
                      ? Icons.bubble_chart_sharp
                      : Icons.bubble_chart_outlined,
                  text: 'Futures',
                ),
                GButton(
                  // icon,
                  leading: ImageIcon(
                    const AssetImage("assets/images/crypto-wallet.png"),
                    size: 20,
                    color:
                        _selectedIndex == 4 ? Colors.orange : Colors.grey[800],
                  ),
                  text: 'Assets',
                ),
              ]),
        ));
  }
}
