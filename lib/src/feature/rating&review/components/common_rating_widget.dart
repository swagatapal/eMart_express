import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CommonRatingWidget extends StatelessWidget {
  final int starCount;
  final int ratingCount;
  final int maxRatingCount;

  const CommonRatingWidget(
      {super.key,
      required this.starCount,
      required this.ratingCount,
      this.maxRatingCount = 15});

  @override
  Widget build(BuildContext context) {
    double percentage = ratingCount / maxRatingCount;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          ' *' * starCount,
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(width: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.4,
                child: LinearProgressIndicator(
                  value: percentage,
                  backgroundColor: AppColors.white1,
                  color: Colors.red,
                  minHeight: 10,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text('$ratingCount'),
          ],
        ),
      ],
    );
  }
}
