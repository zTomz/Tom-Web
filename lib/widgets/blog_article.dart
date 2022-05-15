import 'package:flutter/material.dart';

class BlogArticle extends StatefulWidget {
  final String image;
  final String text;
  BlogArticle({required this.image, required this.text});

  @override
  State<BlogArticle> createState() => _BlogArticleState();
}

class _BlogArticleState extends State<BlogArticle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 350,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).accentColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor,
              spreadRadius: 2.5,
              blurRadius: 15,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Column(
            children: [
              Container(
                child: Image.asset(this.widget.image),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  this.widget.text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
