import 'package:flutter/material.dart';
import 'package:gym1/Account.dart';
import 'package:gym1/Gym.dart';
import 'package:gym1/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),);
  }
}
