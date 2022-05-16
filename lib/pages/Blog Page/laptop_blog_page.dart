import 'package:flutter/material.dart';
import 'package:website/libary.dart';
import 'package:website/widgets/under_title.dart';

import '../../widgets/ListRow.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/blog_article.dart';

class LaptopBlogPage extends StatefulWidget {
  LaptopBlogPage({Key? key}) : super(key: key);

  @override
  State<LaptopBlogPage> createState() => _LaptopBlogPageState();
}

class _LaptopBlogPageState extends State<LaptopBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                ListRow(
                  
                  children: [
                    underTitle(title: "Blog"),  
                    BlogArticle(
                      image: blogArticles[0][0],
                      text: blogArticles[0][1],
                    ),
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
