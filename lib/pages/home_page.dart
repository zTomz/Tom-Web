import 'package:flutter/material.dart';
import 'package:website/pages/Homepage/desktop_home_page.dart';
import 'package:website/pages/Homepage/laptop_home_page.dart';
import 'package:website/pages/Homepage/mobil_home_page.dart';
import 'package:website/responsive/responsive_layout.dart';

import '../widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: SideBar(),
        endDrawer: SideBar(),
        body: ResponsiveLayout(
          mobilBody: MobilHomePage(),
          laptopBody: LaptopHomePage(),
          desktopBody: DesktopHomePage(),
          mobilMaxWidth: 600,
          laptopMaxWidth: 1200,
        ));
  }
}
