import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/home/component/common_item_card.dart';
import 'package:emart_express/src/feature/productCard/component/Product_card_list_Item.dart';
import 'package:emart_express/src/feature/productCard/component/can_also_like_component.dart';
import 'package:emart_express/src/feature/productCard/component/favourite_container.dart';
import 'package:emart_express/src/feature/productCard/component/product_common_box.dart';
import 'package:emart_express/src/feature/productCard/component/product_name_price_component.dart';
import 'package:emart_express/src/feature/productCard/controller/product_controller.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
   ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "All",
      "Women",
      "Men",
      "Boys",
      "Girls",
      "Kids"
    ];

    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonHeader(
                text: "Short dress",
                isVisibleText: true,
                isVisibleDivider: false,
                icon: Icon(
                  Icons.share,
                  size: 30,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  onPageChanged: (page) {
                    productProvider.updatePage(page);
                  },
                  children: [
                    Image.network(
                      'https://www.shutterstock.com/image-photo/beautiful-model-long-red-dress-600nw-2224211961.jpg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                        'https://img.freepik.com/free-photo/young-woman-beautiful-red-dress_1303-17506.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1723334400&semt=ais_hybrid',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover),
                    Image.network(
                        'https://images.pexels.com/photos/2235071/pexels-photo-2235071.jpeg?cs=srgb&dl=pexels-manei-2235071.jpg&fm=jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildIndicator(productProvider),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCommonBox(
                      text: 'Size',
                      index: 0,
                      onClicked: () {
                        showCustomModalBottomSizeSheet(context);
                      },
                    ),
                    ProductCommonBox(
                      text: 'Black',
                      index: 1,
                      onClicked: () {
                        showCustomModalBottomColorSheet(context);
                      },
                    ),
                    FavouriteContainer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 20, right: 20, bottom: 10),
                child: ProductNamePriceComponent(
                  text: 'H&M',
                  text1: 'Short black dress',
                  rateCount: '(100)',
                  price: '\$19.99',
                  description:
                      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed",
                ),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CommonButton(
                  label: "ADD TO CART",
                  buttonWidth: MediaQuery.of(context).size.width,
                  solidColor: AppColors.red1,
                  labelColor: AppColors.white,
                  buttonHeight: 48,
                  borderRadius: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                child: Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: AppColors.black,
                ),
              ),
              ProductCardListItem(
                text: 'Shipping info',
              ),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProductCardListItem(
                text: 'Support',
              ),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              YouCanAlsoLikeComponent(
                itemCount: '12 items',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 0
                          ? CommonItemCard(
                              onClicked: () {
                                //Navigator.of(context, rootNavigator: true).pushNamed('/ProductDetailsScreen');
                              },
                              status: '-20 %',
                              colorStatus: AppColors.red1,
                              rateCount: '(100)',
                              dressName: 'Dorothy perkins',
                              dressTime: 'Evening Dress',
                              originalPrice: '15\$',
                              offerPrice: '22\$',
                              dressImage:
                                  'https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg',
                            )
                          : index == 1
                              ? CommonItemCard(
                                  status: 'New',
                                  colorStatus: AppColors.black1,
                                  rateCount: '(100)',
                                  dressName: 'Dorothy perkins',
                                  dressTime: 'Evening Dress',
                                  originalPrice: '15\$',
                                  offerPrice: '22\$',
                                  dressImage:
                                      'https://images.pexels.com/photos/902030/pexels-photo-902030.jpeg?auto=compress&cs=tinysrgb&w=1200',
                                )
                              : CommonItemCard(
                                  status: 'New',
                                  colorStatus: AppColors.black1,
                                  rateCount: '(100)',
                                  dressName: 'Dorothy perkins',
                                  dressTime: 'Evening Dress',
                                  originalPrice: '15\$',
                                  offerPrice: '22\$',
                                  dressImage:
                                      'https://images.pexels.com/photos/904117/pexels-photo-904117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                );
                    }),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIndicator(ProductProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: provider.currentPage == index ? 30 : 10,
          decoration: BoxDecoration(
            color: provider.currentPage == index ? AppColors.red1 : Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  void showCustomModalBottomColorSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor:
          Colors.transparent, // Makes the sheet's background transparent
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color:
                AppColors.white, // Light grey background for the bottom sheet
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
                "Select Color",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: AppColors.black1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }


  final List<String> sizes = ["XS", "S", "M", "L", "XL"];

   void showCustomModalBottomSizeSheet(BuildContext context) {
     showModalBottomSheet(
       context: context,
       backgroundColor: Colors.transparent,
       builder: (BuildContext context) {
         return Consumer<ProductProvider>(
           builder: (context, sizeSelection, child) {
             return Container(
               height: MediaQuery.of(context).size.height * 0.43,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 color: AppColors.white,
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
                     "Select size",
                     style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                       fontFamily: "Roboto",
                       color: AppColors.black1,
                     ),
                   ),
                   const SizedBox(height: 10),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     color: Colors.white,
                     child: Padding(
                       padding: const EdgeInsets.all(20),
                       child: Wrap(
                         spacing: 16.0,
                         runSpacing: 8.0,
                         children: sizes.map((size) {
                           final isSelected = sizeSelection.isSelectedSizes(size);
                           return ChoiceChip(
                             label: Text(size),
                             selected: isSelected,
                             padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                             onSelected: (selected) {
                               sizeSelection.toggleSizes(size);
                             },
                             selectedColor: AppColors.red1,
                             backgroundColor: AppColors.white,
                             labelStyle: TextStyle(
                               color: isSelected ? Colors.white : Colors.black,
                               fontWeight: FontWeight.w700,
                               fontFamily: "Roboto",
                               fontSize: 14,
                             ),
                           );
                         }).toList(),
                       ),
                     ),
                   ),
                   Divider(color: AppColors.grey.withOpacity(0.1),),

                   ProductCardListItem(text: 'Size info',),
                   Divider(color: AppColors.grey.withOpacity(0.1),),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: CommonButton(
                       label: "ADD TO CART",
                       buttonWidth: MediaQuery.of(context).size.width,
                       solidColor: AppColors.red1,
                       labelColor: AppColors.white,
                       buttonHeight: 48,
                       borderRadius: 25,
                     ),
                   ),

                 ],
               ),
             );
           },
         );
       },
     );
   }

}
