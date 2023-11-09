import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryItems extends StatelessWidget {
  const LibraryItems({super.key,required this.ItemName});
final String ItemName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20.0,left: 20,right: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(ItemName,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}