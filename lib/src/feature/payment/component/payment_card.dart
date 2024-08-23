import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/payment/controller/payment_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentCard extends StatelessWidget {
  final String cardNumber;
  final String cardHolderName;
  final String expiry;
  final int index;
  const PaymentCard({super.key, required this.cardNumber, required this.cardHolderName, required this.expiry, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentCardController>(
      builder: (context, cardController, child) {
        final isDefault = cardController.defaultCardIndex == index;
        return Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: isDefault ? AppColors.black1 : AppColors.black1.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.red1.withOpacity(0.25), // Shadow color
                    offset: Offset(0, 4), // X and Y offsets
                    blurRadius: 8, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/chip.png", height: 24, width: 32),
                    const SizedBox(height: 20),
                    Text(
                      "* * * *  * * * *  * * * *  $cardNumber",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 24,
                        color: AppColors.white1,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card holder name",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                color: AppColors.grey,
                              ),
                            ),
                            Text(
                              cardHolderName,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expiry Date",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                color: AppColors.grey,
                              ),
                            ),
                            Text(
                              expiry,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/images/mastercard.png", height: 25, width: 32),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  checkColor: AppColors.white1,
                  activeColor: AppColors.black1,
                  value: isDefault,
                  onChanged: (bool? value) {
                    cardController.toggleCheckbox(index);
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
          ],
        );
      },
    );
  }
}

