import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String title;
  final double procent;
  SkillCard({required this.title, required this.procent});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).accentColor,
              spreadRadius: 2.5,
              blurRadius: 15)
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  this.widget.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                  ),
                ),
                Text(
                  this.widget.procent.toString() + "%",
                  style: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              // width = 270
              height: 10,
              width: 270,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 44, 44, 44),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  right: 270 - (270 * (this.widget.procent / 100)),
                ), 
                color: Theme.of(context).highlightColor,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
