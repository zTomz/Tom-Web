import 'package:flutter/material.dart';
import 'package:website/libary.dart';
import 'package:website/widgets/about_side_bar.dart';
import 'package:website/widgets/app_bar.dart';

import 'package:website/widgets/social_media_bar.dart';
import 'package:website/widgets/under_title.dart';

class DesktopAboutPage extends StatefulWidget {
  const DesktopAboutPage({Key? key}) : super(key: key);

  @override
  State<DesktopAboutPage> createState() => _DesktopAboutPageState();
}

class _DesktopAboutPageState extends State<DesktopAboutPage> {
  final space = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          aboutText,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    const AboutSideBar()
                  ],
                ),
                const SizedBox(height: 50),
                SocialMediaBar(space: 40, size: 250),
                const SizedBox(height: 100),
              ],
            ),
          ),
        )
      ],
    );
  }
}
