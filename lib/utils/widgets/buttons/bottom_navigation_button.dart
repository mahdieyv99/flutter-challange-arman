import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class BottomNavigationButton extends StatelessWidget {
  int bottomNavigationIndex;
  String text;
  String iconPath;
  bool isActive;
  Function() onTap;

  BottomNavigationButton(
      {required this.text,required this.bottomNavigationIndex,
      required this.iconPath,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
             BoxShadow(
              color:
              (isActive || (bottomNavigationIndex == 2))?
              MyColors.iconShadowActive:
              MyColors.iconShadowDiActive,
              blurRadius: 15,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SvgPicture.asset(
                iconPath,
                width: 25,
                height: 25,
                color: (isActive) ? MyColors.cream : MyColors.green,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  color: (isActive) ? MyColors.cream : MyColors.green,
                  fontFamily: "Helvetica",
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
