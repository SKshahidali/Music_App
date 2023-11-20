import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        actions: [
          IconButton(onPressed: () {}, icon:const Icon(Icons.edit,color: Colors.grey,))
        ],
      ),
      body: Column(
        children: [
          Center(child: Text("My profile",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
          const SizedBox(height: 20,),
          CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('assets/logos/profile image.webp'))
        ],
      ),
    );
  }
}