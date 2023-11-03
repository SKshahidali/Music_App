import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search,color:Colors.grey,size: 20,),
        hintText: "Search for songs/artists",
        hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none
          )
      ),
    );
  }
}