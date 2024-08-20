import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/bag/components/promo_code_container.dart';
import 'package:emart_express/src/feature/bag/controller/bag_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BagButtomAppbar extends StatelessWidget {
  late Function()? onClicked;

   BagButtomAppbar({super.key, this.onClicked});

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context);
    return BottomAppBar(
        shadowColor: AppColors.black1,
        elevation: 20,
        color: AppColors.white,
        height: MediaQuery.of(context).size.height * 0.23,
        child: Column(
          children: [
            PromoCodeContainer(onClicked: onClicked,),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount", style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500
                ),),
                Text("${bagProvider.totalPrice}\$", style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black1,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: CommonButton(
                buttonHeight: 48,
                borderRadius: 25,
                label: "CHECK OUT",
                labelColor: AppColors.white,
                solidColor: AppColors.red1,
              ),
            ),
          ],
        )
    );
  }
}
