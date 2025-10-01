import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SecurityShortVolume extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "date": "09/26/2025",
      "shortVolume": "1,393,125",
      "totalVolume": "11,863,341",
      "ratio": "0.12",
    },
    {
      "date": "09/25/2025",
      "shortVolume": "1,394,100",
      "totalVolume": "11,661,936",
      "ratio": "0.12",
    },
    {
      "date": "09/24/2025",
      "shortVolume": "1,053,360",
      "totalVolume": "9,710,734",
      "ratio": "0.11",
    },
    {
      "date": "09/23/2025",
      "shortVolume": "1,865,733",
      "totalVolume": "13,593,342",
      "ratio": "0.14",
    },
    {
      "date": "09/22/2025",
      "shortVolume": "2,425,448",
      "totalVolume": "14,252,374",
      "ratio": "0.17",
    },
  ];

  SecurityShortVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(16),
      // padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        color: AppColors.color091224,

        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MdSnsText(
              "Security Short Volume",
              color: AppColors.white,
              variant: TextVariant.h3,
              fontWeight: TextFontWeightVariant.h4,
            ),
          ),

          Table(
            columnWidths: const {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
              3: FlexColumnWidth(2),
            },
            border: TableBorder(
              horizontalInside: BorderSide(
                color: AppColors.color0x0x1AB3B3B3,
                width: 0.5,
              ),
            ),
            children: [
              // Header row
              TableRow(
                decoration: const BoxDecoration(
                  color: Color(0xFF1B254B), // 👈 row background color
                ),
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14, // 👈 10 se 14 ya 16 kar do
                      horizontal: 6,
                    ),
                    child: MdSnsText(
                      "Market Date",
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.white,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14, // 👈 10 se 14 ya 16 kar do
                      horizontal: 6,
                    ),
                    child: MdSnsText(
                      "Short Volume",
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14, // 👈 10 se 14 ya 16 kar do
                      horizontal: 6,
                    ),
                    child: MdSnsText(
                      "Total Volume",
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.white,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 6,
                    ),
                    child: MdSnsText(
                      "Short Volume",
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h2,
                      color: AppColors.white,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              // Data rows
              ...data.map(
                (row) => TableRow(
                  decoration: const BoxDecoration(
                    // color: Color(0xFF0A1525), // 👈 background for data row
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14, // 👈 10 se 14 ya 16 kar do
                        horizontal: 6,
                      ),
                      alignment: Alignment.topLeft,
                      child: MdSnsText(
                        row["date"]!,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14, // 👈 10 se 14 ya 16 kar do
                        horizontal: 6,
                      ),
                      alignment: Alignment.centerLeft,
                      child: MdSnsText(
                        row["shortVolume"]!,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                        color: const Color(0xFFF5A623), // orange
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14, // 👈 10 se 14 ya 16 kar do
                        horizontal: 6,
                      ),
                      alignment: Alignment.topLeft,
                      child: MdSnsText(
                        row["totalVolume"]!,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14, // 👈 10 se 14 ya 16 kar do
                        horizontal: 6,
                      ),
                      alignment: Alignment.topLeft,
                      child: MdSnsText(
                        row["ratio"]!,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                        color: Colors.lightBlueAccent,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
