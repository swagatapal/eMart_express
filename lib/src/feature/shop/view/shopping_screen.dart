import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/shop/component/shop_category_card.dart';
import 'package:emart_express/src/feature/shop/component/women_tab.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  ), isVisibleDivider: true,),
              TabBar(
                indicatorColor: AppColors.red1,
                indicatorWeight: 4.0,
                automaticIndicatorColorAdjustment: false,
                labelColor: AppColors.black1,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: AppColors.grey.withOpacity(0.2 ),
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Roboto"
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 14,
                ),
                tabs: const [
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: const [
                    Center(
                      child: WomenTab()
                    ),
                    Center(
                      child: Text('Content for Men'),
                    ),
                    Center(
                      child: Text('Content for Kids'),
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
