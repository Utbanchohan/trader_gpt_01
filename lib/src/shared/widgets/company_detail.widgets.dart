import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class CompanyDetailsItem extends StatelessWidget {
  final String title;
  final String value;

  const CompanyDetailsItem({Key? key, required this.title, required this.value})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            title,
            color: AppColors.lightTextColor,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h4,
          ),
          MdSnsText(
            value,
            color: AppColors.white,

            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h4,
          ),
        ],
      ),
    );
  }
}

class CompanyDetailsCard extends StatelessWidget {
  const CompanyDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: AppColors.white,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            "Company Details",
            color: AppColors.fieldTextColor,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h3,
          ),
          SizedBox(height: 16),

          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF0B1224), // background color
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompanyDetailsItem(title: "Industry", value: "Technology"),
                CompanyDetailsItem(
                  title: "Sector",
                  value: "Information Technology",
                ),
                CompanyDetailsItem(title: "Employees", value: "10,000"),
                CompanyDetailsItem(
                  title: "Headquarters",
                  value: "San Francisco, CA",
                ),
                CompanyDetailsItem(title: "Founded", value: "MSFT"),
                CompanyDetailsItem(title: "MARKET CAP", value: "Technology"),
                CompanyDetailsItem(
                  title: "FISCAL YEAR END",
                  value: "Software-Internet",
                ),
                CompanyDetailsItem(title: "INDUSTRY", value: "1998"),
                CompanyDetailsItem(title: "SELECTOR", value: "June"),
                CompanyDetailsItem(title: "SYMBOL", value: "3820.20B"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
