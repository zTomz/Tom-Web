import 'package:flutter/material.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/blog_article.dart';

class DesktopBlogPage extends StatefulWidget {
  DesktopBlogPage({Key? key}) : super(key: key);

  @override
  State<DesktopBlogPage> createState() => _DesktopBlogPageState();
}

class _DesktopBlogPageState extends State<DesktopBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        BlogArticle(
          image: "assets/img/projectImg/WebsiteHomepage.png",
          text: "This is a blog article",
        ),
      ],
    );
  }
}
