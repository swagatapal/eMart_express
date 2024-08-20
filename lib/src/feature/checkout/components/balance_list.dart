import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class BalanceList extends StatelessWidget {
  final String text;
  final String price;
  const BalanceList({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(
          fontSize: 14,
          fontFamily: "Roboto",
          color: AppColors.grey,
          fontWeight: FontWeight.w700
        ),),

        Text(price, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
          color: AppColors.black1,
          fontSize: 16,
        ),)
      ],
    );
  }
}
