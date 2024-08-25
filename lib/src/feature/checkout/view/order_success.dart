import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animation/order_success.json",
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40, top: 10),
            child: Column(
              children: [
                Text(
                  "Success! ...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black1,
                      fontSize: 34,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(height: 20,),
                Text(
                  "Your order will be delivered soon.\n Thank you for choosing our app!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black1,
                      fontSize: 14,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(height: 40,),

                CommonButton(
                  label: "CONTINUE SHOPPING",
                  labelColor: AppColors.white,
                  solidColor: AppColors.red1,
                  buttonWidth: MediaQuery.of(context).size.width*0.9,
                  buttonHeight: 48,
                  borderRadius: 25,
                  onClicked: (){
                    Navigator.pushNamed(context, '/HomeConfig');
                  },
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
