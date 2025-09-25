import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ShareStructureCard extends StatelessWidget {
  ShareStructureCard({super.key});

  final double _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    final rows = <Map<String, String>>[
      {'label': 'Authorized Shares', 'value': '500,000M'},
      {'label': 'Outstanding Shares', 'value': '7.43B'},
      {'label': 'Percent Insiders', 'value': '0.052'},
      {'label': 'Percent Institutions', 'value': '73.212'},
      {'label': 'Held at DTC', 'value': 'N/A'},
      {'label': 'Float', 'value': '7,423,671,316'},
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_radius),

        color: AppColors.color091224,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(_radius),
            //     topRight: Radius.circular(_radius),
            //   ),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MdSnsText(
                      'Share Structure',
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
                  'Data delayed by 15 minutes',
                  variant: TextVariant.h4,

                  color: Color(0xFF9AA6B2),
                ),
              ],
            ),
          ),

          // Rows
          Column(
            children: List.generate(rows.length, (index) {
              final item = rows[index];
              final bool isStriped = index % 2 == 0;
              // Use deeper navy for striped rows like image
              final rowColor = isStriped
                  ? AppColors.bubbleColor
                  : Colors.transparent;

              // Right side numeric color (blue-ish) for some rows
              final valueIsHighlighted = index == 0 || index == 1 || index == 5;

              return Container(
                color: rowColor,
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: MdSnsText(
                        item['label']!,
                        variant: TextVariant.h2,
                        color: Color(0xFF9AA6B2),
                      ),
                    ),
                    MdSnsText(
                      item['value']!,
                      variant: TextVariant.h2,
                      fontWeight: TextFontWeightVariant.h1,
                      color: valueIsHighlighted ? Colors.white : Colors.white,
                    ),
                  ],
                ),
              );
            }),
          ),

          Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(_radius),
                bottomRight: Radius.circular(_radius),
              ),
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black12],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
