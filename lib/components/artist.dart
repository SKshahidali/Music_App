import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/components/trendingartists.dart';
import 'package:music_zone/models/trending_model.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Trending Artists",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),),
            Text("View All",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.white),),
          ],
        ),

        const SizedBox(height: 20,),

        //<-----> This is where all artists are called <----->//

        SizedBox(
          height: MediaQuery.of(context).size.width * 0.25,
          child: ListView.builder(
            itemCount: artists.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
            return TrendingArtistsCard(artist: artists[index]);
          })),
        )
      ],
    );
  }
}