import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class SimpleTextField extends StatefulWidget {
  final TextEditingController textController;
  final int maxLines;
  final int maxLength;
  final String labelText;
  final String hintText;
  final String errorText;
  final bool isError;
  final bool hasMaxLength;
  final TextInputType textInputType;
  final bool checkLsatCharacterSelect;
  final bool hasBorder;
  final bool isActive;
  var focusNode;
  var hasFocus;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final double borderRadius;
  final double verticalContentPadding;
  final double horizontalContentPadding;
  final Color activeLabelTextColor;
  final Color inActiveLabelTextColor;
  final Color activeTextColor;
  final Color inActiveTextColor;
  final Color activeHintTextColor;
  final Color inActiveHintTextColor;
  final Color errorLabelTextColor;
  final Color fillColor;
  final String fontFamily;
  final double fontSize;
  final double labelFontSize;
  final double hintFontSize;
  final double errorFontSize;
  final bool hasUnderline;

  SimpleTextField({
    required this.textController,
    this.maxLines = 1,
    this.maxLength = 1000000000,
    this.labelText = "",
    this.hintText = "",
    this.errorText = "",
    this.isError = false,
    this.hasMaxLength = false,
    this.textInputType = TextInputType.text,
    this.checkLsatCharacterSelect = true,
    this.hasBorder = true,
    this.isActive = true,
    this.focusNode,
    this.hasFocus = false,
    this.focusedBorderColor = MyColors.cream,
    this.errorBorderColor = MyColors.cream,
    this.enabledBorderColor = MyColors.cream,
    this.disabledBorderColor = MyColors.cream,
    this.borderRadius = 8,
    this.verticalContentPadding = 10,
    this.horizontalContentPadding = 10,
    this.activeLabelTextColor = MyColors.cream,
    this.inActiveLabelTextColor = MyColors.cream,
    required this.fontSize,
    this.labelFontSize = 10,
    this.hintFontSize = 14,
    this.errorFontSize = 10,
    this.activeTextColor = MyColors.cream,
    this.fillColor = MyColors.transparent,
    this.inActiveTextColor = MyColors.cream,
    this.activeHintTextColor = MyColors.cream,
    this.inActiveHintTextColor = MyColors.cream,
    this.errorLabelTextColor = MyColors.cream,
    this.fontFamily = "Helvetica",
    this.hasUnderline = false,
  });

  @override
  SimpleTextFieldState createState() => SimpleTextFieldState(
      textController,
      maxLines,
      maxLength,
      labelText,
      hintText,
      errorText,
      isError,
      hasMaxLength,
      textInputType,
      checkLsatCharacterSelect,
      hasBorder,
      isActive,
      focusNode,
      hasFocus,
      focusedBorderColor,
      errorBorderColor,
      enabledBorderColor,
      disabledBorderColor,
      borderRadius,
      verticalContentPadding,
      horizontalContentPadding,
      activeLabelTextColor,
      inActiveLabelTextColor,
      fontSize,
      labelFontSize,
      hintFontSize,
      errorFontSize,
      activeTextColor,
      fillColor,
      inActiveTextColor,
      activeHintTextColor,
      inActiveHintTextColor,
      errorLabelTextColor,
      fontFamily,
      hasUnderline);
}

class SimpleTextFieldState extends State<SimpleTextField> {
  final TextEditingController textController;
  final int maxLines;
  final int maxLength;
  final String labelText;
  final String hintText;
  final String errorText;
  final bool isError;
  final bool hasMaxLength;
  final TextInputType textInputType;
  final bool checkLsatCharacterSelect;
  final bool hasBorder;
  final bool isActive;
  var focusNode;
  var hasFocus;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color enabledBorderColor;
  final Color disabledBorderColor;
  final double borderRadius;
  final double verticalContentPadding;
  final double horizontalContentPadding;
  final Color activeLabelTextColor;
  final Color inActiveLabelTextColor;
  final Color activeTextColor;
  final Color inActiveTextColor;
  final Color activeHintTextColor;
  final Color inActiveHintTextColor;
  final Color errorLabelTextColor;
  final Color fillColor;
  final String fontFamily;
  final double fontSize;
  final double labelFontSize;
  final double hintFontSize;
  final double errorFontSize;
  final bool hasUnderline;

  SimpleTextFieldState(
      this.textController,
      this.maxLines,
      this.maxLength,
      this.labelText,
      this.hintText,
      this.errorText,
      this.isError,
      this.hasMaxLength,
      this.textInputType,
      this.checkLsatCharacterSelect,
      this.hasBorder,
      this.isActive,
      this.focusNode,
      this.hasFocus,
      this.focusedBorderColor,
      this.errorBorderColor,
      this.enabledBorderColor,
      this.disabledBorderColor,
      this.borderRadius,
      this.verticalContentPadding,
      this.horizontalContentPadding,
      this.activeLabelTextColor,
      this.inActiveLabelTextColor,
      this.fontSize,
      this.labelFontSize,
      this.hintFontSize,
      this.errorFontSize,
      this.activeTextColor,
      this.fillColor,
      this.inActiveTextColor,
      this.activeHintTextColor,
      this.inActiveHintTextColor,
      this.errorLabelTextColor,
      this.fontFamily,
      this.hasUnderline);

  @override
  void didUpdateWidget(covariant SimpleTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      enabled: widget.isActive,
      keyboardType: widget.textInputType,
      controller: textController,
      obscureText: false,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        counterText: "",
        filled: true,
        fillColor: fillColor,
        focusedBorder: (hasUnderline)
            ? UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: focusedBorderColor),
              )
            : OutlineInputBorder(
                borderSide: (hasBorder)
                    ? BorderSide(
                        color: focusedBorderColor,
                        width: 1.0,
                      )
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
        errorBorder: (hasUnderline)
            ? UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: errorBorderColor),
              )
            : OutlineInputBorder(
                borderSide: (hasBorder)
                    ? BorderSide(
                        color: errorBorderColor,
                        width: 1.0,
                      )
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
        focusedErrorBorder: (hasUnderline)
            ? UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: errorBorderColor),
              )
            : OutlineInputBorder(
                borderSide: (hasBorder)
                    ? BorderSide(
                        color: errorBorderColor,
                        width: 1.0,
                      )
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
        enabledBorder: (hasUnderline)
            ? UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: enabledBorderColor),
              )
            : OutlineInputBorder(
                borderSide: (hasBorder)
                    ? BorderSide(
                        color: enabledBorderColor,
                        width: 1.0,
                      )
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
        disabledBorder: (hasUnderline)
            ? UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: disabledBorderColor),
              )
            : OutlineInputBorder(
                borderSide: (hasBorder)
                    ? BorderSide(
                        color: disabledBorderColor,
                        width: 1.0,
                      )
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              ),
        border: (hasBorder) ? OutlineInputBorder(borderRadius: BorderRadius.circular(widget.borderRadius)) : null,
        contentPadding:
            EdgeInsets.symmetric(vertical: widget.verticalContentPadding, horizontal: widget.horizontalContentPadding),
        labelText: widget.labelText,
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // labelStyle: TextStyle(
        //     color: (widget.isActive)
        //         ? widget.activeLabelTextColor
        //         : widget.inActiveLabelTextColor,
        //     fontFamily:widget.fontFamily,
        //     fontSize: widget.fontSize),
        hintStyle: TextStyle(color: activeHintTextColor, fontFamily: widget.fontFamily, fontSize: hintFontSize),
        errorText: widget.isError ? widget.errorText : null,
        errorStyle: TextStyle(
          color: widget.errorLabelTextColor,
          fontSize: widget.errorFontSize,
          fontFamily: widget.fontFamily,
        ),
        alignLabelWithHint: true,
      ),
      style: TextStyle(
          color: (widget.isActive) ? widget.activeTextColor : widget.inActiveTextColor,
          fontFamily: widget.fontFamily,
          fontSize: widget.fontSize),
      textAlign: TextAlign.left,
    );
  }
}
