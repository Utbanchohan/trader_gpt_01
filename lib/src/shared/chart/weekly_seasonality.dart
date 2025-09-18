import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklySeasonalityChart extends StatelessWidget {
  final List<Map<String, dynamic>> weeklyData = [
    {"day": "Monday", "value": 85.0, "amount": 250.45},
    {"day": "Tuesday", "value": 60.0, "amount": 180.22},
    {"day": "Wednesday", "value": 70.0, "amount": 220.10},
    {"day": "Thursday", "value": 92.0, "amount": 274.52},
    {"day": "Friday", "value": 100.0, "amount": 300.00},
    {"day": "Saturday", "value": 50.0, "amount": 150.00},
    {"day": "Sunday", "value": 65.0, "amount": 200.00},
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: const Color(0xFF0B132B),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Weekly Seasonality",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // Chart
            AspectRatio(
              aspectRatio: 1.6,
              child: RotatedBox(
                quarterTurns: 1,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    minY: 0,
                    maxY: 100,
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      drawVerticalLine: false,
                      horizontalInterval: 20,
                      getDrawingHorizontalLine: (value) =>
                          FlLine(color: Colors.white24, strokeWidth: 1),
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 60,
                          getTitlesWidget: (value, meta) {
                            int index = value.toInt();
                            if (index >= 0 && index < weeklyData.length) {
                              return Transform.rotate(
                                angle: -1.5708, // -90 degree (seedha kar diya)
                                child: Text(
                                  weeklyData[index]["day"],
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: const Border(
                        bottom: BorderSide(color: Colors.white30, width: 1),
                        right: BorderSide(
                          color: Colors.white30,
                          width: 1,
                        ), // ✅ right line
                        left: BorderSide.none,
                        top: BorderSide.none,
                      ),
                    ),
                    barGroups: weeklyData.asMap().entries.map((entry) {
                      return BarChartGroupData(
                        x: entry.key,
                        barRods: [
                          BarChartRodData(
                            toY: entry.value["value"] * 1.0,
                            width: 18,
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ],
                      );
                    }).toList(),
                    barTouchData: BarTouchData(
                      enabled: true,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipMargin: 8,
                        tooltipPadding: const EdgeInsets.all(8),
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          final data = weeklyData[group.x.toInt()];
                          return BarTooltipItem(
                            '\$${data["amount"].toStringAsFixed(2)}\n${data["value"].toStringAsFixed(0)}%',
                            const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // ✅ Neeche custom text
            const Center(
              child: Text(
                "Data represents weekly % with total amount",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
