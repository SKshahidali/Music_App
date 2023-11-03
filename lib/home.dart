import 'package:flutter/material.dart';
import 'package:music_zone/screens/homescreen.dart';
import 'package:music_zone/screens/library.dart';
import 'package:music_zone/screens/profile.dart';
import 'package:music_zone/screens/search.dart';
import 'package:music_zone/widgets/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   var _selectedindex = 0;
    void navigatebottombar(int index) {
      setState(() {
        _selectedindex = index;
      });
    }

    final List<Widget> _pages = const [
      HomeScreen(),
      SearchPage(),
      LibraryPage(),
      ProfilePage()
    ];

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      //<----> App Bar <----> //
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: grey,
      type:BottomNavigationBarType.fixed,
      currentIndex:_selectedindex,
      onTap: navigatebottombar,
      selectedItemColor: yellow,
      unselectedItemColor:Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_music),label:"Library"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"My Profile"),
        
      ],
      
        ),
      //<----> App Bar <----> //
      appBar: AppBar(  
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.window_rounded,color: yellow,size: 30,),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child: CircleAvatar(
              backgroundImage:NetworkImage('https://img.freepik.com/premium-photo/cartoon-character-with-glasses-red-shirt-that-says-i-m-boy_771335-49728.jpg?w=740'),
              backgroundColor: Colors.transparent,
              ),
          ),
        ],
      ),
      body: _pages[_selectedindex],
    );
  }
}