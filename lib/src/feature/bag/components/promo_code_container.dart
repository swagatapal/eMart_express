import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class PromoCodeContainer extends StatelessWidget {
  late Function()? onClicked;

   PromoCodeContainer({super.key, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Adjust width for padding
      padding: const EdgeInsets.only(left: 25.0), // Padding inside the container
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            offset: Offset(0, 4), // Offset of the shadow
            blurRadius: 8, // Blur radius
            spreadRadius: 0, // Spread radius
          ),
        ],
      ),
      child: Row(
        children:  [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your promo code',
                hintStyle: TextStyle(color: AppColors.grey),
                border: InputBorder.none, // Removes the border
                contentPadding: EdgeInsets.all(0), // Padding inside the text field
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black

            ),
            child: InkWell(
                onTap: onClicked,
                child: Icon(Icons.arrow_forward, size: 20,color: AppColors.white,)),

          )
        ],
      ),
    );
  }
}
