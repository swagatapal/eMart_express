import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/shop/component/catalog_one_itemCard.dart';
import 'package:emart_express/src/feature/shop/component/catalog_two_filter_item.dart';
import 'package:emart_express/src/feature/shop/component/category_two_filter_section.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:flutter/material.dart';

class ShopCatalogOneScreen extends StatelessWidget {
  const ShopCatalogOneScreen({super.key});

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonHeader(
              text: "",
              isVisibleText: false,
              isVisibleDivider: true,
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text("Women's top", style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: AppColors.black1
              ),),
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
              rightIcon: 'assets/icons/Shape.png',
              onClicked: (){
                Navigator.pushNamed(context, '/shopCatalogTwoScreen');
              },
            ),

            CustomDivider(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                  return index == 0? CatalogOneItemCard(
                         rateCount: '(110)',
                    dressName: 'T-Shirt',
                    dressType: 'Night Dress',
                    originalPrice: '20\$',
                    offerPrice: '15\$',
                    dressImage: "https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg",
                  ): index ==1?CatalogOneItemCard(
                    rateCount: '(110)',
                    dressName: 'T-Shirt',
                    dressType: 'Night Dress',
                    originalPrice: '20\$',
                    offerPrice: '15\$',
                    dressImage: "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-manei-2235071.jpg&fm=jpg",
                  ):index==2?CatalogOneItemCard(
                    rateCount: '(110)',
                    dressName: 'T-Shirt',
                    dressType: 'Night Dress',
                    originalPrice: '20\$',
                    offerPrice: '15\$',
                    dressImage: "https://images.pexels.com/photos/985635/pexels-photo-985635.jpeg?cs=srgb&dl=pexels-anne-363161-985635.jpg&fm=jpg",
                  ):CatalogOneItemCard(
                    rateCount: '(110)',
                    dressName: 'T-Shirt',
                    dressType: 'Night Dress',
                    originalPrice: '20\$',
                    offerPrice: '15\$',
                    dressImage: "https://4.imimg.com/data4/EX/QR/MY-25863481/deededed-500x500.jpeg",
                  );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
