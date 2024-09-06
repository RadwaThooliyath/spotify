import 'package:flutter/material.dart';
import 'package:spotify/screens/home.dart';
import 'package:spotify/screens/navig.dart';
import 'package:spotify/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Splash(),debugShowCheckedModeBanner: false,
    );
  }
}
