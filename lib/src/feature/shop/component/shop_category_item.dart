import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ShopCategoryItem extends StatelessWidget {
  final String text;
  late Function()? onClicked;

  ShopCategoryItem({super.key,this.onClicked, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 10, bottom: 10),
          child: InkWell(
            onTap: onClicked,
            child: Text(text, style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.black
            ),),
          ),
        ),
        Divider(
          color: AppColors.grey.withOpacity(0.2),
        )
      ],
    );
  }
}
