import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/widgets/colors.dart';
import 'package:music_zone/widgets/slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: grey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Lottie.network('https://lottie.host/d16eb7e6-166d-4bb1-8dd1-da5ad29211b8/uSBKjACFld.json'),
            Text("MUSIC ZONE",style:GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white) ,),
            Text("DIVE INTO THE WORLD OF IMMENSE TUNES",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white) ,),
            Expanded(child: Container()),
            SliderButton(),
            
          ],
        ),
      ),
    );
  }
}