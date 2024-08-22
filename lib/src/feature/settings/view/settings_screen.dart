import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonHeader(
                text: "Settings",
                isVisibleText: true,
                isVisibleDivider: true,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
