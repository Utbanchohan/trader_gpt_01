import 'package:flutter/material.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class InsiderTraderTable extends StatelessWidget {
  const InsiderTraderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        color: AppColors.color091224, // dark background
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 Header Row (Title + Icon)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MdSnsText(
                  "Insider Trader",
                  color: AppColors.fieldTextColor,
                  fontWeight: TextFontWeightVariant.h4,
                  variant: TextVariant.h3,
                ),
                Image.asset(
                  Assets.images.calendar1.path,
                  height: 16,
                  width: 14,
                ),
              ],
            ),
          ),

          /// 🔹 Scrollable Table Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                /// Table Header
                Container(
                  width: 600, // 👈 controls total table width
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  color: AppColors.color1B254B,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: MdSnsText(
                            "Name",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: MdSnsText(
                            "Form Type",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: MdSnsText(
                            "File Date",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: MdSnsText(
                            "Transaction",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: MdSnsText(
                            "Code",
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h4,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: AppColors.color0x0x1AB3B3B3, height: 1),

                /// 🔹 Data Rows
                _buildRow(
                  "Coleman Amy",
                  "4",
                  "9/15/2025",
                  "F-InKind",
                  "F-InKind",
                  Colors.orange,
                ),
                _buildRow(
                  "Nadella Satya",
                  "4",
                  "9/04/2025",
                  "S-Sale",
                  "S-Sale",
                  Colors.green,
                ),
                _buildRow(
                  "Nadella Satya",
                  "4",
                  "9/04/2025",
                  "S-Sale",
                  "S-Sale",
                  Colors.green,
                ),
                _buildRow(
                  "Nadella Satya",
                  "4",
                  "9/04/2025",
                  "S-Sale",
                  "S-Sale",
                  Colors.green,
                ),
                _buildRow(
                  "Nadella Satya",
                  "4",
                  "9/04/2025",
                  "S-Sale",
                  "S-Sale",
                  Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 Row Builder
  Widget _buildRow(
    String name,
    String form,
    String fileDate,
    String transaction,
    String code,
    Color badgeColor,
  ) {
    return Container(
      width: 600, // 👈 same width as header for alignment
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.color0x0x1AB3B3B3, width: 1),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: MdSnsText(
                name,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: MdSnsText(
                form,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: MdSnsText(
                fileDate,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: MdSnsText(
                transaction,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
                color: AppColors.white,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              decoration: BoxDecoration(
                border: Border.all(color: badgeColor, width: 1),
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent,
              ),
              child: MdSnsText(
                code,
                textAlign: TextAlign.center,
                color: badgeColor,
                variant: TextVariant.h5,
                fontWeight: TextFontWeightVariant.h2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
