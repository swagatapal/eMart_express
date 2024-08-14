import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/components/common_filter_header.dart';
import 'package:emart_express/src/feature/filter/components/range_slider.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.cyan,
      Colors.purple,
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        final isSelected = colorProvider.selectedColors.contains(color);
          
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
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width,
                color: AppColors.white,
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
