import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomMessage extends StatelessWidget {
  final String title;
  final String text;
  final Color firstColor;
  final Color secondColor;
  const BottomMessage(
      {required this.title, required this.text, required this.firstColor, required this.secondColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          decoration: BoxDecoration(
            color: this.firstColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/ico/snackBarBg.svg",
                fit: BoxFit.fitWidth,
                color: this.secondColor,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Text(
                      this.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Text(
                      this.text,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
