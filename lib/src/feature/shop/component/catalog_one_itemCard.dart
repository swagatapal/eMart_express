import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CatalogOneItemCard extends StatelessWidget {
  final String rateCount;
  final String dressName;
  final String dressType;
  final String originalPrice;
  final String offerPrice;
  final String dressImage;
  const CatalogOneItemCard(
      {super.key,
      required this.rateCount,
      required this.dressName,
      required this.dressType,
      required this.originalPrice,
      required this.offerPrice,
      required this.dressImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            color: AppColors.white,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: AppColors.grey.withOpacity(0.1),
                    child: Image.network(
                      dressImage,
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
                        dressName,
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black1),
                      ),
                      Text(
                        dressType,
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey),
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
                )
              ],
            ),
          ),
          Positioned(
            bottom: -20,
            right: 00,
            child: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.favorite_border,
                color: AppColors.grey,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
