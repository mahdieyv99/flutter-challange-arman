import 'package:flutter/material.dart';
import 'package:mahdi_flutter_challenge_arman/values/themes/my_colors.dart';

class SeatWidget extends StatefulWidget {
  bool isReserved;
  bool isSelected;

  SeatWidget({Key? key, this.isSelected = false, this.isReserved = false})
      : super(key: key);

  @override
  _SeatWidgetState createState() => _SeatWidgetState();
}

class _SeatWidgetState extends State<SeatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          !widget.isReserved ? widget.isSelected = !widget.isSelected : null;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
        width: MediaQuery.of(context).size.width / 15,
        height: MediaQuery.of(context).size.width / 15,
        child: Image.asset(
          'assets/images/chair.png',
          color: widget.isSelected ? MyColors.green : MyColors.white,
        ),
      ),
    );
  }
}
