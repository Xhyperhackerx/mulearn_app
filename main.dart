import 'package:flutter/material.dart';
import 'package:mulearn/login.dart';
import 'package:mulearn/profile.dart';

void main() {
  runApp(const MyApp());
}

class CampusPilotApp extends StatelessWidget {
  const CampusPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Pilot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const LoginPage(),
    );
  }
}
