import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class OnboardingItemStepThreeButton extends StatelessWidget {
  Color borderColor;
  Color backgroundColor;
  String title;
  Widget descriptionWidget;
  Function() onTap;

  OnboardingItemStepThreeButton(
      {required this.borderColor,
      required this.backgroundColor,
      required this.title,
      required this.descriptionWidget,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          border: Border.all(width: 0.5, color: borderColor),
          color: backgroundColor),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: MyColors.cream,
                        fontFamily: "Helvetica",
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  descriptionWidget
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "assets/images/right_arrow_icon.svg",
                  color: MyColors.cream,
                  width: 12,
                  height: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
