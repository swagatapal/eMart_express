import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/shop/component/catalog_common_item_card.dart';
import 'package:emart_express/src/feature/shop/component/catalog_two_filter_item.dart';
import 'package:emart_express/src/feature/shop/component/category_two_filter_section.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:emart_express/src/feature/shop/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopCatalogTwoScreen extends StatelessWidget {
   ShopCatalogTwoScreen({super.key});

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

            Consumer<ShopProvider>(
              builder: (context, shopProvider, child){
                return CategoryTwoFilterSection(
                  text: shopProvider.selectedFilter,
                  rightIcon: 'assets/icons/View.png',
                  onClicked: (){
                    Navigator.pop(context);
                  },
                  onArrowClicked: (){
                    showCustomModalBottomSheet(context);
                  },
                  onFilterClicked: (){
                    Navigator.of(context, rootNavigator: true).pushNamed('/FilterScreen');
                  },
                );
              }
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

  final List<String> filterItems = [
    "Popular",
    "Newest",
    "Customer Review",
    "Price: lowest to high",
    "Price: highest to low"
  ];

   void showCustomModalBottomSheet(BuildContext context) {
     showModalBottomSheet(
       context: context,
       backgroundColor: Colors.transparent, // Makes the sheet's background transparent
       builder: (BuildContext context) {
         return Container(
           height: MediaQuery.of(context).size.height * 0.37,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             color: AppColors.white, // Light grey background for the bottom sheet
             borderRadius: BorderRadius.only(
               topRight: Radius.circular(25),
               topLeft: Radius.circular(25),
             ),
           ),
           child: Column(
             children: [
               SizedBox(height: 15),
               Container(
                 width: 80,
                 height: 4,
                 color: AppColors.grey,
               ),
               SizedBox(height: 10),
               Text(
                 "Sort by",
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                   fontFamily: "Roboto",
                   color: AppColors.black1,
                 ),
               ),
               const SizedBox(height: 10,),
               Expanded(
                 child: Consumer<ShopProvider>(
                   builder: (context, filterProvider, child) {
                     return ListView.builder(
                       itemCount: filterItems.length,
                       itemBuilder: (BuildContext context, int index) {
                         bool isSelected = filterItems[index] == filterProvider.selectedFilter;
                         return GestureDetector(
                           onTap: () {
                             filterProvider.setSelectedFilter(filterItems[index]);
                             Navigator.pop(context);
                           },
                           child: Container(
                             color: isSelected ? AppColors.red1 : Colors.transparent,
                             padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                             child: Text(
                               filterItems[index],
                               style: TextStyle(
                                 fontSize: 16,
                                 fontFamily: "Roboto",
                                 fontWeight: FontWeight.w400,
                                 color: isSelected ? Colors.white : AppColors.black1,
                               ),
                             ),
                           ),
                         );
                       },
                     );
                   },
                 ),
               ),
             ],
           ),
         );
       },
     );
   }
}
