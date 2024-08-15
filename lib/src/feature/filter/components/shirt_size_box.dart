import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShirtSizeBox extends StatelessWidget {
  final String text;
  const ShirtSizeBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    final sizeSelection = Provider.of<FilterProvider>(context);
    final isSelected = sizeSelection.isSelected(text);

    return Padding(
      padding: const EdgeInsets.only(top: 35.0, left: 20, bottom: 35),
      child: InkWell(
        onTap: (){
          sizeSelection.toggleSize(text);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: isSelected?AppColors.white:AppColors.grey, width: 2),
            color: isSelected ? AppColors.red1 : AppColors.white,

          ),
          child: Center(
            child: Text(text, style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: isSelected?AppColors.white:AppColors.black1
            ),),
          ),
        ),
      ),
    );
  }
}
