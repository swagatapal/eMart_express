import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCardListItem extends StatelessWidget {
  final String text;
  late Function()? onClicked;
   ProductCardListItem({super.key, required this.text, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20, bottom: 8),
      child: InkWell(
        onTap: onClicked,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 16,
              color: AppColors.black1
            ),),
            Icon(Icons.arrow_forward_ios, size: 12,),
          ],
        ),
      ),
    );
  }
}
