import 'package:flutter/material.dart';
import 'package:website/pages/Programming%20Page/desktop_programming_page.dart';
import 'package:website/pages/Programming%20Page/laptop_programming_page.dart';
import 'package:website/pages/Programming%20Page/mobile_programming_page.dart';
import 'package:website/responsive/responsive_layout.dart';

import '../widgets/side_bar.dart';

class ProgrammingPage extends StatefulWidget {
  const ProgrammingPage({Key? key}) : super(key: key);

  @override
  State<ProgrammingPage> createState() => _ProgrammingPageState();
}

class _ProgrammingPageState extends State<ProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      endDrawer: SideBar(),
      extendBodyBehindAppBar: true,
      body: const ResponsiveLayout(
        mobilBody: MobileProgrammingPage(),
        laptopBody: LaptopProgrammingPage(),
        desktopBody: DesktopProgrammingPage(),
        mobilMaxWidth: 800,
        laptopMaxWidth: 1200,
      ),
    );
  }
}
