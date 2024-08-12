import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0,
      decoration: BoxDecoration(
        color: Colors.grey, // Divider color
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.12), // Shadow color and opacity
            spreadRadius: 0, // How much the shadow spreads
            blurRadius: 12, // How blurred the shadow is
            offset: Offset(0, 4), // Horizontal and vertical offset
          ),
        ],
      ),
    );
  }
}
