import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/company_detail/company_detail_model.dart';
import '../../feature/analytics/domain/model/esg_score_model/esg_score_model.dart';

class SplitDividend extends StatelessWidget {
  final List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends;

  const SplitDividend({super.key, required this.fundamentalsSplitsDividends});

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
              headingRowHeight: 40.h,
              columnSpacing: 20,
              horizontalMargin: 15,
              dataRowMaxHeight: 60.h,
              headingRowColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                return AppColors.color1B254B;
              }),
              columns: [
                DataColumn(
                  label: MdSnsText(
                    "Forward Annual\nDividend Rate",
                    textAlign: TextAlign.center,

                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Forward Annual Dividend Yield',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Payout Ratio',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Dividend Date',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Ex Dividend Date',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Last Split Factor',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Last Split Date',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: fundamentalsSplitsDividends!.map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.forwardAnnualDividendRate != null
                            ? item.forwardAnnualDividendRate!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.forwardAnnualDividendYield != null
                            ? item.forwardAnnualDividendYield!.toStringAsFixed(
                                4,
                              )
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0xFFCD3438,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.payoutRatio != null
                            ? item.payoutRatio!.toStringAsFixed(3)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color046297,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.dividendDate != null
                            ? _formatDate(item.dividendDate!)
                            : "N/A",

                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.exDividendDate != null
                            ? _formatDate(item.exDividendDate!)
                            : "N/A",

                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.lastSplitFactor != null
                            ? item.lastSplitFactor.toString()
                            : "N/A",

                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.lastSplitDate != null
                            ? _formatDate(item.lastSplitDate!)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              }).toList(),
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
