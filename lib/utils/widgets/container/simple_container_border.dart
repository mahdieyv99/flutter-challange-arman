import 'package:flutter/material.dart';

import '../text_fields/text.widget.dart';

class SimpleContainerBorderWidget extends StatelessWidget {
  final bool isEnabled;
  final double borderRadius;
  final String text;
  final String subText;
  final Widget? icon;
  final String fontFamily;
  // final String assetName;
  final double? textFontSize;
  final double? subTextFontSize;
  final Color? btnColor;
  final Color? assetColor;
  final double? assetWidth;
  final double? assetHeight;
  final Color? txtColor;
  final Color? subTxtColor;
  final Color btnBorderColor;
  final Function() onTap;
  final TextStyle? textStyle;
  final double height;
  final double width;

  const SimpleContainerBorderWidget({
    Key? key,
    required this.isEnabled,
    required this.borderRadius,
    required this.text,
    this.textFontSize,
    required this.btnColor,
    required this.onTap,
    this.textStyle,
    required this.height,
    required this.width,
    required this.btnBorderColor,
    this.txtColor,
    required this.fontFamily,
    required this.subText,
    this.subTextFontSize,
    this.subTxtColor,
    this.assetColor,
    this.assetWidth,
    // required this.assetName,
    this.assetHeight,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            border: Border.all(color: btnBorderColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: TextWidget.bold(
                      text: text,
                      fontSize: textFontSize,
                      color: txtColor,
                      fontFamily: '',
                    ),
                  ),
                  TextWidget.regular(
                    text: subText,
                    fontSize: subTextFontSize,
                    color: subTxtColor,
                    fontFamily: '',
                  ),
                ],
              ),
              SizedBox(child: icon),
            ],
          ),
        ),
      ),
    );
  }
}
