import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';

class ShopCategoryCard extends StatelessWidget {
  final String categoryItemName;
  final String imageUrl;
  late Function()? onClicked;

  ShopCategoryCard({super.key,this.onClicked, required this.categoryItemName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 200),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: InkWell(
          onTap: onClicked,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width-40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.08), // Shadow color
                    offset: Offset(0, 1), // X and Y offsets
                    blurRadius: 25, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: (MediaQuery.of(context).size.width-40)*0.5,
                    child: Center(
                      child: Text(categoryItemName, style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Roboto",
                        color: AppColors.black1,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: (MediaQuery.of(context).size.width-40) *0.5,
                    child: Image.network(imageUrl,fit: BoxFit.cover,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
