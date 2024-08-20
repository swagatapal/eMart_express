import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/bag/components/icon_button_container.dart';
import 'package:emart_express/src/feature/bag/controller/bag_controller.dart';
import 'package:emart_express/src/feature/bag/model/bag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyBagCommonItem extends StatelessWidget {
  late Function()? onClicked;
  final BagItem item;

   MyBagCommonItem(
      {super.key, required this.item,this.onClicked

      });

  @override
  Widget build(BuildContext context) {
    final bagProvider = Provider.of<BagProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.15,
            //height: 110,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.25), // Shadow color
                    offset: Offset(0, 4), // X and Y offsets
                    blurRadius: 8, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ]

            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: AppColors.grey.withOpacity(0.1),
                    child: Image.network(
                      item.dressImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.dressName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: AppColors.black1,
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Color: ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: item.color,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.black1,
                                        fontFamily: "Roboto",
                                        fontSize: 11)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Size: ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                    text: item.size,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.black1,
                                        fontFamily: "Roboto",
                                        fontSize: 11)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 36,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Row(
                              children: [
                                IconButtonContainer(
                                  icon: Icons.remove,
                                  onClicked: (){
                                    bagProvider.decrementItem(item.id);                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  item.itemCount.toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black1),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButtonContainer(
                                  icon: Icons.add,
                                  onClicked: (){
                                    bagProvider.incrementItem(item.id);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Text(
                              "${item.itemCount * item.pricePerItem}\$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: AppColors.black1,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child:PopupMenuButton<String>(
                icon: Icon(Icons.more_vert, size: 20, color: AppColors.grey),
                onSelected: (value) {

                },
                color: AppColors.white,
                itemBuilder: (BuildContext context) {
                  return [
                    _buildPopupMenuItem('Add to favourites'),
                    PopupMenuDivider(height: 1,),
                    _buildPopupMenuItem('Delete from the list'),
                  ];
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
    )
        ],
      ),
    );
  }
  PopupMenuItem<String> _buildPopupMenuItem(String text) {
    return PopupMenuItem<String>(
      value: text,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Text(text,textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontFamily: "Roboto", color: AppColors.black1)),
      ),
    );
  }

}
