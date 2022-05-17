import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilBody;
  final Widget laptopBody;
  final Widget desktopBody;
  final int mobilMaxWidth;
  final int laptopMaxWidth;

  // ignore: use_key_in_widget_constructors
  const ResponsiveLayout(
      {required this.mobilBody,
      required this.desktopBody,
      required this.laptopBody,
      required this.mobilMaxWidth,
      required this.laptopMaxWidth});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobilMaxWidth) {
          return mobilBody;
        } else if (constraints.maxWidth < laptopMaxWidth) {
          return laptopBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
