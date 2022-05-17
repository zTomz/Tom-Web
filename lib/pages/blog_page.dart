import 'package:flutter/material.dart';
import 'package:website/pages/Blog%20Page/desktop_blog_page.dart';
import 'package:website/pages/Blog%20Page/laptop_blog_page.dart';
import 'package:website/pages/Blog%20Page/mobile_blog_page.dart';

import '../responsive/responsive_layout.dart';
import '../widgets/side_bar.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      endDrawer: SideBar(),
      extendBodyBehindAppBar: true,
      body: const ResponsiveLayout(
        mobilBody: MobileBlogPage(),
        laptopBody: LaptopBlogPage(),
        desktopBody: DesktopBlogPage(),
        mobilMaxWidth: 800,
        laptopMaxWidth: 1200,
      ),
    );
  }
}
