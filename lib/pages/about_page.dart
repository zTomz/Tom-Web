import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/side_bar.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      endDrawer: SideBar(),
      body: Column(
        children: [
          MyAppBar(),
        ],
      ),
    );
  }
}