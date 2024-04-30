import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/utils/widgets/text_fields/text.widget.dart';

class CustomRoundedButton extends StatelessWidget {
  final String caption;
  final double? width;
  final double? height;
  final Color? btnColor;
  final Color? txtColor;
  final String fontFamily;
  final double? radius;
  final double? txtSize;

  const CustomRoundedButton(
      {Key? key,
      required this.caption,
      required this.btnColor,
      required this.txtColor,
      required this.radius,
      required this.width,
      required this.height,
      required this.fontFamily,
      required this.txtSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius!)),
        color: btnColor,
      ),
      child: Center(
          child: TextWidget.medium(
              fontSize: txtSize, text: caption, fontFamily: fontFamily)),
    );
  }
}
