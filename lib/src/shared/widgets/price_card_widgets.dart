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
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color1AB3B3B3),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            firstHeading,
            color: AppColors.color9EAAC0,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 0.h),
          SizedBox(
            width: 170.w,
            child: MdSnsText(
              previousPrice == "null" ||
                      previousPrice == "0.0" ||
                      previousPrice == "0"
                  ? "N/A"
                  : previousPrice,
              color: firstColor,
              maxLines: 1,

              variant: TextVariant.h2,
              fontWeight: TextFontWeightVariant.h1,
            ),
          ),
          SizedBox(height: 10.h),

          // --- After Hours ---
          MdSnsText(
            secondHeading,

            color: AppColors.color9EAAC0,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 0.h),
          Row(
            children: [
              SizedBox(
                width: 170.w,
                child: MdSnsText(
                  afterHoursPrice == "null" ||
                          afterHoursPrice == "0.0" ||
                          afterHoursPrice == "0"
                      ? "N/A"
                      : afterHoursPrice,

                  maxLines: 1,
                  color: secondColor,

                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
