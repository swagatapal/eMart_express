import 'package:emart_express/src/core/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bounce/bounce.dart';

class CommonButton extends StatelessWidget {
  final String? label;
  late Function()? onClicked;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final List<Color>? gradColor;
  final Color? borderColor;
  final double borderRadius;
  final Color? solidColor;
  final double? fontSize;
  final double? buttonHeight;
  final double? buttonWidth;
  final bool? isLoading;
  final bool? isBorderShadowVisible;

  CommonButton(
      {this.label,
        this.onClicked,
        this.labelColor,
        this.gradColor,
        this.solidColor,
        this.borderColor,
        this.borderRadius = 12.0,
        this.fontSize,
        this.buttonHeight = 50.0,
        this.buttonWidth,
        this.labelFontWeight,
        this.isLoading,
        this.isBorderShadowVisible = true,
        super.key});

  @override
  Widget build(BuildContext context) {
    return (isLoading ?? false)
        ? const Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.primaryButtonColor)))
        : Bounce(
        duration: const Duration(milliseconds: 200),
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
          if (onClicked != null) onClicked!();
        },
        child: Container(
          // alignment: Alignment.center,

          height: buttonHeight,
          width: buttonWidth,
          padding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
          decoration: BoxDecoration(
              gradient: solidColor == null
                  ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: gradColor ??
                      [
                        const Color(0xff00434C),
                        const Color(0xff00707E),
                      ])
                  : null,
              color: solidColor,
              border: borderColor != null
                  ? Border.all(
                color: borderColor!,
                width: 1.0,
              )
                  : null,
              borderRadius:
              BorderRadius.all(Radius.circular(borderRadius)),
            boxShadow:isBorderShadowVisible ?? true?  [
              BoxShadow(
                color: AppColors.red1.withOpacity(0.25), // Shadow color
                offset: Offset(0, 4), // X and Y offsets
                blurRadius: 8, // Blur radius
                spreadRadius: 0, // Spread radius
              ),
            ]:[],

          ),
          child: Center(
            child: Text(
              label ?? "",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: labelColor ?? AppColors.white,
                  fontFamily: 'Roboto',
                  fontSize: fontSize ?? 16,
                  fontWeight: labelFontWeight ?? FontWeight.w500),
            ),
          ),
        ));
  }
}