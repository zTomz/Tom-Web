import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/side_bar.dart';

class BlogPage extends StatefulWidget {
  BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      endDrawer: SideBar(),
      body: Column(
        children: [
          MyAppBar(
            
          ),
        ],
      ),
    );
  }
}
