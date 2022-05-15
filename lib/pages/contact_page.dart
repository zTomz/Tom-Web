import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/side_bar.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
