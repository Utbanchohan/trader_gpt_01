import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';

class AnalysisTableShimmer extends StatelessWidget {
  const AnalysisTableShimmer({super.key});

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
                width: 140,
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
                      children: List.generate(9, (index) {
                        final widths = [
                          90.0,
                          100.0,
                          80.0,
                          100.0,
                          80.0,
                          80.0,
                          100.0,
                          90.0,
                          80.0,
                        ];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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

                  // 🔹 Table Rows shimmer (10 rows)
                  Column(
                    children: List.generate(8, (rowIndex) {
                      final isStriped = rowIndex.isEven;
                      return Container(
                        color: isStriped
                            ? AppColors.bubbleColor.withOpacity(0.15)
                            : Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        child: Row(
                          children: List.generate(9, (index) {
                            final widths = [
                              90.0,
                              100.0,
                              80.0,
                              100.0,
                              80.0,
                              80.0,
                              100.0,
                              90.0,
                              80.0,
                            ];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
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

            const SizedBox(height: 8),

            // 🔹 Bottom Pagination shimmer (like table footer)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(5, (index) {
                    final width = index == 0 ? 80.0 : 28.0;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        height: 20,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
