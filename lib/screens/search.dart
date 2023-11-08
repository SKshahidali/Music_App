import 'package:flutter/material.dart';
import 'package:music_zone/components/searchhistory.dart';
import 'package:music_zone/widgets/colors.dart';
import 'package:music_zone/widgets/searchbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.asset(
            'assets/images/logo.png',
            height: 80,
            color: yellow,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children:const  [
                SearchBar(),
                SizedBox(height: 40,),
                SearchHistory()
              ],
            ),
          ),
        ));
  }
}
