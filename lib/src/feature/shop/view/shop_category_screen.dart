import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

import '../component/shop_category_item.dart';

class ShopCategoryScreen extends StatelessWidget {
  const ShopCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Tops",
      "Shirts & Blouses",
      "Cardigans & Sweaters",
      "Knitwear",
      "Blazers",
      "Outerwear",
      "Pants",
      "Jeans",
      "Shorts",
      "Skirts",
      "Dresses"
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Categories",
                isVisibleText: true,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                isVisibleDivider: true),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonButton(
                    labelColor: AppColors.white,
                    label: "VIEW ALL ITEMS",
                    solidColor: AppColors.red1,
                    borderRadius: 25,
                    buttonHeight: 48,
                    fontSize: 14,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Choose category",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        color: AppColors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ShopCategoryItem(
                        text: items[index],
                        onClicked: () {
                          Navigator.pushNamed(context, '/shopCatalogOneScreen');
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
