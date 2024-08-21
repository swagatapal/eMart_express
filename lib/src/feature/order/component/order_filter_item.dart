import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';

class OrderFilterItem extends StatelessWidget {
  final String text;
  late Function()? onClicked;

  OrderFilterItem({super.key, this.onClicked, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: onClicked,
        child: Container(
          height: 30,
          decoration: BoxDecoration(
              color: AppColors.black1,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Center(
              child: Text(text, style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w800,
                  color: AppColors.white
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
