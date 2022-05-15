// ignore_for_file: unnecessary_this


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/pages/home_page.dart';

class Logo extends StatelessWidget {
  final double size;
  final Color? color;
  final Color? logoColor;
  const Logo({Key? key, required this.size, this.color, this.logoColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
      child: Container(
        width: this.size * 0.9,
        height: this.size * 0.8,
        decoration: BoxDecoration(
          color: this.color == null ? Colors.transparent : this.color,
          borderRadius: BorderRadius.circular(this.size * 0.1),
          boxShadow: [
            this.color == null
                ? const BoxShadow(
                    color: Colors.transparent,
                  )
                : const BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2.5,
                    blurRadius: 10,
                  ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(this.size / 20),
            child: SvgPicture.asset(
              // Logo location
              "assets/ico/logo.svg",
              color: this.logoColor == null
                  ? Theme.of(context).accentColor
                  : this.logoColor,
            ),
          ),
        ),
      ),
    );
  }
}
