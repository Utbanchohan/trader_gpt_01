import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/fundamental_model/fundamental_model.dart';
import '../../feature/analytics/domain/model/matrics_data_model/matrics_data_model.dart';
import '../../feature/analytics/domain/model/share_stats/share_stats.dart';
import '../extensions/number_formatter_extension.dart';

extension MatricsDataMapper on MatricsData {
  List<Map<String, dynamic>> toKeyValueList() {
    final json =
        toJson(); // <-- uses freezed/json_serializable generated method
    return json.entries.map((e) => {"key": e.key, "value": e.value}).toList();
  }
}

final compactFormatter = NumberFormat.compact();

class ShareStructureCard extends StatelessWidget {
  List<MatricsData>? matrics;
  SharesData? shareData;
  FundamentalData? fundamentalData;
  Headings heading;

  ShareStructureCard({
    super.key,
    this.matrics,
    this.fundamentalData,
    this.shareData,
    required this.heading,
  });

  final double _radius = 20.0;

  @override
  Widget build(BuildContext context) {
    var data = heading.value == Headings.matrics.value
        ? matrics![0].toKeyValueList()
        : heading.value == Headings.fundamental.value
        ? fundamentalData!.fundamentals
        : heading.value == Headings.shareStructure.value
        ? shareData
        : null;
    final keyValueList = matrics != null ? matrics![0].toKeyValueList() : [];

    List<String> shareStats = [
      "Authorized Shares",
      "Outstanding Shares",
      "Percent Insiders",
      "Percent Instituation",
      "Held at DTC",
      "Float",
    ];

    List<String> fundamentals = [
      "Annual Sales",
      "Annual Income",
      "Price/Cash Flow",
      "Short Interest",
      "Short Percent of Float",
      "Days to Cover",
    ];

    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   // color: AppColors.color091224,
      //   border: Border(bottom: BorderSide(color: AppColors.color1B254B)),
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),

        border: Border.all(color: AppColors.colorB3B3B3),
        color: AppColors.primaryColor,
      ),
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MdSnsText(
                      heading.value,
                      variant: TextVariant.h3,
                      fontWeight: TextFontWeightVariant.h3,
                      color: AppColors.fieldTextColor,
                    ),
                    SizedBox(width: 5.w),
                    Icon(
                      Icons.info_outline,
                      size: 14.sp,
                      color: AppColors.fieldTextColor,
                    ),
                  ],
                ),
                SizedBox(height: 2),
                MdSnsText(
                  'Data delayed by 15 minutes',
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.fieldTextColor,
                ),
              ],
            ),
          ),

          heading.value == Headings.matrics.value
              ? SizedBox(
                  height: MediaQuery.sizeOf(context).height / 3,
                  // Use deeper navy for striped rows like image
                  child: ListView.builder(
                    itemCount: keyValueList.length,

                    itemBuilder: (context, index) {
                      final item = keyValueList[index];
                      final bool isStriped = index % 2 == 0;
                      final rowColor = isStriped
                          ? AppColors.bubbleColor
                          : Colors.transparent;

                      // Right side numeric color (blue-ish) for some rows
                      final valueIsHighlighted =
                          index == 0 || index == 1 || index == 5;
                      return Container(
                        color: rowColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 2,
                              child: MdSnsText(
                                item["key"]
                                    .toString()
                                    .replaceAll("_", " ")
                                    .split(" ")
                                    .map(
                                      (word) => word.isEmpty
                                          ? ""
                                          : "${word[0].toUpperCase()}${word.substring(1)}",
                                    )
                                    .join(" "),
                                maxLines: 1,

                                variant: TextVariant.h4,
                                fontWeight: TextFontWeightVariant.h4,
                                color: AppColors.white,
                              ),
                            ),

                            MdSnsText(
                              // item['value'].toString(),
                              compactFormatter.format(item['value']),
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h1,
                              color: valueIsHighlighted
                                  ? AppColors.color0xFF00C5FF
                                  : AppColors.white,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              : heading.value == Headings.shareStructure.value
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: shareStats.length,

                  itemBuilder: (context, index) {
                    final bool isStriped = index % 2 == 0;
                    final rowColor = isStriped
                        ? AppColors.bubbleColor
                        : Colors.transparent;

                    final valueIsHighlighted =
                        index == 0 || index == 1 || index == 5;
                    return Container(
                      color: rowColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: MdSnsText(
                              shareStats[index],
                              maxLines: 1,
                              fontWeight: TextFontWeightVariant.h4,
                              variant: TextVariant.h4,
                              color: AppColors.white,
                            ),
                          ),

                          MdSnsText(
                            index == 0
                                ? "N/A"
                                : index == 1
                                ? shareData!.SharesOutstanding.toString()
                                : index == 2
                                ? compactFormatter.format(
                                    shareData!.PercentInsiders ?? 0,
                                  )
                                : index == 3
                                ? compactFormatter.format(
                                    shareData!.PercentInstitutions ?? 0,
                                  )
                                : index == 4
                                ? "N/A"
                                : compactFormatter.format(
                                    shareData!.SharesFloat ?? 0,
                                  ),
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h1,
                            color: valueIsHighlighted
                                ? Colors.white
                                : Colors.white,
                          ),
                        ],
                      ),
                    );
                  },
                )
              : heading.value == Headings.fundamental.value
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: fundamentals.length,
                  itemBuilder: (context, index) {
                    final bool isStriped = index % 2 == 0;
                    final rowColor = isStriped
                        ? AppColors.bubbleColor
                        : Colors.transparent;

                    // Right side numeric color (blue-ish) for some rows
                    final valueIsHighlighted =
                        index == 0 || index == 1 || index == 5;
                    return Container(
                      color: rowColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 2,
                            child: MdSnsText(
                              shareStats[index],
                              maxLines: 1,
                              variant: TextVariant.h4,
                              fontWeight: TextFontWeightVariant.h4,
                              color: AppColors.white,
                            ),
                          ),

                          MdSnsText(
                            index == 0
                                ? fundamentalData!.fundamentals.annualSale
                                : index == 1
                                ? fundamentalData!.fundamentals.annualIncome
                                : index == 2
                                ? fundamentalData!.fundamentals.priceCashFlow
                                : index == 3
                                ? fundamentalData!.fundamentals.shortInterest
                                : index == 4
                                ? Filters.systemNumberConvention(
                                    fundamentalData!
                                        .fundamentals
                                        .shortPercentOfFloat,
                                    isPrice: true,
                                  )
                                : fundamentalData!.fundamentals.daysToCover,
                            variant: TextVariant.h4,
                            fontWeight: TextFontWeightVariant.h1,

                            color: valueIsHighlighted
                                ? Colors.blue
                                : Colors.white,
                          ),
                        ],
                      ),
                    );
                  },
                )
              : SizedBox(),

          Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(_radius),
                bottomRight: Radius.circular(_radius),
              ),
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black12],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum Headings {
  matrics('Metrics'),
  fundamental('Fundamental'),
  shareStructure('Share Structure');

  final String value;

  const Headings(this.value);

  /// Optional: reverse lookup
  static Headings? fromValue(String value) {
    return Headings.values.firstWhere((e) => e.value == value);
  }
}
