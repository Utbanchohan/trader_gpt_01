import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class CustomCandleChartShimmer extends StatelessWidget {
  const CustomCandleChartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.3),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),
      child: Container(
        alignment: Alignment.center,
        height: 360.h,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.color091224,
          border: Border.all(color: AppColors.color1B254B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Header with chart name and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _shimmerBox(width: 100, height: 14),
                Row(
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.color1B254B.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: _shimmerBox(width: 20, height: 10),
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 20.h),

            // 🔹 Candle chart shimmer bars
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(8, (index) {
                  final barHeight = 80.0 + (index % 2) * 30;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // upper wick
                      _shimmerBox(width: 2, height: 20),
                      const SizedBox(height: 2),
                      // candle body
                      _shimmerBox(width: 10, height: barHeight),
                      const SizedBox(height: 2),
                      // lower wick
                      _shimmerBox(width: 2, height: 20),
                    ],
                  );
                }),
              ),
            ),

            SizedBox(height: 20.h),

            // 🔹 Bottom shimmer axis labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(8, (index) {
                return _shimmerBox(width: 24, height: 8);
              }),
            ),
          ],
        ),
      ),
    );
  }

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
