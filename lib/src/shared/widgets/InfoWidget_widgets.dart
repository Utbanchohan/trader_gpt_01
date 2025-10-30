import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        color: AppColors.color0xFF1B254B,
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🟦 Title
          MdSnsText(
            "Retrieving current Microsoft stock price data for market analysis",
            color: AppColors.white,
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h4,
          ),

          SizedBox(height: 5.h),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: AppColors.color0xFF12B981, size: 12),
              SizedBox(width: 8.w),
              MdSnsText(
                "Completed",
                color: AppColors.color0xFF9EAAC0,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          MdSnsText(
            "Retrieve the latest price data for Microsoft Corporation symbol MSFT to provide current market valuation.",
            color: AppColors.color0xFF9EAAC0,
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
        ],
      ),
    );
  }
}
