import 'package:flutter/material.dart';
import 'package:website/libary.dart';

import '../widgets/app_bar.dart';
import '../widgets/side_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      endDrawer: SideBar(),
      body: Column(
        children: [
          MyAppBar(),

          // ? Change App Bar side button
          IconButton(
            onPressed: () => setState(() {
              appBarSide = !appBarSide;
            }),
            icon: const Icon(Icons.change_circle),
          ),
        ],
      ),
    );
  }
}
