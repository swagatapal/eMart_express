import 'package:flutter/material.dart';

import '../../../core/helper/app_colors.dart';

class OrderInformation extends StatelessWidget {
  final String text1;
  final String text2;
  bool? isImageVisible;

  OrderInformation(
      {super.key,
      this.isImageVisible = false,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text(
              text1,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
                fontSize: 14.0,
                fontFamily: "Roboto",
              ),
            ),
          ),
          const SizedBox(width: 5.0),
          Expanded(
            child: Row(
              children: [
                isImageVisible == false
                    ? SizedBox()
                    : Image.network(
                        "https://www.shutterstock.com/image-vector/vinnytsia-ukraine-september-04-2023-260nw-2357100277.jpg",
                        height: 38,
                        width: 64,
                        fit: BoxFit.cover,
                      ),
                Expanded(
                  child: Text(
                    text2,
                    maxLines: 3,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.black1,
                      fontFamily: "Roboto",
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
