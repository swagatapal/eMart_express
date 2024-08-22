import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/common_components/common_header_text.dart';
import '../../../core/helper/app_colors.dart';
import '../components/common_notifications.dart';
import '../controller/toggle_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final toggleProvider = Provider.of<ToggleProvider>(context);

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
                isVisibleText: true,
                isVisibleDivider: true,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: CommonHeaderText(text: "Settings"),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: CommonHeaderText(
                  text: "Personal Information",
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CommonTextFormField(
                      labelText: "Full name",
                      suffixIcon: null,
                    ),
                    const SizedBox(height: 20.0),
                    CommonTextFormField(
                      labelText: "Date of Birth",
                      suffixIcon: null,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    CommonHeaderText(
                      text: "Password",
                      fontSize: 18.0,
                    ),
                    InkWell(
                      onTap: (){
                        showChangePasswordCustomModalBottomSheet(context);
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CommonTextFormField(
                  labelText: "Password",
                  suffixIcon: null,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: CommonHeaderText(
                  text: "Notifications ",
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonNotifications(
                      text: "Sales",
                    ),
                    CupertinoSwitch(
                        value: toggleProvider.getSwitchValue(0),
                        onChanged: (value) {
                          toggleProvider.toggleSwitch(0, value);
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonNotifications(
                      text: "New arrivals",
                    ),
                    CupertinoSwitch(
                        value: toggleProvider.getSwitchValue(1),
                        onChanged: (value) {
                          toggleProvider.toggleSwitch(1,value);
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonNotifications(
                      text: "Delivery status changes",
                    ),
                    CupertinoSwitch(
                        value: toggleProvider.getSwitchValue(2),
                        onChanged: (value) {
                          toggleProvider.toggleSwitch(2,value);
                        },
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }


  void showChangePasswordCustomModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent, // Makes the sheet's background transparent
      isScrollControlled: false, // Allows the bottom sheet to take up more space
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false, // Ensures the sheet is not full screen initially
          builder: (context, scrollController) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.white, // Light grey background for the bottom sheet
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Makes the content take up minimal space
                  children: [
                    SizedBox(height: 15),
                    Container(
                      width: 80,
                      height: 4,
                      color: AppColors.grey,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Password change",
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CommonTextFormField(
                            labelText: "Old password",
                            suffixIcon: null,
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                color: AppColors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          CommonTextFormField(
                            labelText: "New password",
                            suffixIcon: null,
                          ),
                          const SizedBox(height: 20),
                          CommonTextFormField(
                            labelText: "Repeat new password",
                            suffixIcon: null,
                          ),
                          const SizedBox(height: 20),
                          CommonButton(
                            label: "SAVE PASSWORD",
                            labelColor: AppColors.white,
                            solidColor: AppColors.red1,
                            buttonWidth: MediaQuery.of(context).size.width,
                            buttonHeight: 48,
                            borderRadius: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }





}
