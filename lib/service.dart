import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym1/forgot_password.dart';
import 'package:gym1/hello.dart';

Future<void> signup({
  required String name,
  required String email,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    User? user = userCredential.user;
    await FirebaseFirestore.instance.collection("users").doc(user!.uid).set({
      "name": name,
      "Email": email,
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("new account created successfully")));

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => Hello(username: name)),
    // );
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> signin({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    User? user = userCredential.user;
    DocumentSnapshot userdoc = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();
    String username = userdoc["name"] ?? "user";
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Login successfully")));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Hello(username: username)),
    );
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forgotpassword({
  required String email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Check your inbox")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
