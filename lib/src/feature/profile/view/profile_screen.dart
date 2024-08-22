import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/common_components/common_header_text.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/profile/component/profile_details_item.dart';
import 'package:emart_express/src/feature/profile/component/profile_image_component.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
                isVisibleBackIcon: false,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CommonHeaderText(text: "My Profile"),
              ),
              ProfileImageComponent(),
              ProfileDetailsItem(
                text: 'My Orders',
                text1: 'Already have 12 orders',
                onClicked: () {
                  Navigator.pushNamed(context, '/MyOrderScreen');
                },
              ),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProfileDetailsItem(text: "Shipping Address", text1: "3 dress"),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProfileDetailsItem(text: "Payment Methods", text1: "Visa **345"),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProfileDetailsItem(
                  text: "Promo-codes", text1: "You have special promo codes"),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProfileDetailsItem(
                  text: "My reviews", text1: "Reviews for 4 items"),
              Divider(
                color: AppColors.grey.withOpacity(0.1),
              ),
              ProfileDetailsItem(
                text: "Settings",
                text1: "Notification, password",
                onClicked: () {
                  Navigator.pushNamed(context, '/SettingsScreen');
                },
              ),
              const SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
