import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: MdSnsText(
              "Security Short Volume",
              color: AppColors.fieldTextColor,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
          ),

          /// Table
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
              /// Header Row
              TableRow(
                decoration: BoxDecoration(color: AppColors.color1B254B),
                children: [
                  _buildHeaderCell("Market Date"),
                  _buildHeaderCell("Short Volume"),
                  _buildHeaderCell("Total Volume"),
                  _buildHeaderCell("Short Volume %"),
                ],
              ),

              /// Data Rows
              ...data.map(
                (row) => TableRow(
                  children: [
                    _buildDataCell(row["date"]!, AppColors.white),
                    _buildDataCell(
                      row["shortVolume"]!,
                      AppColors.color0xFFCD3438,
                    ),
                    _buildDataCell(row["totalVolume"]!, AppColors.color0098E4),
                    _buildDataCell(row["ratio"]!, AppColors.white),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Header cell helper
  Widget _buildHeaderCell(String text) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 10, // 👈 smaller header height
        horizontal: 8,
      ),
      child: MdSnsText(
        text,
        variant: TextVariant.h4,
        fontWeight: TextFontWeightVariant.h4,
        color: AppColors.white,
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Data cell helper
  Widget _buildDataCell(String text, Color color) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: MdSnsText(
        text,
        variant: TextVariant.h4,
        fontWeight: TextFontWeightVariant.h4,
        color: color,
        textAlign: TextAlign.center,
      ),
    );
  }
}
