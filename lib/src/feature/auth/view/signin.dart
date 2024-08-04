import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/auth/component/common_header.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              CommonAuthHeader(
                  isVisible: true,
                  text: "Sign up"
              ),


        
        
            ],
          ),
        ),
      ),
    );
  }
}
