import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/productCard/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCommonBox extends StatelessWidget {
  final String text;
  late Function()? onClicked;
  final int index;

   ProductCommonBox({super.key, required this.text, this.onClicked, required this.index});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return InkWell(
      onTap: () {
        if (productProvider.selectedBoxIndex == index) {
          productProvider.deselectBox();
        } else {
          productProvider.selectBox(index);
        }
        if (onClicked != null) {
          onClicked!();
        }
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: productProvider.selectedBoxIndex == index ? Colors.red : AppColors.grey,
              width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text(text, style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto",
                fontSize: 14,
                color: AppColors.black1
              ),),
              Icon(Icons.keyboard_arrow_down, size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
