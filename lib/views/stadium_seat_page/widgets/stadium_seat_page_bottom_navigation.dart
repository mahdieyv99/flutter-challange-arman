import 'package:flutter/cupertino.dart';

import '../../../utils/widgets/buttons/bottom_navigation_button.dart';
import '../../../values/languages/StringsManager.dart';

class StadiumSeatPageBottomNavigation extends StatefulWidget {
  int selectedBottomNavigationIndex;
  Function(int) setSelectedBottomNavigationIndex;

  StadiumSeatPageBottomNavigation(
      {required this.selectedBottomNavigationIndex, required this.setSelectedBottomNavigationIndex});

  @override
  StadiumSeatPageBottomNavigationState createState() =>
      StadiumSeatPageBottomNavigationState(selectedBottomNavigationIndex, setSelectedBottomNavigationIndex);
}

class StadiumSeatPageBottomNavigationState extends State<StadiumSeatPageBottomNavigation> with SingleTickerProviderStateMixin {
  int selectedBottomNavigationIndex;
  Function(int) setSelectedBottomNavigationIndex;

  StadiumSeatPageBottomNavigationState(this.selectedBottomNavigationIndex, this.setSelectedBottomNavigationIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavigationButton(
                    bottomNavigationIndex: widget.selectedBottomNavigationIndex,
                    text: StringsManager.strings.spotlight,
                    iconPath: "assets/images/spotlight_icon.svg",
                    isActive: (widget.selectedBottomNavigationIndex == 1),
                    onTap: () {
                      if (widget.selectedBottomNavigationIndex != 1) {
                        setSelectedBottomNavigationIndex(1);
                      }
                    }),
                BottomNavigationButton(
                    bottomNavigationIndex: widget.selectedBottomNavigationIndex,
                    text: StringsManager.strings.home,
                    iconPath: "assets/images/home_main_icon.svg",
                    isActive: (widget.selectedBottomNavigationIndex == 2),
                    onTap: () {
                      if (widget.selectedBottomNavigationIndex != 2) {
                        setSelectedBottomNavigationIndex(2);
                      }
                    }),
                BottomNavigationButton(
                    bottomNavigationIndex: widget.selectedBottomNavigationIndex,
                    text: StringsManager.strings.search,
                    iconPath: "assets/images/search_icon.svg",
                    isActive: (widget.selectedBottomNavigationIndex == 3),
                    onTap: () {
                      if (widget.selectedBottomNavigationIndex != 3) {
                        setSelectedBottomNavigationIndex(3);
                      }
                    }),
                BottomNavigationButton(
                    bottomNavigationIndex: widget.selectedBottomNavigationIndex,
                    text: StringsManager.strings.profile,
                    iconPath: "assets/images/profile_icon.svg",
                    isActive: (widget.selectedBottomNavigationIndex == 4),
                    onTap: () {
                      if (widget.selectedBottomNavigationIndex != 4) {
                        setSelectedBottomNavigationIndex(4);
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
