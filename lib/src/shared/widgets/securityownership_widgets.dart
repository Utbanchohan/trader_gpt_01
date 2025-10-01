import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class SecurityOwnershipTable extends StatelessWidget {
  const SecurityOwnershipTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        color: AppColors.color091224, // dark background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MdSnsText(
              "Security Ownership",
              color: AppColors.white,
              variant: TextVariant.h3,
              fontWeight: TextFontWeightVariant.h4,
            ),
          ),

          // Table Header
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            color: AppColors.color1B254B,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: MdSnsText(
                    "Name",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Type",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Effective",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "File Date",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: AppColors.color0x0x1AB3B3B3, height: 1),

          // Table Rows
          _buildRow("JPMORGAN CHASE & CO", "OTR", "09/30/2022", "11/14/2022"),
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
    );
  }

  Widget _buildRow(String name, String form, String effective, String file) {
    return Column(
      children: [
        // Row Data
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: MdSnsText(
                  name,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                  maxLines: 1,
                ),
              ),
              Expanded(
                flex: 2,

                child: MdSnsText(
                  form,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                ),
              ),
              Expanded(
                flex: 2,
                child: MdSnsText(
                  effective,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                ),
              ),
              Expanded(
                flex: 2,
                child: MdSnsText(
                  file,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),

        // Full Width Divider
        Container(
          height: 1,
          width: double.infinity, // 👈 full width
          color: AppColors.color0x0x1AB3B3B3,
        ),
      ],
    );
  }
}
