import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class QuarterlyPerformanceChartShimmer extends StatelessWidget {
  const QuarterlyPerformanceChartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.3),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),
      child: Container(
        height: 260,
        decoration: BoxDecoration(
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.color1B254B),
        ),
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Header placeholder
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  _shimmerBox(width: 120, height: 14),
                  const SizedBox(width: 6),
                  _shimmerBox(width: 14, height: 14, isCircle: true),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // 🔹 Simulated Chart Bars / Dots
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(6, (index) {
                  final height =
                      60.0 + (index % 2) * 30; // alternate bar height
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // dot placeholder
                      _shimmerBox(width: 10, height: 10, isCircle: true),
                      const SizedBox(height: 5),
                      // bar placeholder
                      _shimmerBox(width: 10, height: height),
                    ],
                  );
                }),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Simulated Bottom Quarter Labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(6, (index) {
                return Column(
                  children: [
                    _shimmerBox(width: 20, height: 10),
                    const SizedBox(height: 4),
                    _shimmerBox(width: 30, height: 8),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  // Helper shimmer box
  Widget _shimmerBox({
    required double width,
    required double height,
    bool isCircle = false,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: isCircle ? null : BorderRadius.circular(4),
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      ),
    );
  }
}
