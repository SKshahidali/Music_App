import 'package:flutter/material.dart';
import 'package:music_zone/screens/homescreen.dart';
import 'package:music_zone/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/widgets/loginbuttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool  _passwordvisible = true;
  void showpassword() {
    setState(() {
      _passwordvisible = !_passwordvisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Image.asset("assets/images/logo.png",color:yellow,),
      
           // <-----> PhoneNumber TextField <-----> //     
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
              child: TextFormField(
                    style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.white),
                keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
              labelText: "Phone Number",
              labelStyle: TextStyle(color: Colors.yellow),
              prefixIcon: Icon(Icons.phone, color: Colors.yellow),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(12)
                  ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
            ),
      
           // <-----> Password TextField <-----> //
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
              child: TextFormField(
                    style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.white),
                keyboardType: TextInputType.text,
                obscureText:_passwordvisible,
                    decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.yellow),
              prefixIcon: Icon(Icons.lock, color: Colors.yellow),
              suffixIcon: GestureDetector(
                onTap: () {
                  showpassword();
                },
                child: Icon(Icons.remove_red_eye,color: Colors.white,)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(12)
                  ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
            ),
                const SizedBox(height: 30,),
            // <-----> Login Button <-----> //
      
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: yellowgradient,
                  borderRadius: BorderRadius.circular(15)
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeScreen()),
          );
                  },
                   child:Text("Sign In",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)),
              ),
                   const SizedBox(height: 20,),
                   Text("OR",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                   const SizedBox(height: 20,),

                   //<-----> Login Buttons <-----> //

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginButton(LoginIconPath:"assets/logos/google.png",onpressed: (){print("Login With Google");}),
                      LoginButton(LoginIconPath:"assets/logos/facebook.png",onpressed: (){print("Login With facebook");}),
                      LoginButton(LoginIconPath:"assets/logos/x.png",onpressed: (){print("Login With X(Twitter)");}),
                    ],
                   ),
                   const SizedBox(height: 200,),
                   
                   Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                     children: [
                       Text("Dont Have an account? ",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),
                       InkWell(
                        onTap: () {
                          print("Please Sign Up");
                        },
                        child: Text(" Sign Up",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blueAccent))),
                     ],
                   )

            ],
          )
          ],
        ),
      ),
    );
  }
}