import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../values/languages/StringsManager.dart';
import '../../../values/themes/my_colors.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController searchController;
  Function() onTap;

  SearchBox({required this.searchController, required this.onTap});

  @override
  SearchBoxState createState() => SearchBoxState(searchController, onTap);
}

class SearchBoxState extends State<SearchBox> {
  final TextEditingController searchController;
  Function() onTap;

  SearchBoxState(this.searchController, this.onTap);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: searchController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0.0),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.cream,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColors.cream,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        hintText: StringsManager.strings.search.toUpperCase(),
        hintStyle:
            const TextStyle(color: MyColors.green, fontFamily: "Helvetica", fontSize: 15, fontWeight: FontWeight.w300),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            "assets/images/search_in_search_box.svg",
            color: MyColors.cream,
          ),
        ),
      ),
      style: TextStyle(color: MyColors.cream, fontFamily: "Helvetica", fontSize: 15),
    );
  }
}
