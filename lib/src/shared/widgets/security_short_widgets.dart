import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';

import '../../feature/analytics/domain/model/security_short/short_security_model.dart';

class SecurityShortVolume extends StatelessWidget {
  final List<ShortSecurity>? data;

  SecurityShortVolume({super.key, required this.data});

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
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: MdSnsText(
              "Security Short Volume",
              color: AppColors.fieldTextColor,
              variant: TextVariant.h3,
              fontWeight: TextFontWeightVariant.h3,
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
              ...data!.take(6).map((item) {
                return TableRow(
                  children: [
                    _buildDataCell(
                      formatDateMMDDYYYY(item.marketDate),
                      AppColors.white,
                    ),
                    _buildDataCell(
                      formatNumbers(item.shortVolume),
                      AppColors.color0xFFCD3438,
                    ),
                    _buildDataCell(
                      formatNumbers(item.totalVolume),
                      AppColors.color0098E4,
                    ),
                    _buildDataCell(
                      item.shortVolumeRatio.toString(),
                      AppColors.white,
                    ),
                  ],
                );
              }),
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
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 6),
      child: MdSnsText(
        text,

        variant: TextVariant.h5,
        fontWeight: TextFontWeightVariant.h2,
        color: AppColors.white,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildDataCell(String text, Color color) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: MdSnsText(
        text,
        variant: TextVariant.h4,
        fontWeight: TextFontWeightVariant.h2,
        color: color,
        textAlign: TextAlign.center,
      ),
    );
  }
}
