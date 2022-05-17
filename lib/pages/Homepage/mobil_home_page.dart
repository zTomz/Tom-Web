import 'package:flutter/material.dart';
import 'package:website/widgets/app_bar.dart';
import 'package:website/widgets/texts.dart';

import '../../widgets/circle.dart';

class MobilHomePage extends StatefulWidget {
  const MobilHomePage({Key? key}) : super(key: key);

  @override
  State<MobilHomePage> createState() => _MobilHomePageState();
}

class _MobilHomePageState extends State<MobilHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Stack(
          children: [
            circle(
              diameter: MediaQuery.of(context).size.width * 0.25,
              color: Theme.of(context).highlightColor,
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.5,
                  bottom: MediaQuery.of(context).size.width * 0.2),
            ),
            circle(
              diameter: MediaQuery.of(context).size.width * 0.15,
              color: Theme.of(context).highlightColor,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.6,
                top: MediaQuery.of(context).size.width * 0.25,
              ),
            )
          ],
        ),
        HelloText(),
        const Spacer(),
        Stack(
          children: [
            circle(
              diameter: MediaQuery.of(context).size.width < 475 ? MediaQuery.of(context).size.width * 0.5 : MediaQuery.of(context).size.width * 0.2,
              color: Theme.of(context).highlightColor,
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
