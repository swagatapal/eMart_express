import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  Future<void> _pickImage(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      Navigator.pushNamed(
        context, '/SearchByTakingPhoto',
        arguments: File(pickedFile.path),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonHeader(
                text: "Visual Search",
                isVisibleText: true,
                isVisibleDivider: false,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/visual_search.png",
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        Text(
                          "Search for an outfit by taking a photo or uploading an image",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(height: 30),
                        CommonButton(
                          onClicked: () {
                            _pickImage(context);
                          },
                          label: "TAKE A PHOTO",
                          solidColor: AppColors.red1,
                          borderRadius: 25,
                          buttonHeight: 48,
                        ),
                        const SizedBox(height: 20),
                        CommonButton(
                          label: "UPLOAD AN IMAGE",
                          solidColor: Colors.transparent.withOpacity(0.1),
                          borderRadius: 25,
                          buttonHeight: 48,
                          borderColor: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
