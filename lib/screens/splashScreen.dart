import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:day3_calculator/screens/calculator.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

//flutter build apk --release
// flutter build apk --split-per-abi
// flutter build apk --build-name=1.0 --build-number=1

class _StartingScreenState extends State<StartingScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyCalculator(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TextLiquidFill(
          loadDuration: const Duration(seconds: 5),
          text: 'CALCULATOR',
          waveColor: const Color.fromARGB(255, 241, 106, 3),
          boxBackgroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          loadUntil: 1,
        ),
      ),
    );
  }
}
