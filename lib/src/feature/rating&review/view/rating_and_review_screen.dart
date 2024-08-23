import 'package:flutter/material.dart';

import '../../../core/common_components/common_header.dart';
import '../../../core/common_components/common_header_text.dart';
import '../../../core/helper/app_colors.dart';
import '../components/common_rating_widget.dart';

class RatingAndReview extends StatelessWidget {
  const RatingAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonHeader(
            text: "",
            isVisibleText: true,
            isVisibleDivider: true,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CommonHeaderText(text: "Rating&Reviews"),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Column(
                children: [
                  CommonHeaderText(
                    text: "4.3",
                    fontSize: 34.0,
                  ),
                  Text(
                    "23 ratings",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: AppColors.grey,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CommonRatingWidget(starCount: 5, ratingCount: 12),
                  // CommonRatingWidget(starCount: 4, ratingCount: 5),
                  // CommonRatingWidget(starCount: 3, ratingCount: 4),
                  // CommonRatingWidget(starCount: 2, ratingCount: 2),
                  CommonRatingWidget(starCount: 1, ratingCount: 1),
                ],
              ),

            ],
          )
          // Padding(
          //   padding: const EdgeInsets.only(left: 20.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: const [
          //       Column(
          //         children: [
          //           CommonHeaderText(
          //             text: "4.3",
          //             fontSize: 34.0,
          //           ),
          //           Text(
          //             "23 ratings",
          //             style: TextStyle(
          //               fontSize: 12.0,
          //               fontFamily: 'Roboto',
          //               color: AppColors.grey,
          //             ),
          //           )
          //         ],
          //       ),
          //       Column(
          //         // crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           CommonRatingWidget(
          //               starCount: 5, ratingCount: 12, maxRatingCount: 12),
          //           CommonRatingWidget(
          //               starCount: 4, ratingCount: 8, maxRatingCount: 12),
          //           CommonRatingWidget(
          //               starCount: 3, ratingCount: 6, maxRatingCount: 12),
          //           CommonRatingWidget(
          //               starCount: 2, ratingCount: 4, maxRatingCount: 12),
          //           CommonRatingWidget(
          //               starCount: 1, ratingCount: 2, maxRatingCount: 12),
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      )),
    );
  }
}
