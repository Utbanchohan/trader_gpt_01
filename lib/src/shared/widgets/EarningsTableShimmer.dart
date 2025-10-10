import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class EarningsTableShimmer extends StatelessWidget {
  const EarningsTableShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.3),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.1),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Header Title Placeholder
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              child: Container(
                width: 120,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),

            // 🔹 Table shimmer (horizontal scroll)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  // Table Header Row shimmer
                  Container(
                    color: AppColors.color1B254B,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 10,
                    ),
                    child: Row(
                      children: List.generate(6, (index) {
                        final widths = [80.0, 120.0, 100.0, 90.0, 80.0, 80.0];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            width: widths[index],
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  // 🔹 Table Rows shimmer
                  Column(
                    children: List.generate(6, (rowIndex) {
                      final isStriped = rowIndex.isEven;
                      return Container(
                        color: isStriped
                            ? AppColors.bubbleColor.withOpacity(0.2)
                            : Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        child: Row(
                          children: List.generate(6, (index) {
                            final widths = [
                              80.0,
                              120.0,
                              100.0,
                              90.0,
                              80.0,
                              80.0,
                            ];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Container(
                                width: widths[index],
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),

            // 🔹 Bottom gradient shimmer (for finish)
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
}
