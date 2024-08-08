import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';

class SearchByTakingPhoto extends StatelessWidget {
  const SearchByTakingPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Search by taking a photo",
                isVisibleText: true)
          ],
        ),
      ),
    );
  }
}
