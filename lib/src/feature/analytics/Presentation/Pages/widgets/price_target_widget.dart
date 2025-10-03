import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class PriceTargetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),

        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MdSnsText(
                              "Price Target",
                              variant: TextVariant.h7,
                              fontWeight: TextFontWeightVariant.h4,

                              color: AppColors.white,
                            ),
                            SizedBox(width: 10.w),
                            Icon(
                              Icons.info_outline,
                              size: 14.sp,
                              color: AppColors.colorB2B2B7,
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        MdSnsText(
                          'Description about price target',
                          variant: TextVariant.h4,

                          color: Color(0xFF9AA6B2),
                        ),

                        const SizedBox(height: 10),
                        MdSnsText(
                          '\$94',

                          color: AppColors.color00FF55,
                          variant: TextVariant.h7,

                          fontWeight: TextFontWeightVariant.h2,
                        ),
                      ],
                    ),
                    // The circular icon on the top right
                    const Icon(
                      Icons.monetization_on,
                      color: AppColors.color00FF55,
                      size: 40,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // --- High Target Bar ---
                buildPriceTargetBar(
                  'High',
                  '\$96',
                  9.92,
                  AppColors.color00FF55,
                ),

                // --- Median Target Bar ---
                buildPriceTargetBar(
                  'Median',
                  '\$96',
                  9.92,
                  AppColors.color00FF55,
                ),

                // --- Low Target Bar ---
                buildPriceTargetBar('Low', '\$90', 3.05, AppColors.color00FF55),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// This represents the structure for the 'High' bar section
Widget buildPriceTargetBar(
  String label,
  String price,
  double percentage,
  Color greenColor,
) {
  // Convert the visual percentage (9.92%) into a fraction (0.0992)
  double fraction = percentage / 100.0;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MdSnsText(label, color: AppColors.white, variant: TextVariant.h5),
            MdSnsText(price, color: AppColors.white, variant: TextVariant.h5),
          ],
        ),
        const SizedBox(height: 6),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            // 1. The full dark bar background
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: const Color(0xFF1E2135), // A dark background color
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            // 2. The green progress part
            FractionallySizedBox(
              widthFactor: fraction, // e.g., 0.0992 for 9.92%
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.color4ade80,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            // 3. The percentage text overlaid
            Align(
              alignment: Alignment.center,
              // padding: const EdgeInsets.only(left: 10.0),
              child: MdSnsText(
                '${percentage.toStringAsFixed(2)}%',

                color: AppColors.white,
                variant: TextVariant.h8,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
