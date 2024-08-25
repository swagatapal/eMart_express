import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class AccountHolderDetails extends StatelessWidget {
  final String accountHolderName;
  final String address;
  late Function()? onClicked;

   AccountHolderDetails({super.key, required this.accountHolderName, required this.address, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.25), // Shadow color
              offset: Offset(0, 4), // X and Y offsets
              blurRadius: 8, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(accountHolderName, style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    color: AppColors.black1,
                    fontSize: 14
                ),),
                InkWell(
                  onTap: onClicked,
                  child: Text("Change", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: AppColors.red1,
                      fontSize: 14
                  ),),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Text(address, style: TextStyle(
              fontSize: 14,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              color: AppColors.black1
            ),)

          ],
        ),
      ),
    );
  }
}
