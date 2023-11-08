import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/components/searchcard.dart';
import 'package:music_zone/models/recents_model.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recent searches",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.white),),
              Text("Clear",style:GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize: 14,color: Colors.white),),
            ],
          ),
        ),
        const SizedBox(height: 5,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: ListView.builder(
            itemCount: recents.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index) {
              return SearchCard(recents: recents[index]);
            }
            ),
        ),
      ],
    );
  }
}