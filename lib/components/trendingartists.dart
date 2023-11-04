import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/trending_model.dart';

class TrendingArtistsCard extends StatelessWidget {
  const TrendingArtistsCard({Key? key, required this.artist}) : super(key: key);
  final Artists artist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Container(
            width: 60, 
            height: 60, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                artist.ArtistImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            artist.ArtistName,
            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white),
          )
        ],
      ),
    );
  }
}
