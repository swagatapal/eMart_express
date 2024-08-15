import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Adjust the height as needed
      width: MediaQuery.of(context).size.width, // Adjust width for padding
      padding: const EdgeInsets.symmetric(horizontal: 15.0), // Padding inside the container
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            offset: Offset(0, 4), // Offset of the shadow
            blurRadius: 8, // Blur radius
            spreadRadius: 0, // Spread radius
          ),
        ],
      ),
      child: Row(
        children: const [
          Icon(Icons.search, size: 24, color: AppColors.grey), // Icon inside the search bar
          SizedBox(width: 10), // Space between the icon and text field
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: AppColors.grey),
                border: InputBorder.none, // Removes the border
                contentPadding: EdgeInsets.all(0), // Padding inside the text field
              ),
            ),
          ),
        ],
      ),
    );
  }
}
