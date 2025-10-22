import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/security_ownership_model/security_ownership_model.dart';

class SecurityOwnershipTable extends StatelessWidget {
  final List<SecurityOwnership> data;
  const SecurityOwnershipTable({super.key, required this.data});

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
              "Security Ownership",
              color: AppColors.color9EAAC0,
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
                    "Name",
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Form Type',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Effective Date',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'File Date',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Ownership\nPercent',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Ownership\nPercent Change',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Shares',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Shares Change',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Shares Percent\nChange',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Value',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Value Change',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Value Percent\nChange',
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: data.take(6).map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.name,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.formType,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate(item.effectiveDate),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate(item.fileDate),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      MdSnsText(
                        item.ownershipPercent.toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        color: AppColors.color00FF55,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.ownershipPercentChange),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: item.ownershipPercentChange > 0
                            ? AppColors.color00FF55
                            : AppColors.color0xFFFFB21D,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.shares),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0098E4,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.sharesChange),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: item.sharesChange < 0
                            ? AppColors.color00FF55
                            : AppColors.color0xFFFFB21D,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.sharesPercentChange),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: item.sharesPercentChange < 0
                            ? AppColors.color00FF55
                            : AppColors.color0xFFFFB21D,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.value),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.color0098E4,

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.valueChange),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: item.valueChange < 0
                            ? AppColors.color00FF55
                            : AppColors.color0xFFFFB21D,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        formatNumbers(item.valuePercentChange),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: item.valuePercentChange < 0
                            ? AppColors.color00FF55
                            : AppColors.color0xFFFFB21D,
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

    // Container(
    //   decoration: BoxDecoration(
    //     color: AppColors.color091224,
    //     borderRadius: BorderRadius.circular(20),
    //     border: Border.all(color: AppColors.color0x0x1AB3B3B3, width: 1),
    //   ),
    //   clipBehavior: Clip.antiAlias,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       /// 🔹 Title
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
    //         child: MdSnsText(
    //           "Security Ownership",
    //           color: AppColors.color9EAAC0,
    //           fontWeight: TextFontWeightVariant.h4,
    //           variant: TextVariant.h3,
    //         ),
    //       ),

    //       /// 🔹 Horizontal scroll
    //       SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Column(
    //           children: [
    //             /// Header
    //             Container(
    //               width: 400,
    //               padding: const EdgeInsets.symmetric(
    //                 vertical: 12,
    //                 horizontal: 10,
    //               ),
    //               decoration: BoxDecoration(
    //                 color: AppColors.color1B254B,
    //                 border: Border(
    //                   bottom: BorderSide(
    //                     color: AppColors.color0x0x1AB3B3B3,
    //                     width: 1,
    //                   ),
    //                 ),
    //               ),
    //               child: Row(
    //                 children: [
    //                   Expanded(
    //                     flex: 3,
    //                     child: MdSnsText(
    //                       "Name",
    //                       variant: TextVariant.h4,
    //                       fontWeight: TextFontWeightVariant.h4,
    //                       color: AppColors.white,
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: MdSnsText(
    //                       "Form Type",
    //                       variant: TextVariant.h4,
    //                       fontWeight: TextFontWeightVariant.h4,
    //                       color: AppColors.white,
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: MdSnsText(
    //                       "Effective Date",
    //                       variant: TextVariant.h4,
    //                       fontWeight: TextFontWeightVariant.h4,
    //                       color: AppColors.white,
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: MdSnsText(
    //                       "File Date",
    //                       variant: TextVariant.h4,
    //                       fontWeight: TextFontWeightVariant.h4,
    //                       color: AppColors.white,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),

    //             ...data.take(6).map((item) {
    //               return _buildRow(
    //                 "JPMORGAN CHASE & CO",
    //                 "OTR",
    //                 "09/30/2022",
    //                 "11/14/2022",
    //               );
    //             }),

    //             // _buildRow(
    //             //   "JPMORGAN CHASE & CO",
    //             //   "OTR",
    //             //   "09/30/2022",
    //             //   "11/14/2022",
    //             // ),
    //             // _buildRow(
    //             //   "FRANKLIN RESOURCES INC",
    //             //   "DFND",
    //             //   "09/30/2022",
    //             //   "11/14/2022",
    //             // ),
    //             // _buildRow(
    //             //   "JENNISON ASSOCIATES LLC",
    //             //   "DFND",
    //             //   "09/30/2022",
    //             //   "11/01/2022",
    //             // ),
    //             // _buildRow(
    //             //   "BANK OF AMERICA CORP /DE/",
    //             //   "DFND",
    //             //   "09/30/2022",
    //             //   "11/14/2022",
    //             // ),
    //             // _buildRow(
    //             //   "WELLS FARGO & COMPANY/MN",
    //             //   "DFND",
    //             //   "09/30/2022",
    //             //   "11/14/2022",
    //             // ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  static Widget _buildRow(
    String name,
    String form,
    String effective,
    String file,
  ) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.color0x0x1AB3B3B3, width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: MdSnsText(
                name,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: MdSnsText(
                form,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: MdSnsText(
                effective,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: MdSnsText(
                file,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
              ),
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

String formatNumbers(num number) {
  String formatted = NumberFormat.decimalPattern().format(number);
  return formatted;
}
