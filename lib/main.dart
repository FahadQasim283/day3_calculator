import 'package:day3_calculator/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const  MaterialApp(home: StartingScreen());
  }
}