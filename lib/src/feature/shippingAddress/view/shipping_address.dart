import 'package:emart_express/src/core/common_components/common_header.dart';
import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/shippingAddress/component/address_card.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
        child: Column(
          children: [
            CommonHeader(
                text: "Shipping Address",
                isVisibleText: true,
                isVisibleDivider: true
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                      child: AddressCard(
                        addressHolderName: "John Doe",
                        address: '3 Newbridge Court Chino Hills, CA 91709, United States',
                        index: index,
                      ),
                    );
                  }),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.black1,
        child: Icon(Icons.add, color: Colors.white, size: 30),
        onPressed: () {
          Navigator.pushNamed(context, '/AddingShippingAddress');
        },
      ),
    );
  }
}
