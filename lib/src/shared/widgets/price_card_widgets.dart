import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class PriceCardWidget extends StatelessWidget {
  final String previousPrice;
  final String afterHoursPrice;
  final String percentage;
  final String firstHeading;
  final String secondHeading;
  final Color firstColor;
  final Color secondColor;

  const PriceCardWidget({
    super.key,
    required this.previousPrice,
    required this.afterHoursPrice,
    required this.percentage,
    required this.firstHeading,
    required this.secondHeading,
    required this.firstColor,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      // height: 137.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color1AB3B3B3),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Previously Close Price ---
          MdSnsText(
            firstHeading,
            color: AppColors.color9EAAC0,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 10.h),
          MdSnsText(
            previousPrice,
            color: firstColor,

            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h1,
          ),
          SizedBox(height: 10.h),

          // --- After Hours ---
          MdSnsText(
            secondHeading,

            color: AppColors.color9EAAC0,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              MdSnsText(
                afterHoursPrice,
                color: secondColor,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
