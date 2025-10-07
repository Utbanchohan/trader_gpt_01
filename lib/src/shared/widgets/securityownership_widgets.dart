import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SecurityOwnershipTable extends StatelessWidget {
  const SecurityOwnershipTable({super.key});

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
          /// 🔹 Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: MdSnsText(
              "Security Ownership",
              color: AppColors.color9EAAC0,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h3,
            ),
          ),

          /// 🔹 Horizontal scroll
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                /// Header
                Container(
                  width: 400,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.color1B254B,
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.color0x0x1AB3B3B3,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: MdSnsText(
                          "Name",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MdSnsText(
                          "Form Type",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MdSnsText(
                          "Effective Date",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MdSnsText(
                          "File Date",
                          variant: TextVariant.h4,
                          fontWeight: TextFontWeightVariant.h4,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// 🔹 Data Rows
                _buildRow(
                  "JPMORGAN CHASE & CO",
                  "OTR",
                  "09/30/2022",
                  "11/14/2022",
                ),
                _buildRow(
                  "FRANKLIN RESOURCES INC",
                  "DFND",
                  "09/30/2022",
                  "11/14/2022",
                ),
                _buildRow(
                  "JENNISON ASSOCIATES LLC",
                  "DFND",
                  "09/30/2022",
                  "11/01/2022",
                ),
                _buildRow(
                  "BANK OF AMERICA CORP /DE/",
                  "DFND",
                  "09/30/2022",
                  "11/14/2022",
                ),
                _buildRow(
                  "WELLS FARGO & COMPANY/MN",
                  "DFND",
                  "09/30/2022",
                  "11/14/2022",
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
