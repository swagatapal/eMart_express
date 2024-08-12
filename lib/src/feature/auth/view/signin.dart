import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/core/helper/screen_utils.dart';
import 'package:emart_express/src/feature/auth/component/common_auth_header.dart';
import 'package:emart_express/src/feature/auth/component/common_inputfield.dart';
import 'package:emart_express/src/feature/auth/component/common_socialLogin.dart';
import 'package:emart_express/src/feature/auth/component/common_text.dart';
import 'package:emart_express/src/feature/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                  text: "Sign up",
                ),
                SizedBox(height: ScreenUtils().screenHeight(context) * 0.1),
                CommonTextFormField(
                  controller: authController.nameController,
                  labelText: "Name",
                  suffixIcon:
                      authController.isNameValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updateName(),
                ),
                const SizedBox(height: 20),
                CommonTextFormField(
                  controller: authController.emailController,
                  labelText: "Email",
                  suffixIcon:
                      authController.isEmailValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updateEmail(),
                ),
                const SizedBox(height: 20),
                CommonTextFormField(
                  controller: authController.passwordController,
                  labelText: "Password",
                  suffixIcon:
                      authController.isPasswordValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updatePassword(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonText(
                  text: "Already have an account ?",
                  onClicked: () {
                    Navigator.pushNamed(context, '/LogIn');
                  },
                ),
                const SizedBox(
                  height: 36,
                ),
                CommonButton(
                  onClicked: () {
                    Navigator.pushNamed(context, '/VisualSearch');
                  },
                  solidColor: AppColors.red,
                  label: "SIGN UP",
                  buttonHeight: 48,
                  borderRadius: 25,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                CommonSocialLogin(
                  text: "Or sign up with social account",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
