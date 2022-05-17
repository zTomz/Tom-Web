import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final function;
  MyTextButton({required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Theme.of(context).accentColor),
      onPressed: this.function,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(
          this.text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontSize: 16,
            fontFamily: "Roboto",
          ),
        ),
      ),
    );
  }
}
