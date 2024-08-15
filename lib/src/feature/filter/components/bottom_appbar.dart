import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shadowColor: AppColors.black1,
        elevation: 20,
        color: AppColors.white,
        height: MediaQuery.of(context).size.height * 0.13,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CommonButton(
              buttonHeight: 48,
              borderRadius: 25,
              buttonWidth: MediaQuery.of(context).size.width * 0.43,
              label: "Discard",
              labelColor: AppColors.black1,
              solidColor: AppColors.white,
              borderColor: AppColors.black1,
              isBorderShadowVisible: false,
            ),
            CommonButton(
              buttonHeight: 48,
              borderRadius: 25,
              buttonWidth: MediaQuery.of(context).size.width * 0.43,
              label: "Apply",
              labelColor: AppColors.white,
              solidColor: AppColors.red1,
            )
          ],
        ));
  }
}
