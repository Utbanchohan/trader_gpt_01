import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class EarningsTable extends StatelessWidget {
  const EarningsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),

            child: MdSnsText(
              "Earnings",
              variant: TextVariant.h2,
              fontWeight: TextFontWeightVariant.h4,

              color: AppColors.fieldTextColor,
            ),
          ),

          // 🔹 Table Header
          Container(
            decoration: BoxDecoration(color: AppColors.fieldColor),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: MdSnsText(
                    "Period",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Estimated EPS",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                    maxLines: 1,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Revenue",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Actual EPS",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),

          // 🔹 Divider
          // Container(height: 1, color: AppColors.colorB3B3B3),

          // 🔹 Table Rows
          ...earningsData.asMap().entries.map((entry) {
            final index = entry.key;
            final row = entry.value;

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: index == earningsData.length - 1
                    ? null // 👈 Last row => no border
                    : Border(
                        bottom: BorderSide(
                          color: AppColors.colorB3B3B3,
                          width: 0.5,
                        ),
                      ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: MdSnsText(
                      row["period"]!,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h4,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: MdSnsText(
                      row["estEPS"]!,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h4,
                      color: Colors.orange.shade400,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: MdSnsText(
                      row["revenue"]!,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h4,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: MdSnsText(
                      row["actualEPS"]!,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h4,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

// 🔹 Styles
const _headerStyle = TextStyle(
  color: Colors.white70,
  fontWeight: FontWeight.w600,
  fontSize: 13,
);

const _rowStyle = TextStyle(color: Colors.white, fontSize: 13);

// 🔹 Dummy Data
final List<Map<String, String>> earningsData = [
  {
    "period": "Quarter 1, 2025",
    "estEPS": "3.22",
    "revenue": "\$70.07B",
    "actualEPS": "3.46",
  },
  {
    "period": "Quarter 4, 2024",
    "estEPS": "3.11",
    "revenue": "\$69.63B",
    "actualEPS": "3.23",
  },
  {
    "period": "Quarter 3, 2024",
    "estEPS": "3.10",
    "revenue": "\$65.59B",
    "actualEPS": "3.30",
  },
  {
    "period": "Quarter 2, 2024",
    "estEPS": "2.93",
    "revenue": "\$64.73B",
    "actualEPS": "2.95",
  },
  {
    "period": "Quarter 1, 2024",
    "estEPS": "2.82",
    "revenue": "\$61.86B",
    "actualEPS": "2.94",
  },
  {
    "period": "Quarter 4, 2023",
    "estEPS": "2.78",
    "revenue": "\$62.02B",
    "actualEPS": "2.93",
  },
];
