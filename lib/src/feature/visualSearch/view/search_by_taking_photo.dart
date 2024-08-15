import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:flutter/material.dart';

class SearchByTakingPhoto extends StatefulWidget {
  const SearchByTakingPhoto({super.key});

  @override
  State<SearchByTakingPhoto> createState() => _SearchByTakingPhotoState();
}

class _SearchByTakingPhotoState extends State<SearchByTakingPhoto> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _takePhoto() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
              text: "Search by taking a photo",
              isVisibleText: true,
              isVisibleDivider: false,
            ),
            Expanded(
              child: Center(
                child: _image == null
                    ? Text('No image selected.')
                    : Image.file(_image!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/CropItem');
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePhoto,
        backgroundColor: Colors.red,
        shape: CircleBorder(),
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
      ),
    );
  }
}
