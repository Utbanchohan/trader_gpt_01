import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/company_detail/company_detail_model.dart'
    show FundamentalsEarningsTrend;

class EarningsTrend extends StatelessWidget {
  final String title;
  final List<FundamentalsEarningsTrend>? data;

  const EarningsTrend({super.key, required this.title, required this.data});

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
              title.toString(),
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
                    "Date",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Period',
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
                    'Earnings\nEstimate Avg',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Earnings\nEstimate Low',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    'Earnings\nEstimate High',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    "Earnings\nEstimate Year Ago Eps",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Earnings\nEstimate Number Of Analysts',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Earnings\nEstimate Growth',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate Avg',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate Low',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate High',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate Year Ago Eps',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate Number Of Analysts',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Revenue\nEstimate Growth',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    'Eps\nTrend Current',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Trend\n7 days Ago',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Trend\n30 days Ago',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Trend\n60 days Ago',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Trend\n90 days Ago',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),

                DataColumn(
                  label: MdSnsText(
                    'Eps Revisions\nUp Last 7 days',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Revisions\nUp Last 30 days',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Revisions\nDown Last 7 days',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Eps Revisions\nDown Last 30 days',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: data!.take(6).map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.date ?? "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.period ?? "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0xFFCD3438,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.growth != null
                            ? item.growth!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0098E4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.earningsEstimateAvg != null
                            ? item.earningsEstimateAvg!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.earningsEstimateLow != null
                            ? item.earningsEstimateLow!.toStringAsFixed(2)
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
                        item.earningsEstimateHigh != null
                            ? item.earningsEstimateHigh!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.earningsEstimateYearAgoEps != null
                            ? item.earningsEstimateYearAgoEps!.toStringAsFixed(
                                2,
                              )
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.earningsEstimateNumberOfAnalysts.toString(),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.earningsEstimateGrowth != null
                            ? item.earningsEstimateGrowth!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.revenueEstimateAvg != null
                            ? formatNumbers(item.revenueEstimateAvg!)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.revenueEstimateLow != null
                            ? formatNumbers(item.revenueEstimateLow!)
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
                        item.revenueEstimateHigh != null
                            ? formatNumbers(item.revenueEstimateHigh!)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.revenueEstimateYearAgoEps != null
                            ? formatNumbers(item.revenueEstimateYearAgoEps!)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.revenueEstimateNumberOfAnalysts != null
                            ? item.revenueEstimateNumberOfAnalysts!.toString()
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.revenueEstimateGrowth != null
                            ? item.revenueEstimateGrowth!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.epsTrendCurrent != null
                            ? item.epsTrendCurrent!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h5,

                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.epsTrend7DaysAgo != null
                            ? item.epsTrend7DaysAgo!.toStringAsFixed(2)
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
                        item.epsTrend30DaysAgo != null
                            ? item.epsTrend30DaysAgo!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.epsTrend60DaysAgo != null
                            ? item.epsTrend60DaysAgo!.toStringAsFixed(2)
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
                        item.epsTrend90DaysAgo != null
                            ? item.epsTrend90DaysAgo!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,

                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.epsRevisionsUpLast7Days != null
                            ? item.epsRevisionsUpLast7Days!.toStringAsFixed(2)
                            : "N/A",
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        variant: TextVariant.h5,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.epsRevisionsUpLast30Days != null
                            ? item.epsRevisionsUpLast30Days!.toStringAsFixed(2)
                            : "N/A",
                        variant: TextVariant.h5,

                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.epsRevisionsDownLast7Days != null
                            ? item.epsRevisionsDownLast7Days!.toStringAsFixed(2)
                            : "N/A",
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                        variant: TextVariant.h5,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.epsRevisionsDownLast30Days != null
                            ? item.epsRevisionsDownLast30Days!.toStringAsFixed(
                                2,
                              )
                            : "N/A",
                        variant: TextVariant.h5,

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
}

String formatNumbers(num number) {
  String formatted = NumberFormat.decimalPattern().format(number);
  return formatted;
}
