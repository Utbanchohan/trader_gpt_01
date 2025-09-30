// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:intl/intl.dart';
// import 'package:trader_gpt/src/core/theme/app_colors.dart';

// class ShortVolumeChart extends StatelessWidget {
//   final List<ChartData> data;

//   const ShortVolumeChart({Key? key, required this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFF0B1B2B), // dark background
//       padding: const EdgeInsets.all(8), // avoid clipping
//       child: SfCartesianChart(
//         backgroundColor: const Color(0xFF0B1B2B), // match background
//         title: ChartTitle(
//           text: 'Short Volume',
//           textStyle: TextStyle(color: AppColors.fieldTextColor),
//           alignment: ChartAlignment.near,
//         ),
//         legend: const Legend(
//           isVisible: true,
//           textStyle: TextStyle(color: Colors.white),
//           iconHeight: 14,
//           iconWidth: 14,
//         ),
//         tooltipBehavior: TooltipBehavior(enable: true), // ✅ tooltip
//         primaryXAxis: DateTimeAxis(
//           intervalType: DateTimeIntervalType.months,
//           majorGridLines: const MajorGridLines(width: 0),
//           axisLine: const AxisLine(color: Colors.white54),
//           labelStyle: const TextStyle(color: Colors.white70),
//         ),
//         primaryYAxis: NumericAxis(
//           opposedPosition: true,
//           axisLine: const AxisLine(width: 0),
//           majorGridLines: const MajorGridLines(color: Colors.white24),
//           labelStyle: const TextStyle(color: Colors.white70),
//           numberFormat: NumberFormat.compact(),
//         ),
//         series: <CartesianSeries<ChartData, DateTime>>[
//           LineSeries<ChartData, DateTime>(
//             dataSource: data,
//             xValueMapper: (ChartData d, _) => d.date,
//             yValueMapper: (ChartData d, _) => d.totalPar,
//             color: Colors.orange,
//             name: 'Total Par Quantity',
//             markerSettings: const MarkerSettings(isVisible: true),
//           ),
//           LineSeries<ChartData, DateTime>(
//             dataSource: data,
//             xValueMapper: (ChartData d, _) => d.date,
//             yValueMapper: (ChartData d, _) => d.shortExempt,
//             color: Colors.greenAccent,
//             name: 'Short Exempt Par Quantity',
//             markerSettings: const MarkerSettings(isVisible: true),
//           ),
//           // 👇 isko last me rakha hai
//           LineSeries<ChartData, DateTime>(
//             dataSource: data,
//             xValueMapper: (ChartData d, _) => d.date,
//             yValueMapper: (ChartData d, _) => d.shortPar,
//             color: Colors.blue,
//             name: 'Short Par Quantity',
//             markerSettings: const MarkerSettings(isVisible: true),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChartData {
//   final DateTime date;
//   final double shortPar;
//   final double totalPar;
//   final double shortExempt;

//   ChartData(this.date, this.shortPar, this.totalPar, this.shortExempt);
// }
