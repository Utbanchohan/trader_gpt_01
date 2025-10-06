import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class EarningsTrend extends StatelessWidget {
  String? title;
  EarningsTrend({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.colorB3B3B3),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header title
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MdSnsText(
              title ?? "",
              // "Earnings Trend",
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
              color: AppColors.fieldTextColor,
            ),
          ),

          // Table with full bottom line
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.colorB3B3B3),
                bottom: BorderSide(color: AppColors.colorB3B3B3),
              ),
            ),
            child: Table(
              border: TableBorder(
                horizontalInside: BorderSide(color: AppColors.colorB3B3B3),
              ),
              columnWidths: const {
                0: FlexColumnWidth(1.1),
                1: FlexColumnWidth(1.1),
                2: FlexColumnWidth(1.1),
                3: FlexColumnWidth(1.6),
                4: FlexColumnWidth(1.1),
              },
              children: [
                _buildHeaderRow(),
                for (int i = 0; i < 6; i++) _buildDataRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      children: [
        _buildHeaderCell('Date'),
        _buildHeaderCell('Period'),
        _buildHeaderCell('Growth'),
        _buildHeaderCell('Estimate Avg'),
        _buildHeaderCell('Earnings'),
      ],
    );
  }

  TableRow _buildDataRow() {
    return TableRow(
      children: [
        _buildDataCell('N/A', AppColors.white),
        _buildDataCell('N/A', AppColors.color0xFFCD3438),
        _buildDataCell('N/A', AppColors.color0xFF3C4E8A),
        _buildDataCell('N/A', AppColors.white),
        _buildDataCell('N/A', AppColors.white),
      ],
    );
  }

  Widget _buildHeaderCell(String text) {
    return Container(
      decoration: BoxDecoration(color: AppColors.color1B254B),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: FittedBox(
        child: MdSnsText(
          text,
          color: AppColors.white,
          fontWeight: TextFontWeightVariant.h4,
          variant: TextVariant.h4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Widget _buildDataCell(String text, Color color) {
    return Padding(
      // 🔹 Increased vertical spacing for cleaner row height
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Center(
        child: MdSnsText(
          text,
          color: color,
          fontWeight: TextFontWeightVariant.h4,
          variant: TextVariant.h4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
