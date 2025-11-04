import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym1/Account.dart';
import 'package:gym1/Gym.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.black]),
        ),
        child: Column(
          children: [
            SizedBox(height: 190),
            Icon(Icons.fitness_center, color: Colors.white, size: 50),
            Text(
              "FITNESS CLUB",
              style: GoogleFonts.akronim(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            Text(
              "Welcome Back",
              style: GoogleFonts.alumniSans(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 80,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Account ()),
                );},
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 80,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Gym ()),
                );},
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 120),
            Text(
              "Login With Social Media",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            Icon(Icons.facebook, size: 50),SizedBox(width: 20,),
            Icon(Icons.camera_alt, size: 50),SizedBox(width: 20,),
            Icon(Icons.g_mobiledata,size: 50,),]),
          ],
        ),
      ),
    );
  }
}
