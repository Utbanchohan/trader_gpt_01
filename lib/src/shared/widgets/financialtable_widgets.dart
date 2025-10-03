import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class FinancialTable extends StatelessWidget {
  const FinancialTable({super.key});

  @override
  Widget build(BuildContext context) {
    final headerStyle = const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 13,
    );

    final valueStyle = const TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    );

    final growthStyle = const TextStyle(
      color: Colors.greenAccent,
      fontSize: 11,
      fontWeight: FontWeight.w500,
    );

    final negativeStyle = const TextStyle(
      color: Colors.redAccent,
      fontSize: 11,
      fontWeight: FontWeight.w500,
    );

    return Container(
      // margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
      ),
      // decoration: BoxDecoration(
      //   color: const Color(0xFF0B1221),
      //   borderRadius: BorderRadius.circular(20),
      // ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.fieldColor,
              // borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: MdSnsText(
                    "Values in USD",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),
                Expanded(
                  child: MdSnsText(
                    "Jun 30, 2024",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),

                Expanded(
                  child: MdSnsText(
                    "Jun 30, 2023",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),
                Expanded(
                  child: MdSnsText(
                    "Jun 30, 2022",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),
                Expanded(
                  child: MdSnsText(
                    "Jun 30, 2021",
                    color: AppColors.color0xB3FFFFFF,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Column(
            children: [
              buildRow(
                color: Colors.purpleAccent,
                title: "Research Development",
                values: [
                  "29,510,000,000",
                  "27,195,000,000",
                  "0",
                  "24,512,000,000",
                ],
                growth: ["8.51%", "10.95%", "0%", "18.32%"],
                growthColors: [
                  Colors.greenAccent,
                  Colors.greenAccent,
                  Colors.redAccent,
                  Colors.greenAccent,
                ],
                valueStyle: valueStyle,
              ),
              SizedBox(height: 10),
              Divider(color: AppColors.colorB3B3B3, height: 1),
              SizedBox(height: 10),

              // Row 2
              buildRow(
                color: Colors.blueAccent,
                title: "Effect Of Accounting Charges",
                values: ["0", "0", "0", "0"],
                growth: ["0%", "0%", "0%", "0%"],
                growthColors: [
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                ],
                valueStyle: valueStyle,
              ),

              SizedBox(height: 10),
              Divider(color: AppColors.colorB3B3B3, height: 1),
              SizedBox(height: 10),
              // Row 3
              buildRow(
                color: Colors.orangeAccent,
                title: "Income Before Tax",
                values: [
                  "107,787,000,000",
                  "89,311,000,000",
                  "0",
                  "83,716,000,000",
                ],
                growth: ["20.69%", "6.66%", "0%", "17.63%"],
                growthColors: [
                  Colors.greenAccent,
                  Colors.greenAccent,
                  Colors.redAccent,
                  Colors.greenAccent,
                ],
                valueStyle: valueStyle,
              ),
              SizedBox(height: 10),
              Divider(color: AppColors.colorB3B3B3, height: 1),
              SizedBox(height: 10),

              // Row 4
              buildRow(
                color: Colors.greenAccent,
                title: "Minority Interest",
                values: ["0", "0", "0", "0"],
                growth: ["0%", "0%", "0%", "0%"],
                growthColors: [
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                  Colors.redAccent,
                ],
                valueStyle: valueStyle,
              ),
            ],
          ),

          // Row 1
        ],
      ),
    );
  }

  Widget buildRow({
    required Color color,
    required String title,
    required List<String> values,
    required List<String> growth,
    required List<Color> growthColors,
    required TextStyle valueStyle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Colored bar + Title
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Container(width: 3, height: 60, color: color),
              const SizedBox(width: 8),
              Expanded(
                child: MdSnsText(
                  title,
                  color: AppColors.white,

                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        // Values + Growth
        ...List.generate(values.length, (i) {
          return Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  values[i],
                  color: AppColors.white,

                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h6,
                ),
                MdSnsText(
                  "Growth YoY\n${growth[i]}",
                  color: growthColors[i],
                  variant: TextVariant.h4,
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
