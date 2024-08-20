import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class PromoContainerItem extends StatelessWidget {
  final String offerType;
  final String promoCode;
  final String remainingDate;
  final String offerValue;
  final Color color;
  final Color offerColor;
  final String offerImage;
  const PromoContainerItem({super.key, required this.offerType, required this.promoCode, required this.remainingDate, required this.offerValue, required this.color, required this.offerColor, required this.offerImage,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(offerImage.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: color,
                  child: Image.network(
                    offerImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 70,
                    child: Row(
                      children: [
                        Text(offerValue, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: offerColor,
                          fontSize: 34,
                          fontFamily: "Roboto",
                        ),),
                        Column(
                          children:  [
                          Text("% \n off", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: offerColor,
                            fontSize: 14,
                            fontFamily: "Roboto",
                          ),)
                        ],)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(offerType, style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black1
                        ),),
                        const SizedBox(height: 5,),
                        Text(promoCode, style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black1
                        ),),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10,),
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(remainingDate,textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey
                        ),),
                        const SizedBox(height: 5,),
                        CommonButton(
                          buttonHeight: 36,
                          buttonWidth: MediaQuery.of(context).size.width*0.25,
                          borderRadius: 25,
                          labelColor: AppColors.white,
                          label: "Apply",
                          solidColor: AppColors.red1,
                        )

                      ],
                    ),
                  ),
            
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
