import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class PerformanceTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      // ❌ yahan border nahi dena
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      children: [
        // 🔹 Header Row
        TableRow(
          decoration: BoxDecoration(
            color: AppColors.color1B254B,
            borderRadius: BorderRadius.circular(10),
          ),
          children: [
            _tableHeader("Year", ""),
            _tableHeader("Revenue", "(in billions)"),
            _tableHeader("Net Income", "(in billions)"),
            _tableHeader("EPS", "(Earnings per Share)"),
          ],
        ),

        // 🔹 Gap Row
        TableRow(
          children: List.generate(4, (index) => const SizedBox(height: 10)),
        ),

        // 🔹 Data Rows (with bottom border)
        for (int i = 0; i < 7; i++)
          TableRow(
            decoration: BoxDecoration(
              color: AppColors.color091224,
              border: Border(bottom: BorderSide(color: AppColors.color1B254B)),
            ),
            children: [
              _tableCell("2024"),
              _tableCell("\$394.33"),
              _tableCell("\$260.17"),
              _tableCell("\$274.52"),
            ],
          ),
      ],
    );
  }

  Widget _tableHeader(String text, String subtitle) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MdSnsText(
              text,
              variant: TextVariant.h4,
              fontWeight: TextFontWeightVariant.h1,

              color: AppColors.white,
            ),
            if (subtitle.isNotEmpty)
              MdSnsText(
                subtitle,
                textAlign: TextAlign.center,
                variant: TextVariant.h5,
                fontWeight: TextFontWeightVariant.h4,

                color: AppColors.fieldTextColor,
              ),
          ],
        ),
      ),
    );
  }

  Widget _tableCell(String text) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6),
        alignment: Alignment.center,
        child: MdSnsText(
          text,
          color: AppColors.white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
