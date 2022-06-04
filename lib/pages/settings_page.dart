import 'package:flutter/material.dart';
import 'package:website/pages/Authentication/signup_page.dart';
import 'package:website/widgets/textButton.dart';

import '../widgets/app_bar.dart';
import '../widgets/message.dart';
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
      body: Builder(
        builder: (context) {
          return Column(
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
                          SizedBox(height: 50),
                          MyTextButton(
                            text: "Show snackbar",
                            function: () => Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: BottomMessage(
                                  title: "Hey!",
                                  text: "This is a message.",
                                  firstColor: Color.fromARGB(255, 247, 98, 88),
                                  secondColor: Color.fromARGB(255, 243, 82, 70),
                                ),
                                width: 400,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
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
          );
        },
      ),
    );
  }
}
