import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Payment methods",
                isVisibleText: true,
                isVisibleDivider: true,

            )
          ],
        ),
      ),
    );
  }
}
