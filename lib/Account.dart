import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym1/Gym.dart';
import 'package:gym1/service.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final gymKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: gymKey,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.black]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, right: 190),
                child: Text(
                  "Create Your\nAccount",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
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
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 260),
                          child: Text(
                            "Full Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "FullName cannot be empty";
                              }
                              return null;
                            },
                            controller: fullName,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.account_circle_sharp),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(right: 310),
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "email cannot be empty";
                              }
                              if (!value.contains("@")) {
                                return "A valid email required";
                              }
                              return null;
                            },
                            controller: email,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.account_circle_sharp),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(right: 280),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextFormField(controller: password,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "password cannot be empty";
                              }
                              if (value.trim().length < 6) {
                                return "Password must be 6 character";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off_outlined),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            "Confirm Password",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "password cannot be empty";
                              }
                              if (value != password.text) {
                                return "Password is not matching";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off_outlined),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),
                        GestureDetector(
                          onTap: () {
                            if (gymKey.currentState!.validate()) {
                              signup(
                                name: fullName.text,
                                email: email.text,
                                password: password.text,
                                confirmpassword: confirmPassword.text,
                                context: context,
                              );
                            }
                          },
                          child: Container(
                            height: 60,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: LinearGradient(
                                colors: [Colors.red, Colors.black],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Text("Don't have account?"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 270),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gym()),
                              );
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
