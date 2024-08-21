import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class DeliveryMethodContainer extends StatelessWidget {
  const DeliveryMethodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 17,
              width: 61,
              child: Image.network("https://play-lh.googleusercontent.com/YtXTsa-6SaaMl02-OUo8iRztlX5Thu4aCLavunIV1M5hm9y4ySTPpMjpY44fL4ayz7Se",height: 17,width:61, fit: BoxFit.cover,),
            ),
            const SizedBox(height: 10,),
            Text("2-3 days", style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              color: AppColors.grey,
              fontSize: 11
            ),)
          ],
        ),
      ),


    );
  }
}
