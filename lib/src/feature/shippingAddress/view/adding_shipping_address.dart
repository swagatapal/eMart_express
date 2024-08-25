import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:flutter/material.dart';

class AddingShippingAddress extends StatelessWidget {
  const AddingShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Adding Shipping Address",
                isVisibleText: true,
                isVisibleDivider: true
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    CommonTextFormField(
                      labelText: "Full Name",
                    ),
                    const SizedBox(height: 20,),
                    CommonTextFormField(
                      labelText: "Address",
                    ),
                    const SizedBox(height: 20,),
                    CommonTextFormField(
                      labelText: "City",
                    ),
                    const SizedBox(height: 20,),
                    CommonTextFormField(
                      labelText: "State/Province/Region",
                    ),
                    const SizedBox(height: 20,),

                    CommonTextFormField(
                      labelText: "Zip Code(Postal Code)",
                    ),
                    const SizedBox(height: 20,),
                    CommonTextFormField(
                      labelText: "Country",
                    ),
                    const SizedBox(height: 40,),
                    CommonButton(
                      labelColor: AppColors.white,
                      label: "SAVE ADDRESS",
                      solidColor: AppColors.red1,
                      borderRadius: 25,
                      buttonHeight: 48,
                      buttonWidth: MediaQuery.of(context).size.width,
                      onClicked: (){
                        Navigator.pushNamed(context, '/CheckoutScreen');
                      },
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
