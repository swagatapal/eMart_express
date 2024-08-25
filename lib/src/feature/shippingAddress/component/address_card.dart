import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/shippingAddress/controller/shipping_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressCard extends StatelessWidget {
  final String addressHolderName;
  final String address;
  final int index;
  const AddressCard({super.key, required this.addressHolderName, required this.address, required this.index});

  @override
  Widget build(BuildContext context) {
    final paymentCardController = Provider.of<ShippingAddressController>(context);
    return Container(

      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
            color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.25), // Shadow color
              offset: Offset(0, 4), // X and Y offsets
              blurRadius: 8, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ]
      ),child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(addressHolderName, style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: "Roboto",
                color: AppColors.black
              ),),

              Text("Edit", style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  fontFamily: "Roboto",
                  color: AppColors.red1
              ),),
            ],
          ),
          const SizedBox(height: 10,),
          Text(address,maxLines: 2, style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: "Roboto",
              color: AppColors.black1
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                checkColor: AppColors.white1,
                activeColor: AppColors.black1,
                value: paymentCardController.selectedCardIndex == index,
                onChanged: (bool? value) {
                  paymentCardController.toggleDefault(index);
                },
              ),
              Text(
                'Use as default payment method',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.black1,
                  fontFamily: "Roboto",
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
            ),
      ),
    );
  }
}
