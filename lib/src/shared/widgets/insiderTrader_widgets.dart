import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class InsiderTraderTable extends StatelessWidget {
  const InsiderTraderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.color0x0x1AB3B3B3,
        ), // background (dark blue like your UI)
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: MdSnsText(
              "Insider Trader",
              color: AppColors.fieldTextColor,
              fontWeight: TextFontWeightVariant.h4,
              variant: TextVariant.h2,
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Type",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "File Date",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: MdSnsText(
                    "Transaction",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MdSnsText(
                    "Code",
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          Divider(color: AppColors.color0x0x1AB3B3B3, height: 1),

          // Rows
          _buildRow(
            "Coleman Amy",
            "4",
            "9/15/2025",
            "9/15/2025",
            "F-InKind",
            Colors.orange,
          ),
          _buildRow(
            "Nadella Satya",
            "4",
            "9/04/2025",
            "9/03/2025",
            "S-Sale",
            Colors.green,
          ),
          _buildRow(
            "Nadella Satya",
            "4",
            "9/04/2025",
            "9/03/2025",
            "S-Sale",
            Colors.green,
          ),
          _buildRow(
            "Nadella Satya",
            "4",
            "9/04/2025",
            "9/03/2025",
            "S-Sale",
            Colors.green,
          ),
          _buildRow(
            "Nadella Satya",
            "4",
            "9/04/2025",
            "9/03/2025",
            "S-Sale",
            Colors.green,
          ),
        ],
      ),
    );
  }

  static const TextStyle _headerStyle = TextStyle(
    color: Colors.white70,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle _cellStyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
  );

  Widget _buildRow(
    String name,
    String form,
    String fileDate,
    String transaction,
    String code,
    Color badgeColor,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: MdSnsText(
                  name,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 2,
                child: MdSnsText(
                  form,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 2,
                child: MdSnsText(
                  fileDate,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 3,
                child: MdSnsText(
                  transaction,
                  variant: TextVariant.h5,
                  fontWeight: TextFontWeightVariant.h2,
                  color: AppColors.white,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: badgeColor, width: 1),
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.transparent,
                  ),
                  child: MdSnsText(
                    code,
                    textAlign: TextAlign.center,
                    color: badgeColor,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    variant: TextVariant.h5,
                    fontWeight: TextFontWeightVariant.h2,
                  ),
                ),
              ),
            ],
          ),
        ),

        // 👇 Divider Line
        Container(
          height: 1,
          width: double.infinity,
          color:
              AppColors.color0x0x1AB3B3B3, // light grey ya jo tum use karte ho
          // margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
      ],
    );
  }
}
