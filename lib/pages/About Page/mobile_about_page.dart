import 'package:flutter/material.dart';

import '../../libary.dart';
import '../../widgets/about_side_bar_widget.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/social_media_bar.dart';

class MobileAboutPage extends StatefulWidget {
  const MobileAboutPage({Key? key}) : super(key: key);

  @override
  State<MobileAboutPage> createState() => _MobileAboutPageState();
}

class _MobileAboutPageState extends State<MobileAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyAppBar(),
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.175,
                        ),
                        child: Text(
                          aboutText,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.secondary,
                            spreadRadius: 2,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            const AboutSideBarWidget(title: "Name", text: "Tom"),
                            const SizedBox(height: 40),
                            AboutSideBarWidget(title: "Age", text: age.toString()),
                            const SizedBox(height: 40),
                            AboutSideBarWidget(title: "Hobbies", text: hobbies),
                            const SizedBox(height: 40),
                            const AboutSideBarWidget(title: "Country", text: "Germany"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                SocialMediaBar(space: 20, size: 300),
                const SizedBox(height: 100),
              ],
            ),
          ),
        )
      ],
    );
  }
}
