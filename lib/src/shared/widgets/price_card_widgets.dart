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

  const PriceCardWidget({
    super.key,
    required this.previousPrice,
    required this.afterHoursPrice,
    required this.percentage,
    required this.firstHeading,
    required this.secondHeading,
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
            color: AppColors.white,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h1,
          ),
          SizedBox(height: 15.h),

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
                color: AppColors.color0xFFFFB21D,
                variant: TextVariant.h2,
                fontWeight: TextFontWeightVariant.h1,
              ),
              // SizedBox(width: 8.w),
              // MdSnsText(
              //   percentage,
              //   color: percentage.startsWith('-')
              //       ? Colors
              //             .red // Negative percentage red
              //       : AppColors.color0xFF28CF62, // Positive green
              //   variant: TextVariant.h4,
              //   fontWeight: TextFontWeightVariant.h1,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
