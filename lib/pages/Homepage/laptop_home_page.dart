import 'package:flutter/material.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/circle.dart';
import 'package:website/widgets/texts.dart';

import '../../widgets/side_bar.dart';

class LaptopHomePage extends StatefulWidget {
  LaptopHomePage({Key? key}) : super(key: key);

  @override
  State<LaptopHomePage> createState() => _LaptopHomePageState();
}

class _LaptopHomePageState extends State<LaptopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Spacer(),
        HelloText(),
        circle(
          diameter: MediaQuery.of(context).size.width * 0.25,
          color: Theme.of(context).highlightColor,
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.05, left: MediaQuery.of(context).size.width * 0.6),
        )
      ],
    );
  }
}
