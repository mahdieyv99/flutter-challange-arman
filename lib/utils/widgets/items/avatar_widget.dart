import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';
import 'package:skeletons/skeletons.dart';

class AvatarwWidget extends StatelessWidget {
  double width;
  double height;
  double cornerRadius;
  String imageResource;
  bool isNetworkImage;
  Function() onTap;


  AvatarwWidget({
    required this.width,
    required this.height,
    required this.cornerRadius,
    required this.imageResource,
    required this.onTap,
    required this.isNetworkImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(cornerRadius),
          ),
          image: DecorationImage(
              image:
              (isNetworkImage)?
              Image.network(
                imageResource ,
                fit: BoxFit.fitWidth,
              ).image
                  :
              AssetImage(imageResource),
              fit: BoxFit.cover),
          color: MyColors.cream),
    );
  }
}
