import 'package:flutter/material.dart';

import '../libary.dart';
import 'about_side_bar_widget.dart';

class AboutSideBar extends StatelessWidget {
  const AboutSideBar({Key? key}) : super(key: key);

  final space = 40.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            spreadRadius: 2,
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const AboutSideBarWidget(title: "Name", text: "Tom"),
            SizedBox(height: space),
            AboutSideBarWidget(title: "Age", text: age.toString()),
            SizedBox(height: space),
            AboutSideBarWidget(
                title: "Hobbies",
                text:
                    hobbies),
            SizedBox(height: space),
            const AboutSideBarWidget(title: "Country", text: "Germany"),
          ],
        ),
      ),
    );
  }
}
