import 'package:flutter/material.dart';
import 'package:website/pages/About%20Page/desktop_about_page.dart';
import 'package:website/pages/About%20Page/laptop_about_page.dart';
import 'package:website/pages/About%20Page/mobile_about_page.dart';

import '../responsive/responsive_layout.dart';
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
      extendBodyBehindAppBar: true,
      body: ResponsiveLayout(
        mobilBody: MobileAboutPage(),
        laptopBody: LaptopAboutPage(),
        desktopBody: DesktopAboutPage(),
        mobilMaxWidth: 800,
        laptopMaxWidth: 1200,
      ),
    );
  }
}