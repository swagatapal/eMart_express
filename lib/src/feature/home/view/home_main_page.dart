import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/home/component/common_home_header.dart';
import 'package:emart_express/src/feature/home/component/common_item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/main_page.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("Fashion \nsale",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                        fontFamily: "Roboto"
                    ),),
                    const SizedBox(height: 20,),
                    CommonButton(
                      label:"check",
                      labelColor: AppColors.white,
                      solidColor: AppColors.red,
                      borderRadius: 25,
                      buttonWidth: MediaQuery.of(context).size.width*0.45,
                      buttonHeight: 36,
                      onClicked: (){
                        Navigator.pushNamed(context,'/homeSecondMainPage');
                      },
                    )
                  ],
                ),
              )
            ]),
            const SizedBox(height: 20,),
            CommonHomeHeader(
                text1: "New",
                text2: "You've never seen it before!",
                text3: "View all"
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.33,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:(BuildContext context, int index){
                    return

                      index == 0 ? CommonItemCard(
                        onClicked: (){
                          Navigator.of(context, rootNavigator: true).pushNamed('/ProductDetailsScreen');
                        },
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://img.freepik.com/free-photo/curly-girl-beautiful-dress_144627-10112.jpg',
                    ):
                    index == 1?CommonItemCard(
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/902030/pexels-photo-902030.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    ):CommonItemCard(
                      status: 'New',
                      colorStatus: AppColors.black1,
                      rateCount: '(100)',
                      dressName: 'Dorothy perkins',
                      dressTime: 'Evening Dress',
                      originalPrice: '15\$',
                      offerPrice: '22\$',
                      dressImage: 'https://images.pexels.com/photos/904117/pexels-photo-904117.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    );
                  }),
            )
            

          ],
        ),
      ),
    );
  }
}
