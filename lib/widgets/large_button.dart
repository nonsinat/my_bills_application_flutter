import 'package:flutter/material.dart';

import 'package:my_bills_flutter/component/colors.dart';

class LargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onTap;
  final bool? isBoreder;
  final String text;

  const LargeButton({
    Key? key,
    this.backgroundColor = AppColor.mainColor,
    this.textColor,
    this.onTap,
    this.isBoreder = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 60,
        margin: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
