import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class IconButtonContainer extends StatelessWidget {
  final IconData icon;
  late Function()? onClicked;

   IconButtonContainer({super.key, required this.icon, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.25), // Shadow color
                offset: Offset(0, 4), // X and Y offsets
                blurRadius: 8, // Blur radius
                spreadRadius: 0, // Spread radius
              ),
            ]
        ),
        child: Center(
            child: Icon(icon, size: 24,color: AppColors.grey,)),
      ),
    );
  }
}
