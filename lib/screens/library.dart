import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/widgets/libraryitems.dart';

import '../widgets/colors.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const LibraryItems(ItemName: "Liked Tracks"),
          const LibraryItems(ItemName: "PlayLists"),
          const LibraryItems(ItemName: "Albums"),
          const LibraryItems(ItemName: "Followings"),
          const LibraryItems(ItemName: "Stations"),
          const LibraryItems(ItemName: "Recently played"),
          const LibraryItems(ItemName: "Listening History"),
          Expanded(child: Container()),
          // <----> Container to import local music <-----> //
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.25,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Import Your Local Music Easily from your device",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                const SizedBox(height: 10,),
                // <----> Button to import music and search for local files <-----> //
                Container(
                  decoration: BoxDecoration(
                      gradient: yellowgradient,
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Text(
                        "Import Now",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
