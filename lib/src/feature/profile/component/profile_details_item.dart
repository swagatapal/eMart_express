import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileDetailsItem extends StatelessWidget {
  final String text;
  final String text1;
  late Function()? onClicked;

   ProfileDetailsItem({super.key, required this.text, required this.text1, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 10),
      child: InkWell(
        onTap: onClicked,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.black1,
                  fontFamily: "Roboto"
                ),),
                const SizedBox(height: 5,),
                Text(text1, style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: AppColors.grey,
                    fontFamily: "Roboto"
                ),),
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 20,color: AppColors.grey,),
          ],
        ),
      ),
    );
  }
}
