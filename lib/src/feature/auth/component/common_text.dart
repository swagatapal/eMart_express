import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';

class CommonText extends StatelessWidget {
  final String text;
  late Function()? onClicked;
   CommonText({required this.text,this.onClicked, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.black1,
            fontFamily: 'Roboto',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Bounce(
            duration: const Duration(milliseconds: 200),
            onTap: onClicked,
            child: Icon(Icons.arrow_forward, size: 20, color: AppColors.red))
      ],
    );
  }
}
