import 'package:flutter/material.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/circle.dart';
import 'package:website/widgets/texts.dart';

class LaptopHomePage extends StatefulWidget {
  const LaptopHomePage({Key? key}) : super(key: key);

  @override
  State<LaptopHomePage> createState() => _LaptopHomePageState();
}

class _LaptopHomePageState extends State<LaptopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        HelloText(),
        circle(
          diameter: MediaQuery.of(context).size.width * 0.1,
          color: Theme.of(context).highlightColor,
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.05, left: MediaQuery.of(context).size.width * 0.6),
        )
      ],
    );
  }
}
