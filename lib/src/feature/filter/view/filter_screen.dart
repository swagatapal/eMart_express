import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/components/bottom_appbar.dart';
import 'package:emart_express/src/feature/filter/components/common_filter_header.dart';
import 'package:emart_express/src/feature/filter/components/range_slider.dart';
import 'package:emart_express/src/feature/filter/components/shirt_size_box.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:emart_express/src/feature/shop/component/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categorySelection = Provider.of<FilterProvider>(context);

    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.cyan,
      Colors.purple,
    ];
    final List<String> sizes = ["XS", "S", "M", "L", "XL"];

    final List<String> categories = [
      "All",
      "Women",
      "Men",
      "Boys",
      "Girls",
      "Kids"
    ];
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonHeader(
                  text: "Filters", isVisibleText: true, isVisibleDivider: true),
              CommonFilterHeader(
                text: 'Price range',
              ),
              Material(color: AppColors.white, child: RangeSliderComponent()),
              CommonFilterHeader(
                text: 'Colors',
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.white,
                  child: Consumer<FilterProvider>(
                      builder: (context, colorProvider, child) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (BuildContext context, int index) {
                        final color = colors[index];
                        final isSelected =
                            colorProvider.selectedColors.contains(color);

                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              colorProvider.toggleColorSelection(color);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color,
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.black
                                      : Colors.transparent,
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  })),
              CommonFilterHeader(
                text: 'Sizes',
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                color: AppColors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sizes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ShirtSizeBox(
                        text: sizes[index],
                      );
                    }),
              ),
              CommonFilterHeader(
                text: 'Category',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 12.0, // Space between chips
                    runSpacing: 4.0, // Space between rows
                    children: categories.map((category) {
                      final isSelected =
                          categorySelection.isSelectedCategory(category);
                      return ChoiceChip(
                        label: Text(category),
                        selected: isSelected,
                        onSelected: (selected) =>
                            categorySelection.toggleCategory(category),
                        selectedColor: AppColors.red1,
                        backgroundColor: AppColors.white,
                        showCheckmark: true,
                        checkmarkColor:AppColors.white1 ,
                        labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Roboto",
                            fontSize: 14),
                      );
                    }).toList(),
                  ),
                ),
              ),
              CustomDivider(),


              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Brand", style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: AppColors.black1
                        ),),
                        Text("adidas Originals, Jack & Jones, s.Oliver", style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            color: AppColors.grey
                        ),)
                      ],
                    ),

                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/BrandSelectionScreen');
                        },
                        child: Icon(Icons.arrow_forward_ios, size: 30,)),
                  ],
                ),
              )



            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppbar(),
    );
  }
}
