import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';
import 'package:skeletons/skeletons.dart';

class OnboardingItemStepFourAvatar extends StatelessWidget {
  bool isSelected;
  bool isLoading;
  String imageResource;
  Function() onTap;

  OnboardingItemStepFourAvatar(
      {required this.isSelected,
      required this.isLoading,
      required this.imageResource,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      isLoading: isLoading,
      skeleton: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(200),
            ),
            border: Border.all(
                width: 1,
                color: (isSelected) ? MyColors.cream : MyColors.transparent),
            color: MyColors.lighterDarkBlue),
      ),
      child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(200),
                ),
                border: Border.all(
                    width: 1,
                    color:
                        (isSelected) ? MyColors.cream : MyColors.transparent),
                image: DecorationImage(
                    image: AssetImage(imageResource), fit: BoxFit.cover),
                color: MyColors.lighterDarkBlue),
          )),
    );
  }
}
