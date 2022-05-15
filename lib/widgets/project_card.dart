import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String image;
  final String text;
  ProjectCard({required this.image, required this.text});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).accentColor,
              spreadRadius: 2.5,
              blurRadius: 15)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                this.widget.image,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                this.widget.text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
