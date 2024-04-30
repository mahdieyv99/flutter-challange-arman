import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class DropDownWithBorder extends StatelessWidget {
  dynamic selectedItem;
  List<dynamic> dropDownList;
  final Function(dynamic) setSelectedItem;
  double iconSize;

  DropDownWithBorder(
      {required this.selectedItem, required this.dropDownList, required this.setSelectedItem, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: const BorderSide(
          color: MyColors.green,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButton<dynamic>(
          dropdownColor:MyColors.darkBlue,
          menuMaxHeight: 300,
          isExpanded: true,
          value: selectedItem,
          selectedItemBuilder: (_) {
            return dropDownList.map<Widget>((dynamic item) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${item.text.toUpperCase()}",
                      style: const TextStyle(
                          color: MyColors.cream,
                          fontSize: 13,
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              );
            }).toList();
          },
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SvgPicture.asset(
              "assets/images/down_next_icon.svg",
              color: MyColors.green,
              width: iconSize,
            ),
          ),
          iconSize: iconSize,
          elevation: 16,
          style: const TextStyle(
              color: MyColors.cream, fontSize: 13, fontFamily: "Helvetica", fontWeight: FontWeight.w300),
          underline: Container(
            height: 2,
            color: Colors.transparent,
          ),
          onChanged: (dynamic data) {
            FocusScope.of(context).requestFocus(FocusNode());
            setSelectedItem(data!);
          },
          items: dropDownList.map<DropdownMenuItem<dynamic>>((dynamic value) {
            return DropdownMenuItem<dynamic>(
              value: value,
              child: Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: (value == selectedItem) ? MyColors.green : MyColors.darkBlue,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${value.text.toUpperCase()}",
                          maxLines: 2,
                          style: const TextStyle(
                              color: MyColors.cream,
                              fontSize: 13,
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
