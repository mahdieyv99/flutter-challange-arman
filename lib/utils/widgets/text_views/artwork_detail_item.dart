import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../values/themes/my_colors.dart';

class ArtworkDetailItem extends StatelessWidget {
  String imagePath;
  String itemText;

  ArtworkDetailItem({required this.imagePath, required this.itemText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            imagePath,
            color: MyColors.cream,
            width: 25,
            height: 25,
          ),
        ),
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width - 100,
          child: Text(
            itemText,
            style: const TextStyle(
              color: MyColors.cream,
              fontFamily: "Helvetica",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
