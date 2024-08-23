import 'package:emart_express/src/core/common_components/common_button.dart';
import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/checkout/components/account_holder_details.dart';
import 'package:emart_express/src/feature/checkout/components/balance_list.dart';
import 'package:emart_express/src/feature/checkout/components/delivery_method_container.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonHeader(
                  text: "Checkout",
                  isVisibleText: true,
                  isVisibleDivider: true),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shipping address",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: AppColors.black1),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AccountHolderDetails(
                      accountHolderName: 'Jane Doe',
                      address:
                          '3 Newbridge Court \n Chino Hilis, CA 97109, United States',
                      onClicked: (){
                        Navigator.pushNamed(context, '/ShippingAddress');
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text(
                                "Payment",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto",
                                    color: AppColors.black1,
                                    fontSize: 18),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/PaymentMethodScreen');
                                },
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto",
                                      color: AppColors.red1,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://www.shutterstock.com/image-vector/vinnytsia-ukraine-september-04-2023-260nw-2357100277.jpg",
                                height: 38,
                                width: 64,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "**** **** **** ",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grey),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: "3947",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.black1,
                                            fontFamily: "Roboto",
                                            fontSize: 11)),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Delivery method",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          color: AppColors.black1,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 10),
                                child: DeliveryMethodContainer(),
                              );
                            })),
                    const SizedBox(
                      height: 50,
                    ),
                    BalanceList(text: 'Order: ', price: '112\$'),
                    const SizedBox(
                      height: 10,
                    ),
                    BalanceList(text: 'Delivery: ', price: '15\$'),
                    const SizedBox(
                      height: 10,
                    ),
                    BalanceList(text: 'Summary: ', price: '127\$'),
                    const SizedBox(
                      height: 30,
                    ),
                    CommonButton(
                      label: "SUBMIT ORDER",
                      labelColor: AppColors.white,
                      solidColor: AppColors.red1,
                      borderRadius: 25,
                      buttonHeight: 48,
                      onClicked: (){
                        Navigator.pushNamed(context, '/OrderSuccess');

                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
