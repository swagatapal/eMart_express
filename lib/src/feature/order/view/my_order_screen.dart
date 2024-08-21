import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/common_components/common_header_text.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import '../component/order_filter_item.dart';
import '../component/order_item_card.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Delivered", "Processing", "Cancelled"];

    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonHeader(
                text: "",
                isVisibleText: false,
                isVisibleDivider: false,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CommonHeaderText(text: "My Orders"),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return OrderFilterItem(
                        text: items[index],
                      );
                    }),
              ),
              SizedBox(height: 20.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: OrderItemCard(
                            date: "05-12-2019",
                            orderNo: "1546451",
                            quantity: "2",
                            totalAmount: "112\$",
                            trackingNumber: "IWQ2546532456",
                            onClicked: () {
                              Navigator.pushNamed(context,  '/OrderDetailsScreen');
                            }
                          ),
                        );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
