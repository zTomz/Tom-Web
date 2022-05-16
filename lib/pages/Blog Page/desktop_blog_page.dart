import 'package:flutter/material.dart';
import 'package:website/libary.dart';
import 'package:website/widgets/ListRow.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/blog_article.dart';
import 'package:website/widgets/under_title.dart';

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
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                underTitle(title: "Blog"),
                ListRow(
                  children: [
                    BlogArticle(
                        image: blogArticles[0][0], text: blogArticles[0][1]),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
