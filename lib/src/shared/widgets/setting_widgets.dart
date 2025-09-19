import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SettingBottomSheet extends StatelessWidget {
  const SettingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.color06D54E, Color(0xFF401FFF)],

          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.color091224,

          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildAnalysisCard(
              title: '/Complete Company Analysis',
              description:
                  'Performs comprehensive financial analysis of a company by aggregating company overview, price targets, financial metrics, and analyst ratings. Delivers unified corporate intelligence including profile data, consensus forecasts, key financial ratios, analyst scores, and rating trends. Enables complete fundamental analysis for investment decision-making through consolidated company assessment.',
            ),
            SizedBox(height: 2),
            _buildAnalysisCard(
              title: '/Market News Analysis',
              description:
                  'Performs comprehensive financia l analysis of a company by aggregating company overview, price targets, financial metrics, and analyst ratings. Delivers unified corporate intelligence including profile data, consensus forecasts, key financial ratios, analyst scores, and rating trends. Enables complete fundamental analysis for investment decision-making through consolidated company assessment.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnalysisCard({
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.color1B254B,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MdSnsText(
            title,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            size: 16,
          ),
          SizedBox(height: 8),

          MdSnsText(
            description,
            color: AppColors.color9EAAC0,
            fontWeight: FontWeight.w400,
            size: 12,
          ),
        ],
      ),
    );
  }
}
