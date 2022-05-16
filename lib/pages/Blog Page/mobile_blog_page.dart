import 'package:flutter/material.dart';
import 'package:website/libary.dart';
import 'package:website/widgets/blog_article.dart';
import 'package:website/widgets/under_title.dart';

import '../../widgets/ListRow.dart';
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
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                underTitle(title: "Blog"),
                Column(
                  children: [
                    BlogArticle(
                      image: blogArticles[0][0],
                      text: blogArticles[0][1],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
