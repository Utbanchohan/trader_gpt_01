import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class EarningsItem extends StatelessWidget {
  final String title;
  final String value;

  const EarningsItem({Key? key, required this.title, required this.value})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 👇 yahan condition lagayi
    Color textColor;
    if (value.contains("+")) {
      textColor = Colors.greenAccent;
    } else if (value.contains("-")) {
      textColor = Colors.redAccent;
    } else {
      textColor = AppColors.white;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            title,
            color: AppColors.color9EAAC0,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h4,
          ),
          MdSnsText(
            value,
            color: value.contains("+")
                ? Colors
                      .greenAccent // 👈 agar + ho to green
                : AppColors.white, // 👈 warna white
            fontWeight: TextFontWeightVariant.h1,
            variant: TextVariant.h4,
          ),
        ],
      ),
    );
  }
}

class Earnings extends StatelessWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            "Earnings",
            color: AppColors.fieldTextColor,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h3,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                EarningsItem(title: "Reported EPS", value: "3.46"),
                EarningsItem(
                  title: "Next Earnings Report Date",
                  value: "InformationTech",
                ),
                EarningsItem(title: "EPS Surprise", value: "7.45%"),
                EarningsItem(title: "Total Revenue", value: "70.07B"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
