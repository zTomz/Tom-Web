import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:website/widgets/logo.dart';
import 'package:website/libary.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  final appBarHeight = 75.0;
  final horizontalPadding = 40.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appBarHeight,
      decoration: BoxDecoration(
        
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.75),
            Theme.of(context).accentColor.withOpacity(0.75),
          ],
          
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 7.5,
            blurRadius: 12.5,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(
              MediaQuery.of(context).size.width / (1 / 3), appBarHeight - 10),
          bottomRight: Radius.elliptical(
              MediaQuery.of(context).size.width / (1 / 3), appBarHeight - 10),
        ),
      ),

      // ! Actions

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MediaQuery.of(context).size.width > 200
                ? const Logo(size: 75, logoColor: Color.fromARGB(197, 0, 0, 0))
                : const SizedBox.shrink(),
            Builder(
              builder: (context) => IconButton(
                icon: SvgPicture.asset("assets/ico/menu.svg"),
                onPressed: () {
                  appBarSide == false
                      ? Scaffold.of(context).openDrawer()
                      : Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
