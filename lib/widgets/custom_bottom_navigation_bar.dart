import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30,),
          label: 'Home'
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User'
        ),
      ]
    );
  }
}