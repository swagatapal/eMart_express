import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class HomeThirdMainPage extends StatelessWidget {
  const HomeThirdMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/main_page3.png",
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
                  bottom: 10,
                  right: 20,
                  child: Text(
                    "New collection",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      color: AppColors.white,
                      fontFamily: "Roboto",
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Center(
                        child: Text(
                          "Summer \nsale",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: AppColors.red1,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.asset(
                            "assets/images/main_page5.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 20,
                          child: Text(
                            "Black",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: AppColors.white,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    "assets/images/main_page4.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
