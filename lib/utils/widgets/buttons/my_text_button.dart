import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color textColor;
  final String fontFamily;
  final double fontSize;

  MyTextButton(
      {required this.onPressed,
      required this.text,
      required this.textColor,
      required this.fontFamily,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontFamily: fontFamily,
            fontSize: fontSize,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
