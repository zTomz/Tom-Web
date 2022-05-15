import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';

class LaptopBlogPage extends StatefulWidget {
  LaptopBlogPage({Key? key}) : super(key: key);

  @override
  State<LaptopBlogPage> createState() => _LaptopBlogPageState();
}

class _LaptopBlogPageState extends State<LaptopBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MyAppBar(),],
    );
  }
}