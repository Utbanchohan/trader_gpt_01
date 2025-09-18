import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/theme/app_colors.dart';

class ShimmerCardStock extends StatelessWidget {
  const ShimmerCardStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.color1B254B),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              shimmerBox(width: 26.w, height: 20.h, radius: 8), // Image shimmer
              SizedBox(width: 7.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shimmerBox(width: 40.w, height: 10.h), // Symbol shimmer
                  SizedBox(height: 4.h),
                  shimmerBox(width: 50.w, height: 10.h), // Company shimmer
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          shimmerBox(width: 60.w, height: 14.h), 
                    SizedBox(height: 5.h),

          // Price shimmer
          Row(
            children: [
              shimmerBox(width: 20.w, height: 18.h, radius: 4), // Arrow shimmer
              SizedBox(width: 4.w),
              shimmerBox(width: 30.w, height: 10.h), // Change shimmer
            ],
          ),
          SizedBox(height: 4.h),
          shimmerBox(width: 86.w, height: 13.h, radius: 4), // Mini graph shimmer
        ],
      ),
    );
  }
}


Widget shimmerBox({
    double? width,
    double? height,
    double radius = 6,
  }) {
    return Shimmer.fromColors(
      baseColor:AppColors.bluishgrey404F81,
      highlightColor: AppColors.fieldTextColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.bluishgrey404F81,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }