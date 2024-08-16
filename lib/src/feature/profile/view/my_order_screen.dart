import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/common_components/common_header_text.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CommonHeader(
                  text: "",
                  isVisibleText: false,
                  isVisibleDivider: false,
                  icon: Icon(Icons.search, size: 30,),
              ),
              CommonHeaderText(text: "My Orders"),
            ],
          ),
        ),
      ),
    );
  }
}
