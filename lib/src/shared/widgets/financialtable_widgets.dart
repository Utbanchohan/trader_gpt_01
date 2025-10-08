import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class FinancialTable extends StatelessWidget {
  const FinancialTable({super.key});

  @override
  Widget build(BuildContext context) {
    final rows = [
      {
        "color": Colors.purpleAccent,
        "title": "Research Development",
        "values": ["29,510", "27,195", "0", "24,512"],
        "growth": ["8.51%", "10.95%", "0%", "18.32%"],
        "growthColors": [
          AppColors.color06D54E,
          AppColors.color06D54E,
          AppColors.color0xFFCD3438,
          AppColors.color06D54E,
        ],
      },
      {
        "color": Colors.blueAccent,
        "title": "Effect Of Accounting Charges",
        "values": ["0", "0", "0", "0"],
        "growth": ["0%", "0%", "0%", "0%"],
        "growthColors": [
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
        ],
      },
      {
        "color": Colors.orangeAccent,
        "title": "Income Before Tax",
        "values": ["107,787", "89,311", "0", "83,716"],
        "growth": ["20.69%", "6.66%", "0%", "17.63%"],
        "growthColors": [
          AppColors.color06D54E,
          AppColors.color06D54E,
          AppColors.color0xFFCD3438,
          AppColors.color06D54E,
        ],
      },
      {
        "color": AppColors.color06D54E,
        "title": "Minority Interest",
        "values": ["0", "0", "0", "0"],
        "growth": ["0%", "0%", "0%", "0%"],
        "growthColors": [
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
          AppColors.color0xFFCD3438,
        ],
      },
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------- Header ----------
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.fieldColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  buildHeaderCell("Values in USD", width: 152),
                  buildHeaderCell("Jun31,24", width: 80),
                  buildHeaderCell("Jun30,23", width: 80),
                  buildHeaderCell("Jun30,22", width: 79),
                  buildHeaderCell("Jun30,21", width: 90),
                ],
              ),
            ),

            // ---------- Data Rows ----------
            ...List.generate(rows.length, (index) {
              final row = rows[index];
              final isLast = index == rows.length - 1;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 0,
                    ),
                    child: buildRow(
                      color: row["color"] as Color,
                      title: row["title"] as String,
                      values: List<String>.from(row["values"] as List),
                      growth: List<String>.from(row["growth"] as List),

                      growthColors: List<Color>.from(
                        row["growthColors"] as List,
                      ),
                    ),
                  ),

                  Container(
                    color: AppColors.white,

                    // clear visible line
                    // margin: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderCell(String text, {double width = 100}) {
    return Container(
      width: width,
      alignment: Alignment.centerLeft,
      child: MdSnsText(
        text,
        color: AppColors.white,
        variant: TextVariant.h5,
        fontWeight: TextFontWeightVariant.h4,
      ),
    );
  }

  Widget buildRow({
    required Color color,
    required String title,
    required List<String> values,
    required List<String> growth,
    required List<Color> growthColors,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title + color bar
        SizedBox(
          width: 160,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 1, height: 45, color: color),
              const SizedBox(width: 6),
              Expanded(
                child: MdSnsText(
                  title,
                  color: AppColors.white,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),

        ...List.generate(values.length, (i) {
          return SizedBox(
            width: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  values[i],
                  color: AppColors.white,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h4,
                ),
                const SizedBox(height: 2),
                MdSnsText(
                  growth[i],
                  color: growthColors[i],
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h6,
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}
