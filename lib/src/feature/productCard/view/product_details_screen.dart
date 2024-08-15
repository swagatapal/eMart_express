import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Short dress",
                isVisibleText: true,
                isVisibleDivider: false,
                icon: Icon(Icons.share, size: 30,),
            )
          ],
        ),
      ),
    );
  }
}
