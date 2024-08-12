import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.red1,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("SUMMER SALES", textAlign: TextAlign.center,style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: "Roboto"
            ),),
            Text("UP TO 50% OFFER", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
                fontFamily: "Roboto"
            ),),
          ],
        ),
      ),
    );
  }
}
