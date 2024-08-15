import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/components/bottom_appbar.dart';
import 'package:emart_express/src/feature/filter/components/brand_item.dart';
import 'package:emart_express/src/feature/filter/components/search_bar.dart';
import 'package:flutter/material.dart';

class BrandSelectionScreen extends StatelessWidget {
  const BrandSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brand = ['adidas', 'adidas originals', 'Blend', 'Boutique Moschino', 'Champion','Diesel', 'Jack & Jones','Naf Naf','Red Valentino', 's.Oliver'];

    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(text: "Brand", 
                isVisibleText: true, 
                isVisibleDivider: true),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CommonSearchBar(),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: brand.length,
                  itemBuilder: (context, index) {
                    return BrandItem(text: brand[index]);
                  },
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppbar(),
    );
  }
}
