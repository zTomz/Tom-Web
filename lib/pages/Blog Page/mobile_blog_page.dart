import 'package:flutter/material.dart';
import 'package:website/widgets/blog_article.dart';

import '../../widgets/app_bar.dart';

class MobileBlogPage extends StatefulWidget {
  MobileBlogPage({Key? key}) : super(key: key);

  @override
  State<MobileBlogPage> createState() => _MobileBlogPageState();
}

class _MobileBlogPageState extends State<MobileBlogPage> {
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
