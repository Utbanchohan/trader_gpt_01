import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/earning_report_model/earning_report_model.dart';

class EarningsTable extends StatelessWidget {
  final List<EarningReportData> data;
  const EarningsTable({super.key, required this.data});

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
              "Earnings",
              color: AppColors.color9EAAC0,
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
                    "Period",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Estimated EPS',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Actual EPS',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Growth',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Surprise',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: data.take(6).map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.period,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.estimateEps.toStringAsFixed(2),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.redFF3B3B,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.estimateRevenue,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0098E4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.actual.toStringAsFixed(2),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.growth.toStringAsFixed(2) + "%",
                        textAlign: TextAlign.center,
                        color: item.growth < 0
                            ? AppColors.color0xFFCD3438
                            : AppColors.color00FF55,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.surprise.toStringAsFixed(2) + "%",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color00FF55,
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
}

String _formatDate(String date) {
  try {
    return DateFormat('MM/dd/yyyy').format(DateTime.parse(date));
  } catch (_) {
    return '-';
  }
}
