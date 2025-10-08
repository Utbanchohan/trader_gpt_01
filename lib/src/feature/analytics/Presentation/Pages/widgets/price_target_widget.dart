import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';

class PriceTargetWidget extends StatelessWidget {
  final List<PriceTargetData> data;
  PriceTargetWidget({required this.data});
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
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                              variant: TextVariant.h3,
                              fontWeight: TextFontWeightVariant.h4,

                              color: AppColors.fieldTextColor,
                            ),
                            SizedBox(width: 5.w),
                            Icon(
                              Icons.info_outline,
                              size: 14.sp,
                              color: AppColors.fieldTextColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        MdSnsText(
                          'Description about price target',
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,

                          color: AppColors.fieldTextColor,
                        ),

                        const SizedBox(height: 10),
                        MdSnsText(
                          // '\$94',
                          "\$${data[0].high.toString()}",

                          color: AppColors.color00FF55,
                          variant: TextVariant.h1,

                          fontWeight: TextFontWeightVariant.h2,
                        ),
                      ],
                    ),
                    // The circular icon on the top right
                    SvgPicture.network(
                      'https://stage.tradersgpt.io/img/dollar.aa601f2d.svg',
                      height: 56, // 👈 set your desired size
                      width: 56,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // --- High Target Bar ---
                buildPriceTargetBar(
                  'High',

                  "\$${data[0].high.toString()}",
                  data[0].highPercentage ?? 0,
                  AppColors.color00FF55,
                ),

                // --- Median Target Bar ---
                buildPriceTargetBar(
                  'Median',
                  "\$${data[0].median.toString()}",
                  data[0].medianPercentage ?? 0,
                  AppColors.color00FF55,
                ),

                // --- Low Target Bar ---
                buildPriceTargetBar(
                  'Low',
                  "\$${data[0].low.toString()}",
                  data[0].lowPercentage ?? 0,
                  AppColors.color00FF55,
                ),
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
  double fraction = percentage > 0 ? percentage / 100.0 : 0;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MdSnsText(
              label,
              color: AppColors.white,
              variant: TextVariant.h3,
              fontWeight: TextFontWeightVariant.h4,
            ),
            MdSnsText(
              price,
              color: AppColors.white,
              variant: TextVariant.h2,
              fontWeight: TextFontWeightVariant.h4,
            ),
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
                color: AppColors.fieldColor, // A dark background color
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
                variant: TextVariant.h3,
                fontWeight: TextFontWeightVariant.h1,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
