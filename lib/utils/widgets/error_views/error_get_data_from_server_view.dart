import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class ErrorGetDataFromServerView extends StatelessWidget {
  final double height;
  final String text;
  final Function() retryGetData;

  ErrorGetDataFromServerView(
      {required this.height, required this.text, required this.retryGetData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              text,
              style: const TextStyle(
                color: MyColors.cream,
                fontSize: 16,
                fontFamily: "Helvetica",
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              width: 120,
              height: 35,
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/images/refresh_icon.svg",
                  color: MyColors.cream,
                ),
                onPressed: () {
                  retryGetData();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
