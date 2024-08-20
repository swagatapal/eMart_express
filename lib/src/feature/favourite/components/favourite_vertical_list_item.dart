import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavouriteVerticalListItem extends StatelessWidget {
  final String rateCount;
  final String dressName;
  final String dressType;
  final String originalPrice;
  final String price;
  final String dressImage;
  final String color;
  final String dressSize;
  final String status;
  final Color colorStatus;
  final bool isStatusShow;
  final bool? isItemVisible;
  final bool? isBagVisible;

  const FavouriteVerticalListItem(
      {super.key,
      required this.rateCount,
      required this.dressName,
      required this.dressType,
      required this.originalPrice,
      required this.price,
      required this.dressImage,
      required this.color, required this.dressSize,
        required this.status,
        required this.colorStatus,
        required this.isStatusShow,
        this.isItemVisible = false,
        this.isBagVisible = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.14,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.14,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: AppColors.grey.withOpacity(0.1),
                    child: Image.network(
                      dressImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dressName,
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey),
                      ),
                      Text(
                        dressType,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: AppColors.black1),
                      ),

                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Color: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                        color: AppColors.grey,
                                        fontSize: 11),
                                  ),

                                  Text(
                                    color,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                        color: AppColors.black1,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Text(price, textAlign: TextAlign.start,style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                                color: AppColors.black1
                              ),)
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Size: ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                        color: AppColors.grey,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    dressSize,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Roboto",
                                        color: AppColors.black1,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                          (index) => Icon(
                                        Icons.star,
                                        size: 16,
                                        color: AppColors.yellow,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    rateCount,
                                    style:
                                    TextStyle(fontSize: 12, color: AppColors.grey),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible:isBagVisible??false ,
            child: Positioned(
              bottom: -15,
              right: 00,
              child: Container(
                height: 40,
                width: 40,
                decoration:
                    BoxDecoration(color: AppColors.red1, shape: BoxShape.circle),
                child: Icon(
                  Icons.shopping_bag,
                  color: AppColors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.delete,
              color: AppColors.grey,
              size: 20,
            ),
          ),
          Visibility(
            visible: isStatusShow,
            child: Positioned(
              top: 5,
              left: 5,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                  color: colorStatus,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Text(
                      status,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                          fontSize: 11),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Visibility(
            visible: isItemVisible?? false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.14,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
                Text("Sorry, This item is currently sold out", style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: "Roboto",
                  fontSize: 11,
                  color: AppColors.grey
                ),)
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
