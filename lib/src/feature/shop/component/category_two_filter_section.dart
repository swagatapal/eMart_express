import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryTwoFilterSection extends StatelessWidget {
  late Function()? onClicked;
  late Function()? onArrowClicked;
  late Function()? onFilterClicked;
  final String rightIcon;
  final String text;
   CategoryTwoFilterSection({super.key,required this.text,this.onClicked,this.onArrowClicked,this.onFilterClicked, required this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 6, bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Row(
                children: [
                  InkWell(
                    onTap:onFilterClicked,
                      child: Icon(Icons.filter_list_sharp, size: 24,)),
                  SizedBox(width: 8,),
                  Text("Filters", style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    color: AppColors.black1
                  ),)
                ],
              ),

              Row(
                children: [
                  InkWell(
                    onTap: onArrowClicked,
                      child: Image.asset("assets/icons/up_down_arrow.png",height: 24,width: 24,)),
                  SizedBox(width: 8,),
                  Text(text, style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: AppColors.black1
                  ),)
                ],
              ),

              InkWell(
                onTap:onClicked,
                  child: Image.asset(rightIcon, height: 24,width: 24,))


            ],
          ),
        ),
      ),
    );
  }
}
