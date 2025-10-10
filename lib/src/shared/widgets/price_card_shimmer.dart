import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/theme/app_colors.dart';
import '../../feature/new_conversations/presentation/pages/widget/shimmer_widget.dart';

class PriceCardShimmer extends StatelessWidget {
  const PriceCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color1AB3B3B3),
      ),
      child: Shimmer.fromColors(
        baseColor: AppColors.color1B254B.withOpacity(0.3),
        highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- First Heading shimmer ---
            shimmerBox(width: 100.w, height: 14.h),
            SizedBox(height: 10.h),

            // --- Previous Price shimmer ---
            shimmerBox(width: 70.w, height: 18.h),
            SizedBox(height: 10.h),

            // --- Second Heading shimmer ---
            shimmerBox(width: 80.w, height: 14.h),
            SizedBox(height: 10.h),

            // --- After Hours Price shimmer ---
            Row(
              children: [
                shimmerBox(width: 70.w, height: 18.h),

                // Optional percentage shimmer
              ],
            ),
          ],
        ),
      ),
    );
  }
}
