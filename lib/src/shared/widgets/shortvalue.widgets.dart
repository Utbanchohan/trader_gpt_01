import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../feature/analytics/domain/model/short_volume/short_volume_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SeriesData {
  final String name;
  final List<Point> points;

  SeriesData({required this.name, required this.points});

  factory SeriesData.fromJson(Map<String, dynamic> json) {
    return SeriesData(
      name: json['name'],
      points: (json['data'] as List)
          .map((e) => Point(DateTime.parse(e[0]), (e[1] as num).toDouble()))
          .toList(),
    );
  }
}

class Point {
  final DateTime date;
  final double value;

  Point(this.date, this.value);
}

class ShortVolumeChart extends StatelessWidget {
  final List<ChartData> data;

  const ShortVolumeChart({Key? key, required this.data}) : super(key: key);

  List<Point> shortParQuantity() {
    List<Point> dummy = [];
    for (var ij in data[0].data) {
      dummy.add(Point(DateTime.parse(ij[0]), ij[1].toDouble()));
    }
    return dummy;
  }

  List<Point> shortExemptParQuantity() {
    List<Point> dummy = [];
    for (var ij in data[1].data) {
      dummy.add(Point(DateTime.parse(ij[0]), ij[1].toDouble()));
    }
    return dummy;
  }

  List<Point> totalParQuantity() {
    List<Point> dummy = [];
    for (var ij in data[2].data) {
      dummy.add(Point(DateTime.parse(ij[0]), ij[1].toDouble()));
    }
    return dummy;
  }

  @override
  Widget build(BuildContext context) {
    List<SeriesData> series = [
      SeriesData(name: data[0].name, points: shortParQuantity()),
      SeriesData(name: data[1].name, points: shortExemptParQuantity()),
      SeriesData(name: data[2].name, points: totalParQuantity()),
    ];

    final dateFormat = DateFormat('MM/dd');

    // collect all points for scaling
    final allValues = series
        .expand((s) => s.points.map((p) => p.value))
        .toList();
    final maxY = allValues.reduce((a, b) => a > b ? a : b);

    // pick the shortest list length (to keep x-index alignment)
    final minLen = series
        .map((s) => s.points.length)
        .reduce((a, b) => a < b ? a : b);

    // build line bars (3 lines)
    List<LineChartBarData> lineBars = series.map((s) {
      final spots = s.points.asMap().entries.map((e) {
        return FlSpot(e.key.toDouble(), e.value.value);
      }).toList();

      return LineChartBarData(
        spots: spots,
        isCurved: true,
        color: _getColor(s.name),
        barWidth: 1,
        dotData: FlDotData(show: false),
      );
    }).toList();

    // bottom x-axis date labels
    final dates = series.first.points.map((e) => e.date).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 300,
          child: LineChart(
            LineChartData(
              minY: 0,
              maxY: maxY * 1.1,
              gridData: FlGridData(show: false, drawVerticalLine: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false, reservedSize: 40),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (x, meta) {
                      final index = x.toInt();
                      if (index % 10 != 0 || index >= dates.length) {
                        return const SizedBox.shrink();
                      }
                      final date = dates[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: MdSnsText(
                          dateFormat.format(date),

                          variant: TextVariant.h5,
                          color: Colors.white70,
                        ),
                      );
                    },
                  ),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              lineBarsData: lineBars,
            ),
          ),
        ),
        const SizedBox(height: 10),
        // simple legend
        Wrap(
          spacing: 12,
          children: series.map((s) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 10, height: 10, color: _getColor(s.name)),
                const SizedBox(width: 4),
                MdSnsText(
                  s.name == "shortParQuantity"
                      ? "Short Par Quantity"
                      : s.name == "shortExemptParQuantity"
                      ? "Short Exempt Par Quantity"
                      : "Total Par Quantity",
                  color: AppColors.white,
                  variant: TextVariant.h4,
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }

  Color _getColor(String name) {
    switch (name) {
      case 'shortParQuantity':
        return Colors.blueAccent;
      case 'shortExemptParQuantity':
        return Colors.greenAccent;
      case 'totalParQuantity':
        return Colors.orangeAccent;
      default:
        return Colors.grey;
    }
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   if (data.isEmpty) {
  //     return Center(
  //       child: MdSnsText("No data available", color: AppColors.white),
  //     );
  //   }

  //   return Container(
  //     padding: const EdgeInsets.all(12),
  //     decoration: BoxDecoration(
  //       // color: AppColors.white,
  //       border: Border.all(color: AppColors.color0x0x1AB3B3B3),
  //       borderRadius: BorderRadius.circular(12),
  //     ),

  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         // 🔹 Title + Right text
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             MdSnsText(
  //               "Short Volume",
  //               color: AppColors.fieldTextColor,
  //               fontWeight: TextFontWeightVariant.h4,
  //               variant: TextVariant.h3,
  //             ),
  //             MdSnsText(
  //               "Shel",
  //               color: AppColors.fieldTextColor,
  //               fontWeight: TextFontWeightVariant.h4,
  //               variant: TextVariant.h3,
  //             ),
  //           ],
  //         ),
  //         SizedBox(height: 12),

  //         Container(
  //           padding: const EdgeInsets.all(16),
  //           decoration: const BoxDecoration(color: AppColors.color0xFF0B1224),
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 240,
  //                 child: LineChart(
  //                   LineChartData(
  //                     backgroundColor: AppColors.color0xFF0B1224,
  //                     gridData: FlGridData(
  //                       show: true,
  //                       drawVerticalLine: false,
  //                       getDrawingHorizontalLine: (value) => FlLine(
  //                         color: AppColors.color0x0x1AB3B3B3,

  //                         strokeWidth: 1,
  //                       ),
  //                     ),
  //                     borderData: FlBorderData(show: false),
  //                     titlesData: FlTitlesData(
  //                       leftTitles: AxisTitles(
  //                         sideTitles: SideTitles(
  //                           showTitles: true,
  //                           reservedSize: 30,
  //                           getTitlesWidget: (value, meta) => MdSnsText(
  //                             "${NumberFormat.compact().format(value)}",
  //                             fontWeight: TextFontWeightVariant.h4,
  //                             variant: TextVariant.h8,
  //                             color: AppColors.color0xB3FFFFFF,
  //                           ),
  //                         ),
  //                       ),
  //                       rightTitles: AxisTitles(
  //                         sideTitles: SideTitles(
  //                           showTitles: true,
  //                           reservedSize: 25,
  //                           getTitlesWidget: (value, meta) => MdSnsText(
  //                             "${NumberFormat.compact().format(value)}",
  //                             fontWeight: TextFontWeightVariant.h4,
  //                             variant: TextVariant.h8,
  //                             color: AppColors.color0xB3FFFFFF,
  //                           ),
  //                         ),
  //                       ),
  //                       bottomTitles: AxisTitles(
  //                         sideTitles: SideTitles(
  //                           showTitles: true,
  //                           interval: (data.length / 5).floorToDouble().clamp(
  //                             1,
  //                             double.infinity,
  //                           ),
  //                           getTitlesWidget: (value, meta) {
  //                             final index = value.toInt();
  //                             if (index >= 0 && index < data.length) {
  //                               return Padding(
  //                                 padding: const EdgeInsets.only(top: 10),
  //                                 child: MdSnsText(
  //                                   "",
  //                                   // DateFormat(
  //                                   //   "MMM d\nyyyy",
  //                                   // ).format(data[index].date), // do line text
  //                                   fontWeight: TextFontWeightVariant.h4,
  //                                   variant: TextVariant.h8,
  //                                   color: AppColors.color0xB3FFFFFF,
  //                                 ),
  //                               );
  //                             }
  //                             return const SizedBox.shrink();
  //                           },
  //                         ),
  //                       ),
  //                       topTitles: AxisTitles(
  //                         sideTitles: SideTitles(showTitles: false),
  //                       ),
  //                     ),
  //                     // ✅ straight red line added
  //                     extraLinesData: ExtraLinesData(
  //                       horizontalLines: [
  //                         HorizontalLine(
  //                           y: 0, // jis level par red baseline chahiye
  //                           color: Colors.red,
  //                           strokeWidth: 2,
  //                         ),
  //                       ],
  //                     ),
  //                     lineBarsData: [
  //                       LineChartBarData(
  //                         spots: data
  //                             .asMap()
  //                             .entries
  //                             .map(
  //                               (e) =>
  //                                   FlSpot(e.key.toDouble(), e.value.data[1]),
  //                             )
  //                             .toList(),
  //                         isCurved: false,
  //                         color: Colors.blue,
  //                         barWidth: 1.5,
  //                         dotData: FlDotData(show: false),
  //                       ),
  //                       LineChartBarData(
  //                         spots: data
  //                             .asMap()
  //                             .entries
  //                             .map(
  //                               (e) =>
  //                                   FlSpot(e.key.toDouble(), e.value.data[1]),
  //                             )
  //                             .toList(),
  //                         isCurved: false,
  //                         color: Colors.orange,
  //                         barWidth: 1.5,
  //                         dotData: FlDotData(show: false),
  //                       ),
  //                       LineChartBarData(
  //                         spots: data[0]
  //                             .asMap()
  //                             .entries
  //                             .map(
  //                               (e) => FlSpot(
  //                                 e.key.toDouble(),
  //                                 e.value.data[1],
  //                               ),
  //                             )
  //                             .toList(),
  //                         isCurved: false,
  //                         color: Colors.greenAccent,
  //                         barWidth: 1.5,
  //                         dotData: FlDotData(show: false),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 12),
  //               Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     children: [
  //                       _buildLegendDot(Colors.blue, "Short Par Quantity"),
  //                       const SizedBox(width: 16),
  //                       _buildLegendDot(Colors.orange, "Total Par Quantity"),
  //                     ],
  //                   ),
  //                   const SizedBox(height: 8), // thoda gap niche
  //                   _buildLegendDot(
  //                     Colors.greenAccent,
  //                     "Short Exempt Par Quantity",
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildLegendDot(Color color, String text) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       Container(
  //         width: 10,
  //         height: 10,
  //         decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  //       ),
  //       const SizedBox(width: 4),
  //       MdSnsText(
  //         text,
  //         color: AppColors.white,
  //         variant: TextVariant.h5,
  //         fontWeight: TextFontWeightVariant.h6,
  //       ),
  //     ],
  //   );
  // }




