import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/home/component/common_item_card.dart';
import 'package:emart_express/src/feature/shop/component/catalog_common_item_card.dart';
import 'package:emart_express/src/feature/shop/component/catalog_two_filter_item.dart';
import 'package:emart_express/src/feature/shop/component/category_two_filter_section.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:flutter/material.dart';

class ShopCatalogTwoScreen extends StatelessWidget {
  const ShopCatalogTwoScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonHeader(
              text: "Women's " "tops",
              isVisibleText: true,
              isVisibleDivider: true,
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),

            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CatalogTwoFilterItem(
                      text: items[index],
                    );
                  }),
            ),

            CategoryTwoFilterSection(
              rightIcon: 'assets/icons/View.png',
              onClicked: (){
                Navigator.pop(context);
              },
            ),

            CustomDivider(),

            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 20),
                        child: index == 0
                            ? CatalogCommonItemCard(
                                status: 'New',
                                colorStatus: AppColors.black1,
                                rateCount: '(100)',
                                dressName: 'Dorothy perkins',
                                dressTime: 'Evening Dress',
                                originalPrice: '15\$',
                                offerPrice: '22\$',
                                dressImage:
                                    'https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg',
                              )
                            : index == 1
                                ? CatalogCommonItemCard(
                                    status: '-20%',
                                    colorStatus: AppColors.red1,
                                    rateCount: '(100)',
                                    dressName: 'Dorothy perkins',
                                    dressTime: 'Evening Dress',
                                    originalPrice: '15\$',
                                    offerPrice: '22\$',
                                    dressImage:
                                        'https://images.pexels.com/photos/902030/pexels-photo-902030.jpeg?auto=compress&cs=tinysrgb&w=1200',
                                  )
                                : CatalogCommonItemCard(
                                    status: 'New',
                                    colorStatus: AppColors.black1,
                                    rateCount: '(100)',
                                    dressName: 'Dorothy perkins',
                                    dressTime: 'Evening Dress',
                                    originalPrice: '15\$',
                                    offerPrice: '22\$',
                                    dressImage:
                                        'https://images.pexels.com/photos/904117/pexels-photo-904117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                  ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
