import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/common_components/common_header_text.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/favourite/components/favourite_vertical_list_item.dart';
import 'package:emart_express/src/feature/favourite/controller/favourite_controller.dart';
import 'package:emart_express/src/feature/shop/component/catalog_two_filter_item.dart';
import 'package:emart_express/src/feature/shop/component/category_two_filter_section.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
   FavouriteScreen({super.key});

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
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonHeader(
                text: "",
                isVisibleText: false,
                isVisibleDivider: false,
            isVisibleBackIcon: false,
              icon: Icon(Icons.search, size: 30,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10),
              child: CommonHeaderText(text: "Favorites"),
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

            Consumer<FavouriteProvider>(
              builder: (context, filterProvider, child) {
                return CategoryTwoFilterSection(
                  text: filterProvider.selectedFilter,
                  rightIcon: 'assets/icons/Shape.png',
                  onClicked: () {
                    Navigator.pushNamed(context,'/FavouriteModule');
                  },
                  onArrowClicked: () {
                    showCustomModalBottomSheet(context);
                  },
                  onFilterClicked: (){
                    //Navigator.of(context, rootNavigator: true).pushNamed('/FilterScreen');
                  },
                );
              },
            ),

            CustomDivider(),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                    return index == 0? FavouriteVerticalListItem(
                      rateCount: '(110)',
                      dressName: 'T-Shirt',
                      dressType: 'Night Dress',
                      originalPrice: '20\$',
                      price: '15\$',
                      dressImage: "https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg",
                      color: "blue",
                      isStatusShow: true,
                      dressSize: 'L', status: 'New', colorStatus: AppColors.black,
                    ): index ==1?FavouriteVerticalListItem(
                      rateCount: '(110)',
                      dressName: 'T-Shirt',
                      dressType: 'Long sleeve Violeta',
                      originalPrice: '20\$',
                      price: '15\$',
                      color: "blue",
                      dressSize: 'L',
                      isStatusShow: false,
                      isItemVisible: true,
                      isBagVisible: false,
                      status: '-20 %', colorStatus: AppColors.red1,
                      dressImage: "https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-manei-2235071.jpg&fm=jpg",
                    ):index==2?FavouriteVerticalListItem(
                      rateCount: '(110)',
                      dressName: 'T-Shirt',
                      dressType: 'Night Dress',
                      originalPrice: '20\$',
                      price: '15\$',
                      color: "blue",
                      dressSize: 'L',
                      isStatusShow: true,
                      status: '-20 %', colorStatus: AppColors.red1,
                      dressImage: "https://images.pexels.com/photos/985635/pexels-photo-985635.jpeg?cs=srgb&dl=pexels-anne-363161-985635.jpg&fm=jpg",
                    ):FavouriteVerticalListItem(
                      rateCount: '(110)',
                      dressName: 'T-Shirt',
                      dressType: 'Night Dress',
                      originalPrice: '20\$',
                      price: '15\$',
                      color: "blue",
                      dressSize: 'L',
                      isStatusShow: false,
                      status: 'New', colorStatus: AppColors.black,
                      dressImage: "https://4.imimg.com/data4/EX/QR/MY-25863481/deededed-500x500.jpeg",
                    );
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
                child: Consumer<FavouriteProvider>(
                  builder: (context, filterProvider, child) {
                    return ListView.builder(
                      itemCount: filterItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        bool isSelected = filterItems[index] == filterProvider.selectedFilter;
                        return GestureDetector(
                          onTap: () {
                            filterProvider.setSelectedFilter(filterItems[index]);
                            Navigator.pop(context); // Close the bottom sheet
                          },
                          child: Container(
                            color: isSelected ? AppColors.red1 : Colors.transparent, // Red color for selected item
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                            child: Text(
                              filterItems[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                color: isSelected ? Colors.white : AppColors.black1, // White text for selected item
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
