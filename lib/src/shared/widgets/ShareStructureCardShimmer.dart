import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class ShareStructureCardShimmer extends StatelessWidget {
  const ShareStructureCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.4),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: AppColors.colorB3B3B3),
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 🔹 Header shimmer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _shimmerBox(width: 100, height: 14),
                      const SizedBox(width: 6),
                      _shimmerBox(width: 14, height: 14, isCircle: true),
                    ],
                  ),
                  const SizedBox(height: 6),
                  _shimmerBox(width: 180, height: 10),
                ],
              ),
            ),

            // 🔹 Content shimmer (simulating rows)
            ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final bool isStriped = index % 2 == 0;
                final rowColor = isStriped
                    ? AppColors.color1B254B.withOpacity(0.4)
                    : AppColors.color091224.withOpacity(0.4);

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
                      _shimmerBox(width: 50, height: 10),
                    ],
                  ),
                );
              },
            ),

            // 🔹 Bottom fade (matches your real widget)
            Container(
              height: 12,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black12],
                ),
              ),
            ),
          ],
        ),
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
        color: AppColors.color1B254B,
        borderRadius: isCircle ? null : BorderRadius.circular(4),
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      ),
    );
  }
}
