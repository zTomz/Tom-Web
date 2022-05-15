import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelloText extends StatefulWidget {
  HelloText({Key? key}) : super(key: key);

  @override
  State<HelloText> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.125,
                right: MediaQuery.of(context).size.width * 0.60,
              ),
              child: circle(
                  diameter: MediaQuery.of(context).size.width * 0.2,
                  color: Theme.of(context).highlightColor)),
          Text.rich(
            TextSpan(
              text: "Hi,\nI'm",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                height: 0.7,
                fontFamily: "Pacifico",
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "T",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.15,
                    fontFamily: "Pacifico",
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                TextSpan(
                  text: "om,\nflutter developer!",
                  style: TextStyle(height: 1.1, fontFamily: "Pacifico"),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * 0.20,
              left: MediaQuery.of(context).size.width * 0.40,
            ),
            child: SvgPicture.asset(
              "assets/ico/cleanLogo.svg",
              color: Theme.of(context).accentColor,
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ),
        ],
      ),
    );
  }

  Widget circle({required double diameter, required Color color}) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(diameter / 2),
      ),
    );
  }
}
