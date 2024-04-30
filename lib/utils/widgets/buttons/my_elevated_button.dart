import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

class myElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final String fontFamily;
  final double fontSize;
  final double borderRadius;
  final bool isLoading;
  final bool hasIcon;
  final bool hasBorder;
  final double? iconSize;
  final Color? iconColor;
  final String? iconPath;
  final Color? loadingColor;
  final Color? borderColor;
  final MainAxisAlignment mainAxisAlignment;
  final double contentVerticalPadding;
  final double iconHorizontalPadding;
  final FontWeight fontWeight;
  final double textVerticalPadding;

  myElevatedButton(
      {
      required this.onPressed,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.fontFamily,
      required this.fontSize,
      required this.borderRadius,
      required this.isLoading,
      required this.hasIcon,
       this.hasBorder = false,
      this.iconSize,
      this.iconColor,
      this.iconPath,
      this.loadingColor,
      this.borderColor,
      this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
      this.contentVerticalPadding = 0,
      this.iconHorizontalPadding = 0,
      this.fontWeight = FontWeight.w700,
      this.textVerticalPadding = 8,
      });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
          applyElevationOverlayColor: false
      ),
      child: ElevatedButton(
        onLongPress: null,
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: (hasBorder)? BorderSide(
            width: 0.5,
            color: borderColor!,
          ):null,
          splashFactory: NoSplash.splashFactory,
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child:
        (hasIcon)?
        Padding(
          padding: EdgeInsets.symmetric(vertical: contentVerticalPadding),
          child: Row(
            mainAxisAlignment:
            mainAxisAlignment,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: iconHorizontalPadding),

                child: SvgPicture.asset(
                  iconPath!,
                  color: iconColor,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 3),
                child: Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontFamily: fontFamily,
                      fontSize: fontSize,
                      fontWeight: fontWeight),
                ),
              ),
            ],
          ),
        )
        :
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: textVerticalPadding),
          child:  (isLoading)
              ? SizedBox(
            child: SpinKitThreeBounce(
              color: loadingColor,
              size: 15,
            ),
          )
              :Text(
            text,
            style: TextStyle(
                color: textColor,
                fontFamily: fontFamily,
                fontSize: fontSize,
                fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
