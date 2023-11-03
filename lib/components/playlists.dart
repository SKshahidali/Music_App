import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/components/playlistcard.dart';

import '../models/playlist_model.dart';

class PlayLists extends StatelessWidget {
  const PlayLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Trending Playlists",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),),
            Text("View All",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.white),),
          ],
        ),

        const SizedBox(height: 20,),

        //<-----> This is where all playlists are called <----->//

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
            itemCount: playlists.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
            return PlayListCard(playlist: playlists[index]);
          })),
        )
      ],
    );
  }
}