import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class MetricsShimmer extends StatelessWidget {
  const MetricsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.color1B254B),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header shimmer
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                Row(
                  children: [
                    _shimmerBox(width: 120, height: 14),
                    const SizedBox(width: 6),
                    _shimmerBox(width: 14, height: 14, isCircle: true),
                  ],
                ),
                const SizedBox(height: 8),
                _shimmerBox(width: 160, height: 10),
              ],
            ),
          ),

          // Table rows shimmer
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6, // same number of loading rows
            itemBuilder: (context, index) {
              final isStriped = index % 2 == 0;
              final rowColor = isStriped
                  ? AppColors.bubbleColor.withOpacity(0.3)
                  : Colors.transparent;
              return Container(
                color: rowColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _shimmerBox(
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      height: 10,
                    ),
                    _shimmerBox(width: 60, height: 10),
                  ],
                ),
              );
            },
          ),

          // Bottom gradient shimmer
          Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: const LinearGradient(
                colors: [Colors.transparent, Colors.black12],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _shimmerBox({
    required double width,
    required double height,
    bool isCircle = false,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.bluishgrey404F81,
        borderRadius: isCircle ? null : BorderRadius.circular(4),
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      ),
    );
  }
}
