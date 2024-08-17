import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class ProductNamePriceComponent extends StatelessWidget {
  final String text;
  final String text1;
  final String rateCount;
  final String price;
  final String description;
  const ProductNamePriceComponent({super.key, required this.text, required this.text1, required this.rateCount, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Roboto",
                  color: AppColors.black1,
                  fontWeight: FontWeight.bold
                ),),
                Text(text1, style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Roboto",
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500
                ),),
                const SizedBox(height: 5,),
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

              ],
            ),
            Text(price, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              fontSize: 28,
              color: AppColors.black1
            ),)
          ],
        ),
        const SizedBox(height: 10,),
        Text(description,
        maxLines: 2
          ,style: TextStyle(
          fontSize: 14,
          fontFamily: "Roboto",
          color: AppColors.black1,
          fontWeight: FontWeight.w500
        ),)
      ],
    );
  }
}
