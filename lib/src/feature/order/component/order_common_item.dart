import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';
import '../controller/order_controller.dart';
import '../model/order_item_model.dart';
import 'package:provider/provider.dart';

class OrderCommonItem extends StatelessWidget {
  late Function()? onClicked;
  final OrderItem item;
  OrderCommonItem({super.key, required this.item, this.onClicked});

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.15,
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
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: AppColors.grey.withOpacity(0.1),
                    child: Image.network(
                      item.dressImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.dressName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: AppColors.black1,
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Color: ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: item.color,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.black1,
                                        fontFamily: "Roboto",
                                        fontSize: 11)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Size: ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: item.size,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.black1,
                                        fontFamily: "Roboto",
                                        fontSize: 11)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 36,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Row(
                              children: [

                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Units: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.grey,
                                          fontSize: 11.0,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      TextSpan(
                                        text: item.itemCount.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.0,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "${item.itemCount * item.pricePerItem}\$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: AppColors.black1,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
