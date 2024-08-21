import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';

class OrderItemCard extends StatelessWidget {
  final String orderNo;
  final String date;
  final String trackingNumber;
  final String quantity;
  final String totalAmount;

  const OrderItemCard(
      {super.key,
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
        height: MediaQuery.of(context).size.height * 0.22,
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
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: orderNo,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
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
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: trackingNumber,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quantity: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: quantity,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
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
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: totalAmount,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: AppColors.black1,
                          fontFamily: "Roboto"),
                    ),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
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
