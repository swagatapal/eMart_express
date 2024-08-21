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

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                  isVisible: false,
                  text: "Login",
                ),
                SizedBox(height: ScreenUtils().screenHeight(context) * 0.1),
                const SizedBox(height: 20),
                CommonTextFormField(
                  controller: authController.emailController,
                  labelText: "Email",
                  suffixIcon: authController.isEmailValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updateEmail(),

                ),
                const SizedBox(height: 20),
                CommonTextFormField(
                  controller: authController.passwordController,
                  labelText: "Password",
                  suffixIcon: authController.isPasswordValid ? "correct_icon" : null,
                  onValueChanged: (value) => authController.updatePassword(),

                ),
                const SizedBox(height: 20,),
                CommonText(
                  text: "Forgot your password ?",
                  onClicked: (){
                    Navigator.pushNamed(context, '/ForgotPassword');
                  },
                ),
                const SizedBox(height: 36,),
                CommonButton(
                  onClicked: (){
                    Navigator.pushNamed(context, '/VisualSearch');
                  },
                  solidColor: AppColors.red,
                  label: "LOGIN",
                  buttonHeight: 48,
                  borderRadius: 25,
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.25,),
                CommonSocialLogin(
                  text: "Or login with social account",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
