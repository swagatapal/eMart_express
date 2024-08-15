import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';


class SearchByTakingPhoto extends StatefulWidget {
  const SearchByTakingPhoto({super.key});

  @override
  State<SearchByTakingPhoto> createState() => _SearchByTakingPhotoState();
}

class _SearchByTakingPhotoState extends State<SearchByTakingPhoto> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Search by taking a photo",
                isVisibleText: true, isVisibleDivider: false,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/CropItem');
            }, child:Text("Next Page demo") )
          ],
        ),
      ),
    );
  }
}
