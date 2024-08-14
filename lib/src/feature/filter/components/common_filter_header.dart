import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonFilterHeader extends StatelessWidget {
  final String text;
  const CommonFilterHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
      child: Text(text, style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.black1
      ),),
    );
  }
}
