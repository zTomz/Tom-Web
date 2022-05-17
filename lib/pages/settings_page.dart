import 'package:flutter/material.dart';
import 'package:website/pages/Authentication/signup_page.dart';
import 'package:website/widgets/textButton.dart';

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
          Expanded(
            child: Scrollbar(
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      MyTextButton(
                        text: "Authentication",
                        function: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
