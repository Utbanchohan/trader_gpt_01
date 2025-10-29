import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/socket/providers/stocks_price.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/price_performance_model/price_performance_model.dart';
import '../extensions/number_formatter_extension.dart';

class PricePerformanceWidget extends StatelessWidget {
  final PricePerformance? data;
  const PricePerformanceWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // double percentage = item.periodHighPercentage ?? 0; // e.g. 0–100 range
    // double barWidth =
    //     (percentage.clamp(0, 100) / 100) * 100.w; // full width = 100.w

    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.color1AB3B3B3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🟢 Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MdSnsText(
                      "Price Performance",
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
                SizedBox(height: 2.h),
                MdSnsText(
                  "Description for Price Performance",
                  variant: TextVariant.h4,
                  fontWeight: TextFontWeightVariant.h4,
                  color: AppColors.fieldTextColor,
                ),
              ],
            ),
          ),

          // 🟡 Scrollable Table
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowHeight: 40.h,
              columnSpacing: 40.w,
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
                    "Period",
                    textAlign: TextAlign.center,
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Period Low',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Period High',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
                DataColumn(
                  label: MdSnsText(
                    'Performance',
                    variant: TextVariant.h4,
                    fontWeight: TextFontWeightVariant.h2,
                    color: AppColors.white,
                  ),
                ),
              ],
              rows: data!.data.map((item) {
                return DataRow(
                  cells: [
                    DataCell(
                      MdSnsText(
                        item.period.toString().capitalize(),
                        variant: TextVariant.h4,
                        fontWeight: TextFontWeightVariant.h4,
                        color: AppColors.color9EAAC0,
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width / 4,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: Filters.systemNumberConvention(
                                          item.periodLow,
                                          isPrice: false,
                                          alwaysShowTwoDecimal: true,
                                        ),

                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: Filters.systemNumberConvention(
                                          // "nsndnd",
                                          "  ${Filters.systemNumberConvention(item.periodLow, isPrice: false, alwaysShowTwoDecimal: true)}%",
                                        ),
                                        style: TextStyle(
                                          color:
                                              item.periodLowPercentage !=
                                                      null &&
                                                  item.periodLowPercentage! > 0
                                              ? AppColors.color06D54E
                                              : AppColors.redFF3B3B,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "On ",
                                      style: TextStyle(
                                        color: AppColors.color9EAAC0,

                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: item.periodLowDate.toString(),
                                      style: TextStyle(
                                        color: AppColors.color9EAAC0,

                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.w),

                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 12.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.color091224,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),

                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: item.barPositionPercentage,
                                    height: 12.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.redFF3B3B,
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(20.r),
                                        right: Radius.zero,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: item.barPositionPercentage,
                                  // -2.w,
                                  top: -2.h,
                                  child: Container(
                                    width: 4.w,
                                    height: 16.h,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: Filters.systemNumberConvention(
                                    // "nsndnd",
                                    item.periodHigh,
                                    isPrice: false,
                                    alwaysShowTwoDecimal: true,
                                  ),
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      "  ${Filters.systemNumberConvention(item.periodHighPercentage, isPrice: false, alwaysShowTwoDecimal: true)}%",
                                  style: TextStyle(
                                    color:
                                        item.periodHighPercentage != null &&
                                            item.periodHighPercentage! > 0
                                        ? AppColors.color06D54E
                                        : AppColors.redFF3B3B,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "On",
                                  style: TextStyle(
                                    color: AppColors.color9EAAC0,

                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: item.periodHighDate
                                      .toString()
                                      .capitalize(),
                                  style: TextStyle(
                                    color: AppColors.color9EAAC0,

                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: Filters.systemNumberConvention(
                                        // "nsndnd",
                                        item.performance,
                                        isPrice: false,
                                        alwaysShowTwoDecimal: true,
                                      ),
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "  ${Filters.systemNumberConvention(item.performancePercentage, isPrice: false, alwaysShowTwoDecimal: true)}%",
                                      style: TextStyle(
                                        color:
                                            item.performancePercentage !=
                                                    null &&
                                                item.performancePercentage! > 0
                                            ? AppColors.color06D54E
                                            : AppColors.redFF3B3B,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Since ",
                                      style: TextStyle(
                                        color: AppColors.color9EAAC0,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: item.performanceDate.toString(),
                                      style: TextStyle(
                                        color: AppColors.color9EAAC0,

                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.w),

                          SizedBox(
                            width: 65.w,
                            height: 15.h,
                            child: Sparkline(
                              data: item.chart != null && item.chart!.isNotEmpty
                                  ? item.chart!
                                  : [0, 0, 0, 0, 0],

                              lineWidth: 2.0,
                              lineColor:
                                  item.chart != null && item.chart!.isNotEmpty
                                  ? item.chart!.last - item.chart!.first < 0
                                        ? AppColors.redFF3B3B
                                        : AppColors.color06D54E
                                  : AppColors.color06D54E,

                              pointsMode: PointsMode.none,
                              pointColor: Colors.white,
                              useCubicSmoothing: false,
                              sharpCorners: true,
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors:
                                    item.chart != null && item.chart!.isNotEmpty
                                    ? item.chart!.last - item.chart!.first < 0
                                          ? [
                                              AppColors.redFF3B3B.withOpacity(
                                                0.5,
                                              ),
                                              AppColors.redFF3B3B.withOpacity(
                                                0.2,
                                              ),
                                            ]
                                          : [
                                              AppColors.color06D54E.withOpacity(
                                                0.5,
                                              ),
                                              AppColors.color06D54E.withOpacity(
                                                0.2,
                                              ),
                                            ]
                                    : [
                                        AppColors.color06D54E.withOpacity(0.5),
                                        AppColors.color06D54E.withOpacity(0.2),
                                      ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),

            //  Column(
            //   children: [
            //     Row(
            //       children: [
            //         _headerText("Period"),
            //         _headerText("Period Low"),
            //         SizedBox(width: 120.w),
            //         _headerText("Period High"),
            //         _headerText("Performance"),
            //         SizedBox(width: 45.w),
            //       ],
            //     ),

            //     // Rows
            //     _buildRow(
            //       "2-Month",
            //       20,
            //       80,
            //       "45",
            //       "3.58%",
            //       "49.12",
            //       "-5.1%",
            //       "-1.95",
            //       "-4.01%",
            //       Colors.green,
            //       AppColors.color0xFFFF2366,
            //     ),
            //     _buildRow(
            //       "6-Month",
            //       10,
            //       60,
            //       "33.53",
            //       "39.01%",
            //       "49.65",
            //       "-6.12%",
            //       "-4.28",
            //       "10.11%",
            //       Colors.green,
            //       AppColors.color0xFFFF2366,
            //     ),
            //     _buildRow(
            //       "YTD",
            //       30,
            //       90,
            //       "5.95",
            //       "683.36%",
            //       "49.65",
            //       "-6.12%",
            //       "-4.28",
            //       "10.11%",
            //       Colors.green,
            //       AppColors.color0xFFFF2366,
            //     ),
            //     _buildRow(
            //       "52-Week",
            //       15,
            //       75,
            //       "5.95",
            //       "683.36%",
            //       "49.65",
            //       "-6.12%",
            //       "-4.28",
            //       "10.11%",
            //       Colors.green,
            //       AppColors.color0xFFFF2366,
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    String period,
    double start,
    double end,
    String lowValue,
    String lowPercent,
    String highValue,
    String highPercent,
    String perfValue,
    String perfPercent,
    Color upColor,
    Color downColor,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _cell(period),

          _lowHighCell(lowValue, lowPercent, upColor, "on 04/07/2025"),

          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Container(
              width: 110.w,
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: AppColors.color091224,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),

                  Positioned(
                    left: 0,
                    child: Container(
                      width: end,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: AppColors.redFF3B3B,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20.r),
                          right: Radius.zero,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: end - 1,
                    top: -2.h,
                    child: Container(
                      width: 4.w,
                      height: 16.h,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          _lowHighCell(highValue, highPercent, downColor, "on 04/07/2025"),
          _lowHighCell(perfValue, perfPercent, upColor, "since 04/07/2025"),

          // 🖼️ Image (no heading)
          Image.asset(Assets.images.stock.path, height: 20.h, width: 45.w),
        ],
      ),
    );
  }

  Widget _cell(String text) {
    return Container(
      width: 120.w,
      child: MdSnsText(
        text,
        color: AppColors.color9EAAC0,
        variant: TextVariant.h4,
        fontWeight: TextFontWeightVariant.h4,
      ),
    );
  }

  Widget _lowHighCell(String value, String percent, Color color, String date) {
    return Container(
      width: 120.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Value + Percent (now on top)
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$value ",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: percent,
                  style: TextStyle(
                    color: color,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),

          // 🔹 Date (moved below)
          MdSnsText(
            date,
            color: AppColors.color9EAAC0,
            variant: TextVariant.h5,
            fontWeight: TextFontWeightVariant.h4,
          ),
        ],
      ),
    );
  }
}
