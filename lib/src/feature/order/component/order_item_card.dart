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
        height: MediaQuery.of(context).size.height * 0.2,
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
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Order No: $orderNo"), Text(date)],
                ),
                const SizedBox(height: 8.0),
                Text("Tracking number: $trackingNumber"),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text("Quantity: $quantity"),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Quantity: ',
                            style: TextStyle(
                              color: Colors.black, // Style for the label
                              fontWeight: FontWeight.normal, // You can customize the style
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: quantity,
                            style: TextStyle(
                              color: Colors.black, // Style for the quantity value
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text("Total Amount: $totalAmount")
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      child: Text("Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColors.black1,
                          fontFamily: "Roboto"
                        ),
                      ),
                    ),
                    Text("Delivered")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
