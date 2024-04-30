import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';
import 'package:skeletons/skeletons.dart';

class FavoriteArtView extends StatefulWidget {
  double width;
  double height;
  Color backgroundColor;
  Color borderColors;
  String backgroundPictureAddress;
  String favoriteIconPath;
  Function() onTap;
  bool isFavorite;
  Color favoriteIconColor;
  double favoriteIconWidth;
  double favoriteIconHeight;
  bool isLoading;
  FavoriteArtView(
      {required this.width,
      required this.height,
      required this.backgroundColor,
      required this.borderColors,
      required this.backgroundPictureAddress,
      required this.favoriteIconPath,
      required this.onTap,
      required this.isFavorite,
      required this.favoriteIconColor,
      required this.favoriteIconWidth,
      required this.favoriteIconHeight,
      required this.isLoading});

  @override
  FavoriteArtViewState createState() => FavoriteArtViewState(
      width,
      height,
      backgroundColor,
      borderColors,
      backgroundPictureAddress,
      favoriteIconPath,
      onTap,
      isFavorite,
      favoriteIconColor,
      favoriteIconWidth,
      favoriteIconHeight,
      isLoading);
}

class FavoriteArtViewState extends State<FavoriteArtView> {
  double width;
  double height;
  Color backgroundColor;
  Color borderColors;
  String backgroundPictureAddress;
  String favoriteIconPath;
  Function() onTap;
  bool isFavorite;
  Color favoriteIconColor;
  double favoriteIconWidth;
  double favoriteIconHeight;
  bool isLoading;

  FavoriteArtViewState(
      this.width,
      this.height,
      this.backgroundColor,
      this.borderColors,
      this.backgroundPictureAddress,
      this.favoriteIconPath,
      this.onTap,
      this.isFavorite,
      this.favoriteIconColor,
      this.favoriteIconWidth,
      this.favoriteIconHeight,
      this.isLoading);

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      isLoading: widget.isLoading,
      skeleton:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(9),
            ),
            border: Border.all(width: 1, color: borderColors),
            color: MyColors.orange,
          ),
        ),
      ) ,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(9),
                  ),
                  border: Border.all(width: 1, color: borderColors),
                  color: backgroundColor,
                  image: DecorationImage(
                      image: NetworkImage(widget.backgroundPictureAddress),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Visibility(
              visible: widget.isFavorite,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                child: SizedBox(
                  width: width,
                  height: height,
                  child: Center(
                    child: SvgPicture.asset(
                      favoriteIconPath,
                      color: favoriteIconColor,
                      width: favoriteIconWidth,
                      height: favoriteIconHeight,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
