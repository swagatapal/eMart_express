import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonHeaderText extends StatelessWidget {
  final String text;
  final double? fontSize;
  const CommonHeaderText({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto",
      fontSize: fontSize ?? 34,
      color: AppColors.black1
    ),);
  }
}
