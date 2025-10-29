import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class TableShimmer extends StatelessWidget {
  final String title;
  const TableShimmer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.colorB3B3B3, width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🟡 Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: MdSnsText(
              title,
              color: AppColors.color9EAAC0,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
          ),

          // 🟢 Shimmer Table
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowHeight: 40.h,
              dataRowHeight: 50.h,
              horizontalMargin: 15,
              columnSpacing: 20,
              headingRowColor: WidgetStateProperty.resolveWith<Color?>(
                (states) => AppColors.color1B254B,
              ),
              columns: List.generate(
                6,
                (index) => DataColumn(label: _shimmerBox(width: 60.w)),
              ),
              rows: List.generate(
                6,
                (rowIndex) => DataRow(
                  cells: List.generate(
                    6,
                    (cellIndex) => DataCell(_shimmerBox(width: 60.w)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 🩵 Helper Widget for shimmer placeholder
  Widget _shimmerBox({double? width, double? height}) {
    return Shimmer.fromColors(
      baseColor: AppColors.color1B254B.withOpacity(0.3),
      highlightColor: AppColors.colorB3B3B3.withOpacity(0.2),
      child: Container(
        height: height ?? 16.h,
        width: width ?? 80.w,
        decoration: BoxDecoration(
          color: AppColors.fieldTextColor,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
