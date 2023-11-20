import 'package:flutter/material.dart';
import 'package:music_zone/components/artist.dart';
import 'package:music_zone/components/playlists.dart';
import 'package:music_zone/components/recommendations.dart';
import 'package:music_zone/models/playlist_model.dart';
import 'package:music_zone/screens/library.dart';
import 'package:music_zone/screens/profile.dart';
import 'package:music_zone/screens/search.dart';
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
    return Scaffold(
      appBar: AppBar(  
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.window_rounded,color: yellow,size: 30,),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child: CircleAvatar(
              backgroundImage:AssetImage('assets/logos/profile image.webp'),
              backgroundColor: Colors.transparent,
              ),
          ),
        ],
      ),
      backgroundColor: grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: const  [
              Trending(),
              SizedBox(height: 40,),
               SearchBar(),
               SizedBox(height: 40,),
               RecommendedSongs(),
               SizedBox(height: 40,),
               PlayLists(),
               
            ],
          ),
        ),
      ),
    );
  }
}