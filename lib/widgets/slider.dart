import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/screens/homescreen.dart';
import 'package:music_zone/screens/login.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SliderButton extends StatefulWidget {
  const SliderButton({super.key});

  @override
  State<SliderButton> createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SlideAction(
        borderRadius: 16,
        elevation: 0,
        innerColor: Color(0xffE3E726),
        outerColor: Colors.black.withOpacity(0.4),
        sliderButtonIcon: Icon(Icons.double_arrow),
        text: "START LISTENING",
        textStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xffE3E726)),
        onSubmit: () {
          //Navigate to Login/Signup page //
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
    );
  }
}
