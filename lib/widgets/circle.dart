import 'package:flutter/material.dart';

class circle extends StatelessWidget {
  final double diameter;
  final Color color;
  final EdgeInsets? margin;

  circle({required this.diameter, required this.color, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(diameter / 2),
      ),
    );
  }
}
