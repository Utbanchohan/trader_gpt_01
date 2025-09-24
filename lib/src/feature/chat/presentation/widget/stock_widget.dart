import 'package:flutter/material.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class StockWidget extends StatelessWidget {
  final String logoPath;
  final String symbol;
  final String company;
  final String description;
  final String price;
  final String change;
  final String percent;

  StockWidget({
    super.key,
    required this.logoPath,
    required this.symbol,
    required this.company,
    required this.description,
    required this.price,
    required this.change,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF161E31),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                // height: 41,
                // width: 42,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(logoPath, width: 24, height: 24),
              ),
              SizedBox(height: 10),

              MdSnsText(
                "3 Days ago",
                variant: TextVariant.h5,
                fontWeight: TextFontWeightVariant.h4,

                color: AppColors.color677FA4,
              ),
            ],
          ),
          SizedBox(width: 12),
          // Stock Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  symbol,

                  color: AppColors.white,
                  variant: TextVariant.h1,
                  fontWeight: TextFontWeightVariant.h2,
                ),
                SizedBox(width: 5),
                MdSnsText(
                  company,
                  color: AppColors.color677FA4,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h6,
                ),

                SizedBox(height: 10),
                MdSnsText(
                  description,
                  color: AppColors.color677FA4,
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h6,
                ),
              ],
            ),
          ),
          // Price & Chart
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MdSnsText(
                "\$${price}",

                color: AppColors.white,
                variant: TextVariant.h1,
                fontWeight: TextFontWeightVariant.h2,
              ),
              SizedBox(height: 8),

              MdSnsText(
                "+${change} (${percent})",
                color: AppColors.color00FF55,
                variant: TextVariant.h5,
                fontWeight: TextFontWeightVariant.h4,
              ),
              SizedBox(height: 8),
              Image.asset(
                Assets.images.stock.path,
                width: 86.5,
                height: 24,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(width: 25),

          Icon(Icons.more_vert, color: Colors.white54, size: 20),
        ],
      ),
    );
  }
}
