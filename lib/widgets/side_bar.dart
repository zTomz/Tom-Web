import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/pages/about_page.dart';
import 'package:website/pages/blog_page.dart';
import 'package:website/pages/contact_page.dart';
import 'package:website/pages/home_page.dart';
import 'package:website/pages/programming_page.dart';
import 'package:website/pages/settings_page.dart';

class SideBar extends StatefulWidget {
  SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Drawer(
          child: Material(
            color: Theme.of(context).accentColor,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),

                // ! Menu items for side bar

                menuItem(
                  text: "Home",
                  icon: 'assets/ico/home.svg',
                  function: () => selectedItem(context, 0),
                ),
                menuItem(
                  text: "Programming",
                  icon: 'assets/ico/browser.svg',
                  function: () => selectedItem(context, 1),
                ),
                menuItem(
                  text: "Blog",
                  icon: 'assets/ico/book.svg',
                  function: () => selectedItem(context, 2),
                ),

                // ? Divider

                ListDivider(),

                menuItem(
                  text: "About",
                  icon: 'assets/ico/info.svg',
                  function: () => selectedItem(context, 3),
                ),
                menuItem(
                  text: "Contact",
                  icon: 'assets/ico/message.svg',
                  function: () => selectedItem(context, 4),
                ),

                ListDivider(),

                menuItem(
                  text: "Settings",
                  icon: 'assets/ico/settings.svg',
                  function: () => selectedItem(context, 5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuItem({
    required String text,
    required String icon,
    VoidCallback? function,
  }) {
    final color = Colors.white;
    final hoverColor = Color.fromARGB(255, 119, 126, 253);

    final horizontalPadding = 18.0;
    final verticalPadding = 2.0;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: ListTile(
        leading: SvgPicture.asset(
          icon,
          color: color,
        ),
        title: Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        ),
        hoverColor: hoverColor,
        onTap: function,
      ),
    );
  }

  Widget ListDivider() {
    const dividerIndent = 20.0;
    const spaceBetween = 15.0;

    const height = 3.0;

    const color = Colors.white;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: dividerIndent, vertical: spaceBetween),
          child: Container(
            height: height,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ],
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProgrammingPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlogPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AboutPage(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ContactPage(),
          ),
        );
        break;
      case 5:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SettingsPage(),
          ),
        );
        break;
    }
  }
}
