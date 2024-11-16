import 'package:flutter/material.dart';
import 'package:weather/Screens/listen_screen.dart';
import 'package:weather/Screens/main_screen.dart';
import 'package:weather/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;


  void navigateBottomBar(int index) {
   setState(() {
     _selectedIndex = index;
   });
  }


  final List<Widget> _pages = [
    MainScreen(),
    ListenScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade500,
          elevation:0,
      ),
      body:_pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
