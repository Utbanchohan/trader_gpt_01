import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class ProfileCardShimmer extends StatelessWidget {
  const ProfileCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.color1B254B),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Placeholder image with shimmer effect
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/Placeholderimage.png",
              height: 122.h,
              width: 122.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.h),

          // Shimmer bar for designation
          Container(
            height: 14.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: AppColors.bluishgrey404F81,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: 6.h),

          // Shimmer bar for name
          Container(
            height: 14.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: AppColors.bluishgrey404F81,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}
