import 'package:flutter/material.dart';
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  var _selectedindex = 0;

    void navigatebottombar(int index) {
      setState(() {
        _selectedindex = index;
      });
    }
    
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      currentIndex:_selectedindex,
      onTap: navigatebottombar,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_music),label:"Library"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"My Profile"),
        
      ],

    );
  }
}