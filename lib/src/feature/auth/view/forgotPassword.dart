import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/core/helper/screen_utils.dart';
import 'package:emart_express/src/feature/auth/component/common_header.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:emart_express/src/feature/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonAuthHeader(
                  isVisible: true,
                  text: "Forgot password",
                ),
                SizedBox(height: ScreenUtils().screenHeight(context) * 0.1),
                Text(
                  "Please enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black1,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(height: 20),
                CommonTextFormField(
                  controller: authController.emailController,
                  labelText: "Email",
                  suffixIcon:
                      authController.isEmailValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updateEmail(),
                ),
                const SizedBox(
                  height: 60,
                ),
                CommonButton(
                  onClicked: () {
                    Navigator.pop(context);
                  },
                  solidColor: AppColors.red,
                  label: "SEND",
                  buttonHeight: 48,
                  borderRadius: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
