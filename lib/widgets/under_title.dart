import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class underTitle extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final bool? centerTitle;
  final bool? spacer;
  final double? space;

  underTitle({
    required this.title,
    this.centerTitle,
    this.space,
    this.spacer,
    this.color,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: space != null ? space : 30),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Row(
            mainAxisAlignment: centerTitle != null
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  fontFamily: "Roboto",
                ),
              ),
            ],
          ),
        ),
        spacer == null ? SizedBox(height: space != null ? (space! / 2) : 15) : SizedBox.shrink(),
        spacer == null ? Container(
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.2),
          height: 10,
          decoration: BoxDecoration(
            color: this.color != null ? color : Theme.of(context).accentColor,
            borderRadius:
                BorderRadius.circular(5),
          ),
        ) : SizedBox.shrink(),
        SizedBox(height: space != null ? space : 30),
      ],
    );
  }
}
