import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gym extends StatelessWidget {
  const Gym({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 100),
              child: Text(
                "HELLO\nSign in!",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 720,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 330),
                      child: Text(
                        "Gmail",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.account_circle_outlined),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.black],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 200),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text("don't have account?"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
