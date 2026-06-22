import 'package:flutter/material.dart';
import 'screens/start_screen.dart';

void main() {
  runApp(const MusicalQuizApp());
}

class MusicalQuizApp extends StatelessWidget {
  const MusicalQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
    );
  }
}