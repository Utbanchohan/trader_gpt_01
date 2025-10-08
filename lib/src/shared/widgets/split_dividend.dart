import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/esg_score_model/esg_score_model.dart';

class SplitDividend extends StatelessWidget {
  const SplitDividend({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: MdSnsText(
              "Split Dividends",
              color: AppColors.fieldTextColor,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                return AppColors.color1B254B;
              }),
              columns: [
                DataColumn(
                  label: MdSnsText(
                    "Forward Annual Dividend Rate",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Forward Annual Dividend Yield',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Payout Ratio',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Dividend Date',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Ex Dividend Date',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Last Split Factor',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Last Split Date',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        "1.08",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        "0.0112",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.color0xFFCD3438,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        "0.332",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.color046297,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate("30-02-2025"),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        _formatDate("30-02-2025"),

                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        variant: TextVariant.h5,
                        fontWeight: TextFontWeightVariant.h2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        "31",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate("30-02-2025"),

                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
              // data!.take(6).map((item) {
              //   return
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 Row Builder
}

String _formatDate(String date) {
  try {
    return DateFormat('MM/dd/yyyy').format(DateTime.parse(date));
  } catch (_) {
    return '-';
  }
}
