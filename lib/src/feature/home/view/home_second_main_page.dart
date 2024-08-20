import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/home/component/common_home_header.dart';
import 'package:emart_express/src/feature/home/component/common_item_card.dart';
import 'package:flutter/material.dart';

class HomeSecondMainPage extends StatelessWidget {
  const HomeSecondMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/main_page2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: AppColors.black1,
                        ))),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Text(
                    "Street clothes",
                    style: TextStyle(
                      fontSize: 34,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
              ],
            ),
            CommonHomeHeader(
              text1: "Sale",
              text2: "Super summer sale",
              text3: "View all",
              onClicked: () {
                Navigator.pushNamed(context, '/homeThirdMainPage');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return index == 0 ? CommonItemCard(
                      status: '-20 %',
                      colorStatus: AppColors.red1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/904117/pexels-photo-904117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',

                    ):
                    index == 1?CommonItemCard(
                      status: '-25 %',
                      colorStatus: AppColors.red1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/902030/pexels-photo-902030.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    ):CommonItemCard(
                      status: '-35 %',
                      colorStatus: AppColors.red1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg',
                    );
                  }),
            ),
            CommonHomeHeader(
              text1: "New",
              text2: "You've never seen it before!",
              text3: "View all",
              onClicked: () {
                Navigator.pushNamed(context, '/homeThirdMainPage');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return index == 0 ? CommonItemCard(
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/356170/pexels-photo-356170.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    ):
                    index == 1?CommonItemCard(
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/458669/pexels-photo-458669.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    ):CommonItemCard(
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/3014853/pexels-photo-3014853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
