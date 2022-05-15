import 'package:flutter/material.dart';

class AboutSideBarWidget extends StatelessWidget {
  final String title;
  final String text;
  AboutSideBarWidget({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
          color: Theme.of(context).accentColor.withBlue(230),
          borderRadius: BorderRadius.circular(25)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(this.title),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(this.text),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
