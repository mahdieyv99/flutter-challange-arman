import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? dividerHeight;

  const CustomDivider(
      {Key? key, this.color, required this.height, required this.dividerHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      child: Center(
        child: Divider(
          height: dividerHeight,
          color: color,
        ),
      ),
    );
  }
}
