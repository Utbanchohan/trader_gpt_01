import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class CashDebtShimmer extends StatelessWidget {
  const CashDebtShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.3),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),

      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.color1AB3B3B3),
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Title shimmer
            _shimmerBox(width: 120.w, height: 16.h),
            SizedBox(height: 20.h),

            // 🔹 Chart shimmer box

            // 🔹 Bottom legends shimmer (Cash / Debt)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cash shimmer
                Row(
                  children: [
                    Container(
                      width: 10.w,
                      height: 10.w,
                      decoration: BoxDecoration(
                        color: AppColors.color1B254B.withOpacity(0.4),
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    _shimmerBox(width: 50.w, height: 10.h),
                  ],
                ),
                SizedBox(width: 30.w),
                // Debt shimmer
                Row(
                  children: [
                    Container(
                      width: 10.w,
                      height: 10.w,
                      decoration: BoxDecoration(
                        color: AppColors.color1B254B.withOpacity(0.4),
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    _shimmerBox(width: 50.w, height: 10.h),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 Reusable shimmer box widget
  Widget _shimmerBox({required double width, required double height}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
