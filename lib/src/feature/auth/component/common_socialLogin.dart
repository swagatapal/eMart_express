import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonSocialLogin extends StatelessWidget {
  final String text;
  const CommonSocialLogin({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: AppColors.black1,
          fontFamily: 'Roboto',
        ),),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 64,
            width: 92,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius:
              BorderRadius.all(Radius.circular(24)),
              boxShadow:  [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.05), // Shadow color
                  offset: Offset(0, 1), // X and Y offsets
                  blurRadius: 8, // Blur radius
                  spreadRadius: 0, // Spread radius
                ),
              ],
            ),),
            const SizedBox(width: 20,),
            Container(
              height: 64,
              width: 92,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                BorderRadius.all(Radius.circular(24)),
                boxShadow:  [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.05), // Shadow color
                    offset: Offset(0, 1), // X and Y offsets
                    blurRadius: 8, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
              ),)
          ],
        )
      ],
    );
  }
}
