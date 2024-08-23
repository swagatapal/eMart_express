import 'dart:developer';

import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:emart_express/src/feature/payment/component/payment_card.dart';
import 'package:emart_express/src/feature/payment/controller/payment_card_controller.dart';
import 'package:emart_express/src/feature/payment/model/card_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonHeader(
              text: "Payment methods",
              isVisibleText: true,
              isVisibleDivider: true,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Your payment cards",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  color: AppColors.black1,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                      child: PaymentCard(
                        cardNumber: "2564",
                        cardHolderName: "SWAGATA PAL",
                        expiry: "12/25",
                        index: index,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.black1,
        child: Icon(Icons.add, color: Colors.white, size: 30),
        onPressed: () {
          showAddPaymentCardCustomModalBottomSheet(context);
        },
      ),
    );
  }

  void showAddPaymentCardCustomModalBottomSheet(BuildContext context) {
    final _cardHolderNameController = TextEditingController();
    final _cardNumberController = TextEditingController();
    final _expiryController = TextEditingController();
    final _cvvController = TextEditingController();
    bool _isDefault = false;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
              expand: false,
              builder: (context, scrollController) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 15),
                        Container(
                          width: 80,
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Add New Card",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: AppColors.black1,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CommonTextFormField(
                                labelText: "Name on card",
                                controller: _cardHolderNameController,
                              ),
                              const SizedBox(height: 20),
                              CommonTextFormField(
                                labelText: "Card number",
                                controller: _cardNumberController,
                              ),
                              const SizedBox(height: 20),
                              CommonTextFormField(
                                labelText: "Expiry date",
                                controller: _expiryController,
                              ),
                              const SizedBox(height: 20),
                              CommonTextFormField(
                                labelText: "CVV",
                                controller: _cvvController,
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Checkbox(
                                    checkColor: AppColors.white1,
                                    activeColor: AppColors.black1,
                                    value: _isDefault,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isDefault = value ?? false;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Use as default payment method',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black1,
                                      fontFamily: "Roboto",
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              CommonButton(
                                label: "ADD CARD",
                                labelColor: AppColors.white,
                                solidColor: AppColors.red1,
                                buttonWidth: MediaQuery.of(context).size.width,
                                buttonHeight: 48,
                                borderRadius: 25,
                                onClicked: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
