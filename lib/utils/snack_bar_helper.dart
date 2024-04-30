import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class SnackBarHelper {
  SnackBar showErrorSnackBar(String? message, {int duration = 1500}) {
    return SnackBar(
      backgroundColor: MyColors.orange,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Text(
              message!,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: MyColors.cream, fontFamily: "Helvetica", fontSize: 15),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: Icon(
          //     Icons.error_outline,
          //     color: myColors.BaseWhite,
          //   ),
          // ),
        ],
      ),
      duration: Duration(milliseconds: duration),
    );
  }

  SnackBar showSuccessSnackBar(String? message, {int duration = 1500}) {
    return SnackBar(
      backgroundColor: MyColors.lighterDarkBlue,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Text(
              message!,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: MyColors.cream, fontFamily: "Helvetica", fontSize: 15),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: Icon(
          //     Icons.error_outline,
          //     color: myColors.BaseWhite,
          //   ),
          // ),
        ],
      ),
      duration: Duration(milliseconds: duration),
    );
  }


  Flushbar showErrorFlushbar(String? message, {int duration = 1500}) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.BOTTOM,

      backgroundColor: MyColors.orange,
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Text(
              message!,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: MyColors.cream, fontFamily: "Helvetica", fontSize: 15),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: Icon(
          //     Icons.error_outline,
          //     color: myColors.BaseWhite,
          //   ),
          // ),
        ],
      ),
      duration: Duration(milliseconds: duration),
    );
  }


  Flushbar showSuccessFlushbar(String? message, {int duration = 1500}) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,

      backgroundColor: MyColors.lighterDarkBlue,
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: Text(
              message!,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: MyColors.cream, fontFamily: "Helvetica", fontSize: 15),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: Icon(
          //     Icons.error_outline,
          //     color: myColors.BaseWhite,
          //   ),
          // ),
        ],
      ),
      duration: Duration(milliseconds: duration),
    );
  }


}
