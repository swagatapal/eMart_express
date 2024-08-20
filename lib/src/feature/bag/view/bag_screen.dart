import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/common_components/common_header_text.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/bag/components/bag_buttom_appbar.dart';
import 'package:emart_express/src/feature/bag/components/promo_code_container.dart';
import 'package:emart_express/src/feature/bag/components/promo_container_item.dart';
import 'package:emart_express/src/feature/bag/controller/bag_controller.dart';
import 'package:emart_express/src/feature/shop/component/catalog_one_itemCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/bag_common_item.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context);
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
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: CommonHeaderText(
                text: 'My Bag',
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: bagProvider.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = bagProvider.items[index];
                    return MyBagCommonItem(item: item);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BagButtomAppbar(
        onClicked: () {
          showCustomModalBottomSheetOfferList(context);
        },
      ),
    );
  }

  void showCustomModalBottomSheetOfferList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.white1,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 80,
                    height: 4,
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(height: 20),
                PromoCodeContainer(),
                SizedBox(height: 20),
                Text(
                  "Your Promo Codes",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: AppColors.black1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child:index == 0? PromoContainerItem(
                            offerType: 'Personal offer',
                            promoCode: 'mypromocode2024',
                            remainingDate: '23 days remaining',
                            offerValue: '25',
                            color: AppColors.red1,
                            offerColor: AppColors.white,
                            offerImage:
                                'https://t3.ftcdn.net/jpg/02/82/58/80/360_F_282588077_TWISFkA7AfnDlmw4rafbInsVoBmG67VP.jpg',
                          ):index == 1?PromoContainerItem(
                            offerType: 'Personal offer',
                            promoCode: 'mypromocode2024',
                            remainingDate: '23 days remaining',
                            offerValue: '25',
                            color: AppColors.red1,
                            offerColor: AppColors.white,
                            offerImage:
                            'https://t3.ftcdn.net/jpg/02/82/58/80/360_F_282588077_TWISFkA7AfnDlmw4rafbInsVoBmG67VP.jpg',
                          ):PromoContainerItem(
                            offerType: 'Personal offer',
                            promoCode: 'mypromocode2024',
                            remainingDate: '23 days remaining',
                            offerValue: '25',
                            color: AppColors.red1,
                            offerColor: AppColors.white,
                            offerImage:
                            'https://t3.ftcdn.net/jpg/02/82/58/80/360_F_282588077_TWISFkA7AfnDlmw4rafbInsVoBmG67VP.jpg',
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
