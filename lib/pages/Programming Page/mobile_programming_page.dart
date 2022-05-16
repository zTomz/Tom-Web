import 'package:flutter/material.dart';
import 'package:website/libary.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/project_card.dart';
import 'package:website/widgets/skill_card.dart';
import 'package:website/widgets/under_title.dart';

class MobileProgrammingPage extends StatefulWidget {
  MobileProgrammingPage({Key? key}) : super(key: key);

  @override
  State<MobileProgrammingPage> createState() => _MobileProgrammingPageState();
}

class _MobileProgrammingPageState extends State<MobileProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Expanded(
          child: Scrollbar(
            child: ListView(
              children: [
                underTitle(title: "Skills"),
                Column(
                  children: [
                    SkillCard(title: skills[0][0], procent: skills[0][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[1][0], procent: skills[1][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[2][0], procent: skills[2][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[3][0], procent: skills[3][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[4][0], procent: skills[4][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[5][0], procent: skills[5][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[6][0], procent: skills[6][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[7][0], procent: skills[7][1]),
                    SizedBox(height: 20),
                    SkillCard(title: skills[8][0], procent: skills[8][1]),
                    underTitle(title: "Projects"),
                    ProjectCard(
                      image: projects[0][0],
                      text: projects[0][1],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
