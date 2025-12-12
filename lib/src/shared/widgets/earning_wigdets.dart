import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/pages/widget/shimmer_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class EarningsItem extends StatelessWidget {
  final String title;
  final String value;

  const EarningsItem({Key? key, required this.title, required this.value})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 👇 Text color condition
    Color textColor;

    if (title == "Reported EPS" || title == "EPS Surprise") {
      textColor = AppColors.color06D54E;
    } else if (value.contains("+")) {
      textColor = AppColors.color06D54E;
    } else if (value.contains("-")) {
      textColor = AppColors.white;
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
          value.isNotEmpty
              ? MdSnsText(
                  value,
                  color: textColor, // ✅ Conditional color apply ho raha hai
                  fontWeight: TextFontWeightVariant.h1,
                  variant: TextVariant.h4,
                )
              : shimmerBox(height: 10, width: 100),
        ],
      ),
    );
  }
}

class Earnings extends StatelessWidget {
  final List<String> items;
  const Earnings({Key? key, required this.items}) : super(key: key);

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
            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h3,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EarningsItem(title: "Reported EPS", value: items[0]),
                EarningsItem(
                  title: "Next Earnings Report Date",
                  value: items[1],
                ),
                EarningsItem(title: "Consensus EPS Forecast", value: items[2]),
                EarningsItem(title: "EPS Surprise", value: "${items[3]}%"),
                EarningsItem(title: "Total Revenue", value: items[4]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
