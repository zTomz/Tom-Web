import 'package:flutter/material.dart';

class AboutSideBarWidget extends StatelessWidget {
  final String title;
  final String text;
  // ignore: use_key_in_widget_constructors
  const AboutSideBarWidget({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withBlue(230),
          borderRadius: BorderRadius.circular(25)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(title),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Text(text),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
