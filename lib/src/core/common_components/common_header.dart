import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonHeader extends StatelessWidget {
  String text;
  final Icon? icon;
  bool isVisibleText = true;
  bool isVisibleDivider = false;
  bool? isVisibleBackIcon;
  CommonHeader(
      {required this.text,
      this.icon,
      required this.isVisibleText,
        required this.isVisibleDivider,
        this.isVisibleBackIcon = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Visibility(
                  visible:isVisibleBackIcon??true,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: AppColors.black1,
                  ),
                ),
              ),
              isVisibleText?Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.black1,
                    fontSize: 18,
                    fontFamily: 'Roboto'),
              ):Text(""),
              icon ?? SizedBox.shrink(),
            ],
          ),
        ),
        isVisibleDivider?Divider(
          thickness: 1,
          color: AppColors.grey.withOpacity(0.1),
        ):Divider(
          color: AppColors.white,
        )
      ],
    );
  }
}
