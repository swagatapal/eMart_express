import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeComponent extends StatelessWidget {
  final String itemCount;
  const YouCanAlsoLikeComponent({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("You can also like this", style: TextStyle(
            fontSize: 18,
            fontFamily: "Roboto",
            fontWeight:
              FontWeight.bold,
            color: AppColors.black1
          ),),
          Text(itemCount, style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            fontSize: 11,
            color: AppColors.grey
          ),)
        ],
      ),
    );
  }
}
