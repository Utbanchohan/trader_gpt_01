import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/extensions/number_formatter_extension.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/company_detail/company_detail_model.dart';

class OutstandingSharesChart extends StatelessWidget {
  final List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares;

  const OutstandingSharesChart({
    super.key,
    required this.fundamentalsOutstandingShares,
  });

  double parseDateToDouble(dynamic date) {
    if (date is num) {
      return date.toDouble();
    } else if (date is String) {
      // 👇 Try parsing the string
      try {
        final parsed = DateTime.parse(date);
        // Convert to fractional year, e.g., 2024.25 for March
        return parsed.year + (parsed.month - 1) / 12;
      } catch (e) {
        // Fallback: try to parse only the year part
        final yearMatch = RegExp(r'\d{4}').firstMatch(date);
        if (yearMatch != null) {
          return double.parse(yearMatch.group(0)!);
        }
      }
    }
    // Default fallback
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final List<FlSpot> spots = fundamentalsOutstandingShares!.map((item) {
      double date = parseDateToDouble(item.Date);
      // print(date.toString());
      final x = (date as num).toDouble();
      final y = (item.sharesMillion as num).toDouble();
      return FlSpot(x, y);
    }).toList();
    // print(spots.toString());

    return Container(
      decoration: BoxDecoration(
        // color: AppColors.white,
        border: Border.all(color: AppColors.color0x0x1AB3B3B3),
        borderRadius: BorderRadius.circular(20),
      ),
      // margin: const EdgeInsets.all(16),
      // decoration: BoxDecoration(
      //   color: const Color(0xFF0D1B2A), // Dark background
      //   borderRadius: BorderRadius.circular(12),
      // ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MdSnsText(
              "Outstanding Shares",
              color: AppColors.fieldTextColor,
              variant: TextVariant.h3,
              fontWeight: TextFontWeightVariant.h3,
            ),
            SizedBox(height: 12),
            Container(
              decoration: const BoxDecoration(color: AppColors.color0xFF0B1224),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 210,
                    child: LineChart(
                      duration: Duration(milliseconds: 1200),

                      curve: Curves.easeInOutCubic,
                      LineChartData(
                        gridData: FlGridData(
                          horizontalInterval: 10,
                          show: true,
                          drawVerticalLine: false,
                          getDrawingHorizontalLine: (value) => FlLine(
                            color: AppColors.color0x0x1AB3B3B3,
                            strokeWidth: 1,
                          ),
                        ),
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              maxIncluded: false,
                              minIncluded: false,
                              showTitles: true,
                              reservedSize: 45.w,
                              getTitlesWidget: (value, meta) {
                                return MdSnsText(
                                  Filters.systemNumberConvention(
                                    value,
                                    isPrice: false,
                                    isAbs: false,
                                    fromChart: true,
                                  ).replaceAll("\$", ""),
                                  // "\$${value.toStringAsFixed(0)}M",
                                  fontWeight: TextFontWeightVariant.h4,
                                  variant: TextVariant.h8,
                                  color: AppColors.color0xB3FFFFFF,
                                );
                              },
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 5,
                              getTitlesWidget: (value, meta) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    right: 20,
                                  ),
                                  child: MdSnsText(
                                    value.toInt().toString(),
                                    fontWeight: TextFontWeightVariant.h4,
                                    variant: TextVariant.h8,
                                    color: AppColors.color0xB3FFFFFF,
                                  ),
                                );
                              },
                            ),
                          ),

                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: const Border(
                            left: BorderSide(
                              color: AppColors.color0x0x1AB3B3B3,
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: AppColors.color0x0x1AB3B3B3,
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Color.fromARGB(0, 151, 10, 10),
                            ),
                            top: BorderSide(color: AppColors.color0x0x1AB3B3B3),
                          ),
                        ),
                        minX: spots.isNotEmpty
                            ? spots
                                  .map((e) => e.x)
                                  .reduce((a, b) => a < b ? a : b)
                            : 0.0,
                        maxX: spots.isNotEmpty
                            ? spots
                                  .map((e) => e.x)
                                  .reduce((a, b) => a > b ? a : b)
                            : 0.0,
                        minY: spots.isNotEmpty
                            ? spots
                                  .map((e) => e.y)
                                  .reduce((a, b) => a < b ? a : b)
                            : 0.0,
                        maxY: spots.isNotEmpty
                            ? spots
                                  .map((e) => e.y)
                                  .reduce((a, b) => a > b ? a : b)
                            : 0.0,
                        lineBarsData: [
                          LineChartBarData(
                            spots: spots,
                            isCurved: false,
                            color: Colors.blueAccent,
                            barWidth: 3,
                            dotData: FlDotData(show: false),
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
