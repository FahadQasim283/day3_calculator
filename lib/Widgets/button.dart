import 'package:day3_calculator/Widgets/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget 
{
  final String title;
  final VoidCallback onClick;
  final Color? colors;


  const MyButton(
      {super.key,
      this.title = 'Button',
      required this.onClick,
      this.colors = customWhite});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: InkWell(
          onTap: onClick,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors,
            ),
            height: 50,
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
