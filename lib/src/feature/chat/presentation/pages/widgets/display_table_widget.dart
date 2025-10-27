import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/markdown_widget.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class DisplayTableWidgets extends StatelessWidget {
  final List<ModelOfTable> modelOfTable;
  final List<String> headings;
  const DisplayTableWidgets({
    super.key,
    required this.modelOfTable,
    required this.headings,
  });

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
              columns: headings.map((item) {
                return DataColumn(
                  label: MdSnsText(
                    item.toString(),
                    textAlign: TextAlign.center,
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                );
              }).toList(),

              rows: modelOfTable.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                final color = index.isEven
                    ? WidgetStateProperty.all(Colors.transparent)
                    : WidgetStateProperty.all(AppColors.shadowColor);
                return DataRow(
                  color: color,
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.date,
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        Filters.systemNumberConvention(
                          item.revenueAvg,
                          isPrice: false,
                          isAbs: false,
                        ),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        Filters.systemNumberConvention(
                          item.ebitdaAvg,
                          isPrice: false,
                          isAbs: false,
                        ),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        Filters.systemNumberConvention(
                          item.netIncomeAvg,
                          isPrice: false,
                          isAbs: false,
                        ),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h2,
                        color: AppColors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DataCell(
                      MdSnsText(
                        Filters.systemNumberConvention(
                          item.epsAvg,
                          isPrice: false,
                          isAbs: false,
                        ),
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
