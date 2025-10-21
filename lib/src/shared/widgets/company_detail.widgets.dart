import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
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
            color: AppColors.color9EAAC0,
            fontWeight: TextFontWeightVariant.h4,
            variant: TextVariant.h4,
          ),
          MdSnsText(
            value,
            color: AppColors.white,

            fontWeight: TextFontWeightVariant.h1,
            variant: TextVariant.h4,
          ),
        ],
      ),
    );
  }
}

class CompanyDetailsCard extends StatelessWidget {
  final List<String> items;
  const CompanyDetailsCard({Key? key, required this.items}) : super(key: key);

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

          // SizedBox(height: 16),
          Container(
            width: double.infinity,

            padding: const EdgeInsets.all(16),
            // decoration: BoxDecoration(
            //   color: const Color(0xFF0B1224), // background color
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompanyDetailsItem(
                  title: "OUTSTANDING SHARES".capitalize(),
                  value: items[0],
                ),

                CompanyDetailsItem(
                  title: "INSTITUTIONAL OWNERSHIP".capitalize(),

                  value: "${items[1]}%",
                ),
                CompanyDetailsItem(
                  title: "EBITA".capitalize(),
                  value: items[2],
                ),
                CompanyDetailsItem(
                  title: "EXCHANGE".capitalize(),
                  value: items[3],
                ),
                CompanyDetailsItem(
                  title: "SYMBOL".capitalize(),
                  value: items[4],
                ),
                CompanyDetailsItem(
                  title: "SECTOR".capitalize(),
                  value: items[5],
                ),
                CompanyDetailsItem(
                  title: "INDUSTRY".capitalize(),
                  value: items[6],
                ),
                CompanyDetailsItem(
                  title: "FISCAL YEAR END".capitalize(),
                  value: items[7],
                ),
                CompanyDetailsItem(
                  title: "MARKET CAP".capitalize(),
                  value: "\$${items[8]}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
