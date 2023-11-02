import 'package:flutter/material.dart';
import 'package:music_zone/widgets/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.LoginIconPath,
    required this.onpressed,
    });
final String LoginIconPath;
final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          shape:BoxShape.circle,
          border: Border.all(width: 2,color: yellow)
        ),
        child: IconButton(
          icon: Image.asset(LoginIconPath,fit: BoxFit.cover,color: yellow,),
        onPressed: onpressed,
        ),
      ),
    );
  }
}