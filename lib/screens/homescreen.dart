import 'package:flutter/material.dart';
import 'package:music_zone/components/recommendations.dart';
import 'package:music_zone/widgets/colors.dart';
import 'package:music_zone/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: grey,
      appBar:AppBar(  
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: const [
               SearchBar(),
               SizedBox(height: 40,),
               RecommendedSongs()
            ],
          ),
        ),
      ),
    );
  }
}