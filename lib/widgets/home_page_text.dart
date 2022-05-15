import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePageAnimatedText extends StatelessWidget {
  const HomePageAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          Text(
            'Hello, I am',
            style: TextStyle(
              fontSize: 43.0,
              color: Theme.of(context).accentColor,
            ),
          ),
          const SizedBox(width: 15.0, height: 100.0),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Horizon',
              fontWeight: FontWeight.w500,
              color: Theme.of(context).accentColor,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                RotateAnimatedText('Tom.'),
                RotateAnimatedText('Athlete.'),
                RotateAnimatedText('Programmer.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
