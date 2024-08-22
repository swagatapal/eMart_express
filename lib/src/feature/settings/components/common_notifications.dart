import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';
class CommonNotifications extends StatelessWidget {
  final String text;

  const CommonNotifications({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        fontFamily: "Roboto",
      ),
    );
  }
}
