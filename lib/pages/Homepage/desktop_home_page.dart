import 'package:flutter/material.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/texts.dart';


class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        const Spacer(),
        HelloText(),
        const Spacer(),
        const Spacer(),
      ],
    );
  }
}
