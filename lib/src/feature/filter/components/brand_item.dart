import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrandItem extends StatelessWidget {
  final String text;
  const BrandItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final checkBoxSelection = Provider.of<FilterProvider>(context);
    final isSelected = checkBoxSelection.isSelectedBrandItem(text);    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isSelected?FontWeight.w700:FontWeight.w400,
            color: isSelected?AppColors.red1:AppColors.black1,
          ),
        ),
        Checkbox(
          value: checkBoxSelection.isSelectedBrandItem(text),
          onChanged: (bool? value) {
            checkBoxSelection.toggleSelection(text);
          },
          activeColor: AppColors.red1,
        ),
      ],
    );
  }
}
