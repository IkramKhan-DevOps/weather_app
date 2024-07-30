import 'package:flutter/material.dart';
import 'package:weather/pages/screens/forecast_screen.dart';
import 'package:weather/pages/screens/home_screen.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:weather/pages/screens/search_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  //NAVIGATION BAR---------------------------------------------------------
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ForecastScreen(),
    const SearchScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationCurve: Curves.elasticInOut,
        animationDuration: Durations.extralong1,
        iconPadding: 10,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 45, 23, 83),
        buttonBackgroundColor: const Color.fromARGB(255, 116, 56, 219),
        //  elevation: 0, // Remove shadow
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined, color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper, color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.info_outline, color: Colors.white),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}