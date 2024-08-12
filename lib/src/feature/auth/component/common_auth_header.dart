import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonAuthHeader extends StatelessWidget {
  String text;
  bool isVisible = true;

  CommonAuthHeader({required this.isVisible, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible:isVisible ,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios, size: 30,color: AppColors.black1,)),
        ),
        const SizedBox(height: 20,),
        Text(text,
          style: TextStyle(
              fontWeight:FontWeight.bold,
              color: AppColors.black1,
              fontSize: 34,
              fontFamily: 'Roboto'
          ),)
      ],
    );
  }
}
