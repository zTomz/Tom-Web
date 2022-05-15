import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:flutter_svg/svg.dart';

class SocialMediaBar extends StatelessWidget {
  final double space;
  final double size;
  SocialMediaBar({required this.space, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => html.window
              .open('https://www.instagram.com/_ztom_/', "Instagram"),
          icon: SvgPicture.asset(
            "assets/ico/instagram.svg",
            width: this.size,
          ),
        ),
        SizedBox(width: this.space),
        IconButton(
          onPressed: () =>
              html.window.open('https://www.tiktok.com/@0815tomy', "TikTok"),
          icon: SvgPicture.asset(
            "assets/ico/tik-tok.svg",
            width: this.size,
          ),
        ),
        SizedBox(width: this.space),
        IconButton(
          onPressed: () =>
              html.window.open('https://twitter.com/Tom72109321', "Twitter"),
          icon: SvgPicture.asset(
            "assets/ico/twitter.svg",
            width: this.size,
          ),
        ),
      ],
    );
  }
}
