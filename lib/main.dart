import 'package:fitnest/screens/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnestX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const SafeArea(
        child: WelcomeScreen(),
      ),
    );
  }
}
