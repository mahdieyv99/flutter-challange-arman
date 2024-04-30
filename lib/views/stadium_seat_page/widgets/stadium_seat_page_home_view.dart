import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/model/stadium_seat_page_model.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/widgets/seat_widget.dart';
import 'package:skeletons/skeletons.dart';

import '../../../utils/widgets/buttons/my_elevated_button.dart';
import '../../../values/languages/StringsManager.dart';
import '../../../values/themes/my_colors.dart';

class StadiumSeatPageHomeView extends StatefulWidget {
  Function() onMap;
  Function() getMoreMuseums;
  Function() onMuseumTap;
  StadiumSeatPageMainModel mainModel;

  StadiumSeatPageHomeView(
      {required this.onMap,
      required this.getMoreMuseums,
      required this.onMuseumTap,
      required this.mainModel});

  @override
  StadiumSeatPageHomeViewState createState() => StadiumSeatPageHomeViewState(
      onMap, getMoreMuseums, onMuseumTap, mainModel);
}

class StadiumSeatPageHomeViewState extends State<StadiumSeatPageHomeView>
    with SingleTickerProviderStateMixin {
  Function() onMap;
  Function() getMoreMuseums;
  Function() onMuseumTap;
  StadiumSeatPageMainModel mainModel;

  StadiumSeatPageHomeViewState(
      this.onMap, this.getMoreMuseums, this.onMuseumTap, this.mainModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: MyColors.darkBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // todo name of user
                          StringsManager.strings.volleyballFederation,
                          style: const TextStyle(
                              color: MyColors.cream,
                              fontFamily: "Silk Serif Regular",
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                              height: 1),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              width: double.maxFinite,
                              'assets/images/devider.png',
                              fit: BoxFit.fill,
                            ),
                            Positioned.fill(
                              left: 130,
                              right: 130,
                              bottom: 10,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: MyColors.darkBlue,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: MyColors.white, width: 1)),
                                child: Text(
                                  // todo name of user
                                  StringsManager.strings.chooseSeat,
                                  style: const TextStyle(
                                      color: MyColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        createCinemaScreen(10, 10)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30),
            child: SizedBox(
              height: 60,
            ),
          ),
        ],
      ),
    ));
  }

  Widget createCinemaScreen(int col, int row) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            for (int i = 0; i < col; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = 0; j < row; j++) Expanded(child: SeatWidget())
                ],
              ),
          ],
        ),
      ],
    );
  }
}
