import 'package:flutter/cupertino.dart';

import '../../../values/themes/my_colors.dart';

class FunFactsItem extends StatelessWidget {
  String itemText;

  FunFactsItem({required this.itemText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "  •  ",
          style: const TextStyle(
              color: MyColors.cream,
              fontFamily: "Inter-Regular",
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width - 50,
          child: Text(
            itemText,
            style: const TextStyle(
              color: MyColors.cream,
              fontFamily: "Helvetica",
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ),
      ],
    );
  }
}
