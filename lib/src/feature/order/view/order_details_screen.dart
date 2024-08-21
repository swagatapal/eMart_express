import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/common_components/common_header.dart';
import '../component/order_common_item.dart';
import '../component/order_information.dart';
import '../controller/order_controller.dart';
import 'package:provider/provider.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonHeader(
                  text: "Order Details",
                  isVisibleText: true,
                  isVisibleDivider: true,
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                text: 'Order No: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: "32156465",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                text: 'Tracking number: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: "IW325456125354",
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
                    const SizedBox(width: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        children: const [
                          Text(
                            "15-02-2019",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Delivered",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 24.0, bottom: 16.0),
                  child: Text(
                    "3 items",
                    style: TextStyle(
                        color: AppColors.black1,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: orderProvider.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = orderProvider.items[index];
                      return OrderCommonItem(item: item, onClicked: () {});
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
                  child: Text(
                    "Order information",
                    style: TextStyle(
                      color: AppColors.black1,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            
                Column(
                  children: const [
                    OrderInformation(
                      text1: "Shipping Address: ",
                      text2: "3 New Bridge Court, Chino Hills, CA 91709, United States",
                    ),
                    SizedBox(height: 20.0,),
                    OrderInformation(
                      text1: "Payment method: ",
                      text2: "**** **** **** 3947",
                    ),
                    SizedBox(height: 20.0,),
                    OrderInformation(
                      text1: "Delivery method: ",
                      text2: "FedEx, 3 days, 15\$",
                    ),
                    SizedBox(height: 20.0,),
                    OrderInformation(
                      text1: "Discount: ",
                      text2: "10%, Personal promo code",
                    ),
                    SizedBox(height: 20.0,),
                    OrderInformation(
                      text1: "Total Amount: ",
                      text2: "133\$",
                    ),
                    SizedBox(height: 20.0,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
