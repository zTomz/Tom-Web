import 'package:flutter/material.dart';
import 'package:website/widgets/about_side_bar.dart';
import 'package:website/widgets/social_media_bar.dart';

import '../../libary.dart';
import '../../widgets/app_bar.dart';

class LaptopAboutPage extends StatefulWidget {
  LaptopAboutPage({Key? key}) : super(key: key);

  @override
  State<LaptopAboutPage> createState() => _LaptopAboutPageState();
}

class _LaptopAboutPageState extends State<LaptopAboutPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          aboutText,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    AboutSideBar(),
                  ],
                ),
                SizedBox(height: 50),
                SocialMediaBar(space: 20, size: 300),
                SizedBox(height: 100),
              ],
            ),
          ),
        )
      ],
    );
  }
}
