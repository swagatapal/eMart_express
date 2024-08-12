import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';

class CropItem extends StatelessWidget {
  const CropItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Crop the item",
                isVisibleText: true, isVisibleDivider: false,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/VisualSearchFinding');
            }, child: Text("Finding Page"))
          ],
        ),
      ),
    );
  }
}
