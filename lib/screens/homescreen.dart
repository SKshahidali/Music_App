import 'package:flutter/material.dart';
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
    return Scaffold(backgroundColor: grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children:  [
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