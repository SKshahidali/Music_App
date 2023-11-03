import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/components/songcard.dart';
import 'package:music_zone/models/song_model.dart';

class RecommendedSongs extends StatelessWidget {
  const RecommendedSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended Songs",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),),
              Text("View All",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.white),),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          child: ListView.builder(
            itemCount: songs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
              return SongCard(song: songs[index]);
            }
            ),
        ),
      ],
    );
  }
}