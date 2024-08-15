import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonItemCard extends StatelessWidget {
  final String status;
  final Color colorStatus;
  final String rateCount;
  final String dressName;
  final String dressTime;
  final String originalPrice;
  final String offerPrice;
  final String dressImage;
  late Function()? onClicked;


   CommonItemCard(
      {super.key,
      required this.status,
      required this.colorStatus,
      required this.rateCount,
      required this.dressName,
      required this.dressTime,
      required this.originalPrice,
      required this.offerPrice,
        this.onClicked,
      required this.dressImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: InkWell(
        onTap: onClicked,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: AppColors.grey.withOpacity(0.1),
                      child: Image.network(
                        dressImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
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
                  Positioned(
                    bottom: -20,
                    right: 00,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: AppColors.white, shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite_border,
                        color: AppColors.grey,
                        size: 20,
                      ),
                    ),
                  )
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
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey),
              ),
              Text(
                dressTime,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black1),
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
      ),
    );
  }
}
