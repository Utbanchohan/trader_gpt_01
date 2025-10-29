import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class MetricsShimmer extends StatelessWidget {
  const MetricsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.4),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.15),
      child: Container(
        height: 220, // adjust height if needed
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.color1B254B),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top shimmer section (header)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _shimmerBox(width: 100, height: 14),
                  const SizedBox(height: 8),
                  _shimmerBox(width: 160, height: 10),
                  const SizedBox(height: 12),
                  _shimmerBox(width: 80, height: 20),
                ],
              ),
            ),

            const Spacer(),

            // Bottom gradient shimmer look
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.color1B254B.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
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
        color: AppColors.color1B254B,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
