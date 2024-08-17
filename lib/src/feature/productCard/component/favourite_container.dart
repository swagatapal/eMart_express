import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class FavouriteContainer extends StatelessWidget {
  const FavouriteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey
                  .withOpacity(0.25), // Shadow color
              offset: Offset(0, 4), // X and Y offsets
              blurRadius: 8, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ]),
      child: Icon(
        Icons.favorite_border,
        color: AppColors.grey,
        size: 20,
      ),
    );
  }
}
