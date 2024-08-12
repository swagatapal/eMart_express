import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonHomeHeader extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  late Function()? onClicked;
  CommonHomeHeader({super.key,this.onClicked, required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1, style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color:AppColors.black1,
                  fontFamily: 'Roboto'
              ),),
              Text(text2, style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color:AppColors.grey,
                  fontFamily: 'Roboto'
              ),),
            ],
          ),
          InkWell(
            onTap: onClicked,
            child: Text(text3, style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color:AppColors.black1,
                fontFamily: 'Roboto'
            ),),
          ),

        ],
      ),
    );
  }
}
