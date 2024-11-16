import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        backgroundColor: Colors.lightBlue.shade500,
          color: Colors.blueAccent,
          activeColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          onTabChange: (val) => onTabChange!(val),
          tabs: const [
       GButton(
           icon: Icons.clear_all,
           text: 'Weather' ,),
       GButton(icon: Icons.home,
           text:'Home'),
      ]),
    );
  }
}
