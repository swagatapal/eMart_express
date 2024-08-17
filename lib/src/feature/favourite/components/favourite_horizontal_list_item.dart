import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class FavouriteHorizontalListItem extends StatelessWidget {
  final String status;
  final Color colorStatus;
  final String rateCount;
  final String dressName;
  final String dressTime;
  final String originalPrice;
  final String offerPrice;
  final String dressImage;
  final String dressSize;
  final String dressColor;
  final bool? isStatusShow;
  final bool? isBagShow;
  final bool? isItemNotAvailable;
  const FavouriteHorizontalListItem({super.key,
    required this.status,
    required this.colorStatus,
    required this.rateCount,
    required this.dressName,
    required this.dressTime,
    required this.originalPrice,
    required this.offerPrice,
    required this.dressImage,
    required this.dressSize,
    required this.dressColor,
    this.isStatusShow,
    this.isBagShow, this.isItemNotAvailable});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.42,
                        color: AppColors.grey.withOpacity(0.1),
                        child: Image.network(
                          dressImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Visibility(
                      visible:isStatusShow??true ,
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
                      visible: isBagShow??true,
                      child: Positioned(
                        bottom: -20,
                        right: 00,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: AppColors.red1, shape: BoxShape.circle),
                          child: Icon(
                            Icons.shopping_bag,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                            (index) => Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.yellow,
                        ),
                      ),
                    ),
                    Text(
                      rateCount,
                      style: TextStyle(fontSize: 10, color: AppColors.grey),
                    )
                  ],
                ),
                Text(
                  dressName,
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: AppColors.grey),
                ),
                Text(
                  dressTime,
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black1),
                ),
                Row(

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
                          dressColor,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              color: AppColors.black1,
                              fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20,),
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
                  ],

                ),
                Row(
                  children: [
                    Text(
                      originalPrice,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      offerPrice,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: AppColors.red1,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Visibility(
            visible:isItemNotAvailable??false ,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10)

              ),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.42,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height * 0.16 ,
                    left: 10,
                    right: 10,
                    child: Text("Sorry, this item is currently sold out",maxLines:2,style: TextStyle(
                        fontSize: 11,
                        fontFamily: "Roboto",
                        color: AppColors.white,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle
              ),
              child: Icon(
                Icons.delete,
                color: AppColors.grey,
                size: 20,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
