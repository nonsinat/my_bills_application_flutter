import 'package:flutter/material.dart';

import 'package:my_bills_flutter/component/colors.dart';

class ButtonBill extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  const ButtonBill({
    Key? key,
    this.fontSize,
    required this.icon,
    this.onTap,
    this.backgroundColor = AppColor.mainColor,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 34,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
