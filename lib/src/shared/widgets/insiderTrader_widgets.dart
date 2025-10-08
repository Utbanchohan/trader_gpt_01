import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/insider_transaction/insider_transaction_model.dart'
    show InsiderTransactionResponse;

class InsiderTraderTable extends StatelessWidget {
  final InsiderTransactionResponse data;
  const InsiderTraderTable({super.key, required this.data});

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
              "Insider Trader",
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
                    "Name",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Form Type',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'File Date',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Transaction',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Code',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Shares',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Values',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'SEC Link',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h4,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: data.data.take(6).map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.name,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.formType,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate(item.fileDate),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        _formatDate(item.transactionDate),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    DataCell(
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.color00FF55,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent,
                        ),
                        child: MdSnsText(
                          item.code,
                          textAlign: TextAlign.center,
                          color: AppColors.color00FF55,
                          variant: TextVariant.h5,
                          fontWeight: TextFontWeightVariant.h2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.shares.toString(),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.color0098E4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.value.toString(),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.color0xFFFFB21D,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        item.link,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
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

    // Container(
    //   decoration: BoxDecoration(
    //     border: Border.all(color: AppColors.color0x0x1AB3B3B3),
    //     color: AppColors.color091224, // dark background
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   clipBehavior: Clip.antiAlias,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       /// 🔹 Header Row (Title + Icon)
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             MdSnsText(
    //               "Insider Trader",
    //               color: AppColors.fieldTextColor,
    //               fontWeight: TextFontWeightVariant.h4,
    //               variant: TextVariant.h3,
    //             ),
    //             Image.asset(
    //               Assets.images.calendar1.path,
    //               height: 16,
    //               width: 14,
    //             ),
    //           ],
    //         ),
    //       ),

    //       /// 🔹 Scrollable Table Section
    //       SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Column(
    //           children: [
    //             /// Table Header
    //             Container(
    //               width: 1000,
    //               padding: const EdgeInsets.symmetric(
    //                 vertical: 12,
    //                 horizontal: 10,
    //               ),
    //               color: AppColors.color1B254B,
    //               child: Row(
    //                 children: [
    //                   Expanded(
    //                     flex: 3,
    //                     child: Padding(
    //                       padding: const EdgeInsets.only(right: 8),
    //                       child: MdSnsText(
    //                         "Name",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: Padding(
    //                       padding: const EdgeInsets.symmetric(horizontal: 6),
    //                       child: MdSnsText(
    //                         "Form Type",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 3,
    //                     child: Padding(
    //                       padding: const EdgeInsets.symmetric(horizontal: 6),
    //                       child: MdSnsText(
    //                         "File Date",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 3,
    //                     child: Padding(
    //                       padding: const EdgeInsets.symmetric(horizontal: 6),
    //                       child: MdSnsText(
    //                         "Transaction",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 3,
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: MdSnsText(
    //                         "Code",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: MdSnsText(
    //                         "Shares",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 2,
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: MdSnsText(
    //                         "Values",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex: 5,
    //                     child: Align(
    //                       alignment: Alignment.center,
    //                       child: MdSnsText(
    //                         "SEC Link",
    //                         variant: TextVariant.h4,
    //                         fontWeight: TextFontWeightVariant.h4,
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),

    //             Divider(color: AppColors.color0x0x1AB3B3B3, height: 1),

    //             Column(
    //               children: data.data.take(6).map((item) {
    //                 return _buildRow(
    //                   item.name,
    //                   item.formType,
    //                   item.fileDate,
    //                   item.transactionDate,
    //                   item.code,
    //                   item.shares.toString(),
    //                   item.value.toString(),
    //                   item.link,
    //                 );
    //               }).toList(),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  String _formatDate(String date) {
    try {
      return DateFormat('MM/dd/yyyy').format(DateTime.parse(date));
    } catch (_) {
      return '-';
    }
  }

  /// 🔹 Row Builder
}
