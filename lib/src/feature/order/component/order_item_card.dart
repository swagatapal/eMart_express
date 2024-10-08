import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';
import '../../../core/helper/app_colors.dart';

class OrderItemCard extends StatelessWidget {
  final String orderNo;
  final String date;
  final String trackingNumber;
  final String quantity;
  final String totalAmount;
  late Function()? onClicked;

  OrderItemCard(
      {super.key,
      this.onClicked,
      required this.orderNo,
      required this.date,
      required this.trackingNumber,
      required this.quantity,
      required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColors.white1,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.25), // Shadow color
                offset: Offset(0, 4), // X and Y offsets
                blurRadius: 8, // Blur radius
                spreadRadius: 0, // Spread radius
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Order No: ',
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                        TextSpan(
                          text: orderNo,
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tracking number: ',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                        fontFamily: "Roboto",
                      ),
                    ),
                    TextSpan(
                      text: trackingNumber,
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quantity: ',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                        TextSpan(
                          text: quantity,
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total Amount: ',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                        TextSpan(
                          text: totalAmount,
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 200),
                    onTap: onClicked,
                    child: Container(

                      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
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
                      child: Text(
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.black1,
                            fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: "Roboto",
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
