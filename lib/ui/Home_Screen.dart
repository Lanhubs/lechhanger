import 'package:flutter/material.dart';
import 'package:lexchanger/ui/Home/Home_widget.dart';
import 'package:lexchanger/ui/Trade/Trade_widget.dart';
import "../Components/UiKits/Nav_btn.dart";

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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey[800],
            backgroundColor: Colors.white,
            items: const  [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),

                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined),
                label: 'Markets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.show_chart),
                label: 'Trade',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart_outlined),
                label: 'Futures',
              ),
            
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/crypto-wallet.png")),
                label: 'Assets',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
