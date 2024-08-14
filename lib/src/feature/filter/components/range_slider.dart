import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:emart_express/src/feature/filter/controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RangeSliderComponent extends StatelessWidget {
  const RangeSliderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<FilterProvider>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sliderProvider.startValue.toString(),style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto",
                color: AppColors.black1
              ),),
              Text(sliderProvider.endValue.toString(),style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",
                  color: AppColors.black1
              ),)
            ],
          ),
        ),
        RangeSlider(
          activeColor: AppColors.red1,
          inactiveColor: AppColors.grey,
          values: RangeValues(sliderProvider.startValue, sliderProvider.endValue),
          min: 0,
          max: sliderProvider.maxValue,
          divisions: 500,
          onChanged: (RangeValues values) {
            sliderProvider.updateStartValue(values.start);
            sliderProvider.updateEndValue(values.end);
          },
        ),
        const SizedBox(height: 20,)
      ],
    );

  }
}
