import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  String text;
  final Icon? icon;
  bool isVisibleText = true;
  CommonHeader(
      {required this.text,
      this.icon,
      required this.isVisibleText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: AppColors.black1,
          ),
          isVisibleText?Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.black1,
                fontSize: 18,
                fontFamily: 'Roboto'),
          ):Text(""),
          icon ?? SizedBox.shrink(),
        ],
      ),
    );
  }
}
