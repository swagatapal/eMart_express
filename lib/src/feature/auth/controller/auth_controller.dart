import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void updateName() {
    notifyListeners();
  }

  void updateEmail() {
    notifyListeners();
  }

  void updatePassword() {
    notifyListeners();
  }

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool get isNameValid => nameController.text.length > 4;
  bool get isEmailValid => emailController.text.length > 10;
  bool get isPasswordValid => passwordController.text.length > 4;
}
