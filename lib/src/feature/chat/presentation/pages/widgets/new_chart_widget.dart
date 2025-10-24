import 'dart:convert';
import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../../shared/extensions/custom_extensions.dart';
import '../../../../../shared/extensions/number_formatter_extension.dart';

/// Chart data model that mirrors the Vue component's expected data structure
class ChartDataModel {
  final String? chartType;
  final String? subType;
  final String? title;
  final dynamic data; // Can be array, object, or primitive types
  final dynamic xAxis; // Can be array or object with data property
  final List<String>? legend;
  final dynamic radar;
  final dynamic treemap;
  final double interval;

  ChartDataModel({
    this.chartType,
    this.subType,
    this.title,
    required this.data,
    this.xAxis,
    this.legend,
    this.radar,
    this.treemap,
    this.interval = 1.0,
  });

  factory ChartDataModel.fromJson(Map<String, dynamic> json) {
    return ChartDataModel(
      chartType: json['chart_type'] as String?,
      subType: json['sub_type'] as String?,
      title: json['title'] as String?,
      data: json['data'],
      xAxis: json['xAxis'],
      legend: json['legend'] != null ? List<String>.from(json['legend']) : null,
      radar: json['radar'],
      treemap: json['treemap'],
    );
  }
}

/// Chart type option for dropdown
class ChartTypeOption {
  final String label;
  final String value;

  ChartTypeOption({required this.label, required this.value});
}

/// Flutter equivalent of GPTEchartContainer.vue
class GPTEchartContainer extends StatefulWidget {
  final ChartDataModel chartData;

  const GPTEchartContainer({super.key, required this.chartData});

  @override
  State<GPTEchartContainer> createState() => _GPTEchartContainerState();
}

class _GPTEchartContainerState extends State<GPTEchartContainer> {
  List<ChartTypeOption> chartTypeOptions = [];
  String? selectedChartType;

  // Theme colors (can be customized or retrieved from app theme)
  final Color textColor = AppColors.white;
  final Color axisColor = AppColors.lightTextColor;
  final Color gridColor = AppColors.primaryColor;
  final Color bgColor = AppColors.color01B254B;
  final Color legendTextColor = AppColors.secondaryColor;

  double calculateInterval(double minY, double maxY, {int targetSteps = 6}) {
    final range = (maxY - minY).abs();
    if (range == 0) return 1; // avoid divide-by-zero
    final rawInterval = range / targetSteps;
    // round interval to a “nice” number (like 1, 2, 5, 10, 100, etc.)
    final magnitude = pow(10, (log(rawInterval) / ln10).floor());
    final normalized = rawInterval / magnitude;
    double niceNormalized;
    if (normalized < 1.5) {
      niceNormalized = 1;
    } else if (normalized < 3) {
      niceNormalized = 2;
    } else if (normalized < 7) {
      niceNormalized = 5;
    } else {
      niceNormalized = 10;
    }
    return niceNormalized * magnitude;
  }

  //
  @override
  void initState() {
    super.initState();
    selectedChartType = widget.chartData.chartType ?? '';
    _detectTransformableTypes();
  }

  @override
  void didUpdateWidget(GPTEchartContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.chartData != widget.chartData) {
      _detectTransformableTypes();
    }
  }

  /// Detect available chart types for dropdown based on data shape
  void _detectTransformableTypes() {
    final data = widget.chartData.data;
    final categories = _getCategories();
    List<ChartTypeOption> types = [];

    if (data is! List) {
      // Non-array data - don't offer simple transformations
      setState(() {
        chartTypeOptions = types;
      });
      return;
    }

    final dataList = data as List;
    if (dataList.isEmpty) {
      setState(() {
        chartTypeOptions = types;
      });
      return;
    }

    final first = dataList[0];
    final isArrayOfArrays = first is List;
    final isFlatPrimitiveArray =
        !isArrayOfArrays && (first is num || first is String);
    final isSeriesObjectArray =
        !isArrayOfArrays &&
        first is Map &&
        (first['data'] is List || first['value'] != null);
    final categoriesLen = categories.length;
    const maxPieCategories = 16;

    // Multi-series (array of arrays)
    if (isArrayOfArrays) {
      types.addAll([
        ChartTypeOption(label: "Bar", value: "bar"),
        ChartTypeOption(label: "Line", value: "line"),
        ChartTypeOption(label: "Area", value: "area"),
        ChartTypeOption(label: "Scatter", value: "scatter"),
      ]);

      // If only one inner series, allow Pie
      if (dataList.length == 1 && categoriesLen <= maxPieCategories) {
        types.add(ChartTypeOption(label: "Pie", value: "pie"));
      }
    }

    // Single flat primitive array
    if (isFlatPrimitiveArray) {
      types.addAll([
        ChartTypeOption(label: "Bar", value: "bar"),
        ChartTypeOption(label: "Line", value: "line"),
        ChartTypeOption(label: "Area", value: "area"),
        ChartTypeOption(label: "Scatter", value: "scatter"),
      ]);

      if (categoriesLen <= maxPieCategories) {
        types.add(ChartTypeOption(label: "Pie", value: "pie"));
      }
    }

    // Array of series-like objects
    if (isSeriesObjectArray) {
      types.addAll([
        ChartTypeOption(label: "Bar", value: "bar"),
        ChartTypeOption(label: "Line", value: "line"),
        ChartTypeOption(label: "Area", value: "area"),
        ChartTypeOption(label: "Scatter", value: "scatter"),
      ]);

      if (dataList.length == 1) {
        final s = dataList[0] as Map;
        if (s['data'] is List && categoriesLen <= maxPieCategories) {
          types.add(ChartTypeOption(label: "Pie", value: "pie"));
        }
      }
    }

    setState(() {
      chartTypeOptions = types;
      // If current type not in options, set to first
      if (types.isNotEmpty && !types.any((t) => t.value == selectedChartType)) {
        selectedChartType = types[0].value;
      }
    });
  }

  /// Get categories from xAxis data
  List<String> _getCategories() {
    final xAxis = widget.chartData.xAxis;
    if (xAxis is Map && xAxis['data'] is List) {
      return List<String>.from(xAxis['data']);
    } else if (xAxis is List) {
      return List<String>.from(xAxis);
    }
    return [];
  }

  /// Handle chart type change
  void _onChartTypeChange(String? newType) {
    if (newType != null) {
      setState(() {
        selectedChartType = newType;
      });
    }
  }

  /// Convert numeric value safely
  double _safeToDouble(dynamic value) {
    if (value == null || value == '') return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) {
      return double.tryParse(value) ?? 0.0;
    }
    return 0.0;
  }

  /// Build chart widget based on current chart type and data
  Widget _buildChart() {
    final chartType = selectedChartType ?? widget.chartData.chartType ?? '';
    final subType = widget.chartData.subType ?? '';

    // Determine chart characteristics
    final isBar = chartType == 'bar' || subType.contains('bar');
    final isLine = chartType == 'line' || subType.contains('line');
    final isArea = chartType == 'area' || subType.contains('area');
    final isPie = chartType == 'pie' || subType.contains('pie');
    final isScatter = chartType == 'scatter' || subType.contains('scatter');
    final isStacked = subType.contains('stacked');

    if (isPie) {
      return _buildPieChart();
    } else if (isScatter) {
      return _buildScatterChart();
    } else if (isBar) {
      return _buildBarChart(stacked: isStacked);
    } else if (isLine || isArea) {
      return _buildLineChart(isArea: isArea);
    }

    // Default fallback
    return _buildLineChart();
  }

  /// Build pie chart
  Widget _buildPieChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data is! List)
      return Center(child: MdSnsText('Invalid pie chart data'));

    List<PieChartSectionData> sections = [];

    if (data.every((item) => item is num || item is String)) {
      // Flat primitive array
      final values = data.map((v) => _safeToDouble(v)).toList();
      for (int i = 0; i < math.min(categories.length, values.length); i++) {
        if (values[i] > 0) {
          sections.add(
            PieChartSectionData(
              color: _getColorForIndex(i),
              value: values[i],
              title: '${categories[i]}\n${values[i].toStringAsFixed(1)}',
              titleStyle: TextStyle(
                fontSize: categories.length > 10 ? 10 : 12,
                color: AppColors.white,
              ),
            ),
          );
        }
      }
    }

    return PieChart(
      PieChartData(
        sections: sections,
        centerSpaceRadius:
            widget.chartData.subType?.contains('doughnut') == true ? 40 : 0,
        sectionsSpace: 2,
        startDegreeOffset: -90,
      ),
    );
  }

  /// Build scatter chart
  Widget _buildScatterChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data is! List)
      return Center(child: MdSnsText('Invalid scatter chart data'));

    List<FlSpot> spots = [];

    if (data.every((item) => item is num || item is String)) {
      // Flat primitive array
      final values = data.map((v) => _safeToDouble(v)).toList();
      for (int i = 0; i < values.length; i++) {
        spots.add(FlSpot(i.toDouble(), values[i]));
      }
    }

    return ScatterChart(
      ScatterChartData(
        scatterSpots: spots
            .map(
              (spot) => ScatterSpot(
                spot.x,
                spot.y,
                // color: _getColorForIndex(0),
                // radius: 4,
              ),
            )
            .toList(),
        minX: 0,
        maxX: spots.isEmpty ? 10 : spots.length.toDouble() - 1,
        minY: spots.isEmpty ? 0 : spots.map((s) => s.y).reduce(math.min),
        maxY: spots.isEmpty ? 10 : spots.map((s) => s.y).reduce(math.max),
        backgroundColor: Colors.transparent,
        borderData: FlBorderData(show: false),

        gridData: FlGridData(
          show: false,
          drawVerticalLine: true,
          horizontalInterval: 1,
          verticalInterval: 1,
          getDrawingHorizontalLine: (value) =>
              FlLine(color: gridColor, strokeWidth: 1),
          getDrawingVerticalLine: (value) =>
              FlLine(color: gridColor, strokeWidth: 1),
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: calculateInterval(
                spots.isNotEmpty
                    ? spots.map((e) => e.y).reduce((a, b) => a < b ? a : b)
                    : 0.0,
                spots.isNotEmpty
                    ? spots.map((e) => e.y).reduce((a, b) => a > b ? a : b)
                    : 0.0,
              ),
              getTitlesWidget: (value, meta) => MdSnsText(
                Filters.systemNumberConvention(
                  value.toInt(),
                  isPrice: false,
                  isAbs: false,
                  containerWidth: 40,
                ),
                variant: TextVariant.h4,
                color: axisColor,
              ),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: (categories.length / 4).floorToDouble(),
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < categories.length) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
                      MdSnsText(
                        formatDateMMYYY(categories[index]),
                        variant: TextVariant.h4,
                        color: axisColor,
                      ),
                    ],
                  );
                }
                return MdSnsText('');
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Build bar chart
  Widget _buildBarChart({bool stacked = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data is! List)
      return Center(child: MdSnsText('Invalid bar chart data'));

    List<BarChartGroupData> barGroups = [];

    if (data.every((item) => item is num || item is String)) {
      // Flat primitive array
      final values = data.map((v) => _safeToDouble(v)).toList();
      for (int i = 0; i < values.length; i++) {
        barGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: values[i],
                color: _getColorForIndex(0),
                width: 1,
              ),
            ],
          ),
        );
      }
    } else if (data.every((item) => item is List)) {
      // Array of arrays (multiple series)
      final seriesCount = (data as List<List>).length;
      final maxLength = data.map((series) => series.length).reduce(math.max);

      for (int i = 0; i < maxLength; i++) {
        List<BarChartRodData> rods = [];
        for (int seriesIndex = 0; seriesIndex < seriesCount; seriesIndex++) {
          final series = data[seriesIndex] as List;
          final value = i < series.length ? _safeToDouble(series[i]) : 0.0;
          rods.add(
            BarChartRodData(
              toY: value,
              color: _getColorForIndex(seriesIndex),
              width: 20 / seriesCount,
            ),
          );
        }
        barGroups.add(BarChartGroupData(x: i, barRods: rods));
      }
    }

    return BarChart(
      BarChartData(
        barGroups: barGroups,
        backgroundColor: Colors.transparent,
        gridData: FlGridData(
          show: false,
          horizontalInterval: 1,
          getDrawingHorizontalLine: (value) =>
              FlLine(color: gridColor, strokeWidth: 1),
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 40,
              showTitles: true,
              interval: (categories.length / 2).floorToDouble(),
              getTitlesWidget: (value, meta) => MdSnsText(
                Filters.systemNumberConvention(
                  value.toInt(),
                  isPrice: false,
                  isAbs: false,
                  containerWidth: 40,
                  isRound: true,
                ),
                variant: TextVariant.h4,
                color: axisColor,
              ),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
              reservedSize: 50,
              interval: (categories.length / 1).floorToDouble(),
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < categories.length) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
                      MdSnsText(
                        formatDateMMYYY(categories[index]),
                        variant: TextVariant.h4,
                        color: axisColor,
                      ),
                    ],
                  );
                }
                return MdSnsText('');
              },
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
      ),
    );
  }

  /// Build line chart
  Widget _buildLineChart({bool isArea = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data is! List)
      return Center(child: MdSnsText('Invalid line chart data'));

    List<LineChartBarData> lineBars = [];

    if (data.every((item) => item is num || item is String)) {
      // Flat primitive array
      final values = data.map((v) => _safeToDouble(v)).toList();
      List<FlSpot> spots = [];
      for (int i = 0; i < values.length; i++) {
        spots.add(FlSpot(i.toDouble(), values[i]));
      }

      lineBars.add(
        LineChartBarData(
          spots: spots,
          color: _getColorForIndex(0),
          barWidth: 2,
          isCurved: true,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: isArea
              ? BarAreaData(
                  show: true,
                  color: _getColorForIndex(0).withOpacity(0.3),
                )
              : BarAreaData(show: false),
        ),
      );
    } else if (data.every((item) => item is List)) {
      // Array of arrays (multiple series)
      for (int seriesIndex = 0; seriesIndex < data.length; seriesIndex++) {
        final series = data[seriesIndex] as List;
        List<FlSpot> spots = [];
        for (int i = 0; i < series.length; i++) {
          spots.add(FlSpot(i.toDouble(), _safeToDouble(series[i])));
        }

        lineBars.add(
          LineChartBarData(
            spots: spots,
            color: _getColorForIndex(seriesIndex),
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: false),
            belowBarData: isArea
                ? BarAreaData(
                    show: true,
                    color: _getColorForIndex(seriesIndex).withOpacity(0.3),
                  )
                : BarAreaData(show: false),
          ),
        );
      }
    }

    return SizedBox(
      height: 300,
      width: MediaQuery.sizeOf(context).width,
      child: LineChart(
        duration: Duration(milliseconds: 1500),
        curve: Curves.easeIn,
        LineChartData(
          lineBarsData: lineBars,
          gridData: FlGridData(
            show: false,
            horizontalInterval: 1,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) =>
                FlLine(color: gridColor, strokeWidth: 1),
            getDrawingVerticalLine: (value) =>
                FlLine(color: gridColor, strokeWidth: 1),
          ),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: calculateInterval(
                  lineBars.isNotEmpty
                      ? lineBars[0].spots
                            .map((e) => e.y)
                            .reduce((a, b) => a < b ? a : b)
                      : 0.0,
                  lineBars.isNotEmpty
                      ? lineBars[0].spots
                            .map((e) => e.y)
                            .reduce((a, b) => a > b ? a : b)
                      : 0.0,
                ), // 👈 set fixed step to avoid too many labels
                getTitlesWidget: (value, meta) => MdSnsText(
                  Filters.systemNumberConvention(
                    value.toInt(),

                    containerWidth: 40,
                    isRound: true,
                    fromChart: true,
                  ),
                  variant: TextVariant.h4,
                  color: axisColor,
                ),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 40,
                showTitles: true,
                interval: (categories.length / 3)
                    .floorToDouble(), // 👈 show only 10 titles
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index >= 0 && index < categories.length) {
                    return Column(
                      children: [
                        SizedBox(height: 5),
                        MdSnsText(
                          formatDateMMYYY(categories[index]),
                          variant: TextVariant.h4,
                          color: axisColor,
                        ),
                      ],
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: false,
            border: Border.fromBorderSide(
              BorderSide(width: 1, color: Colors.red),
            ),
          ),
        ),
      ),
    );

    // SizedBox(
    //   height: 300,
    //   width: MediaQuery.sizeOf(context).width * 0.75,
    //   child: LineChart(
    //     LineChartData(
    //       lineBarsData: lineBars,
    //       gridData: FlGridData(
    //         show: true,
    //         horizontalInterval: 1,
    //         verticalInterval: 1,
    //         getDrawingHorizontalLine: (value) =>
    //             FlLine(color: gridColor, strokeWidth: 1),
    //         getDrawingVerticalLine: (value) =>
    //             FlLine(color: gridColor, strokeWidth: 1),
    //       ),
    //       titlesData: FlTitlesData(
    //         show: false,
    //         leftTitles: AxisTitles(
    //           sideTitles: SideTitles(
    //             showTitles: true,
    //             getTitlesWidget: (value, meta) => MdSnsText(
    //               value.toStringAsFixed(0),
    //               variant: TextVariant.h4,
    //               color: axisColor,
    //             ),
    //           ),
    //         ),
    //         bottomTitles: AxisTitles(
    //           sideTitles: SideTitles(
    //             showTitles: true,
    //             getTitlesWidget: (value, meta) {
    //               final index = value.toInt();
    //               if (index >= 0 && index < categories.length) {
    //                 return MdSnsText(
    //                   categories[index],
    //                   variant: TextVariant.h4,
    //                   color: axisColor,
    //                 );
    //               }
    //               return MdSnsText('');
    //             },
    //           ),
    //         ),
    //       ),
    //       borderData: FlBorderData(show: false),
    //     ),
    //   ),
    // );
  }

  /// Get color for series index
  Color _getColorForIndex(int index) {
    final colors = [
      AppColors.secondaryColor,
      const Color(0xFF0098E4),
      const Color(0xFF10B981),
      const Color(0xFFEF4444),
      const Color(0xFFF59E0B),
      const Color(0xFF8B5CF6),
      const Color(0xFFEC4899),
      const Color(0xFF06B6D4),
      const Color(0xFF84CC16),
    ];
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown for chart type selection
        if (chartTypeOptions.isNotEmpty)
          SizedBox(
            //  margin: const EdgeInsets.only(bottom: 16),
            // width: MediaQuery.sizeOf(context).width * 0.75,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: DropdownButton2<String>(
                underline: SizedBox(),
                isExpanded: true,
                value: selectedChartType,
                hint: MdSnsText('Select Chart Type'),
                items: chartTypeOptions.map((option) {
                  return DropdownMenuItem<String>(
                    value: option.value,
                    child: MdSnsText(
                      option.label,
                      color: AppColors.white,
                      variant: TextVariant.h8,
                    ),
                  );
                }).toList(),
                onChanged: _onChartTypeChange,
                dropdownStyleData: DropdownStyleData(
                  elevation: 1,
                  decoration: BoxDecoration(
                    color: gridColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                buttonStyleData: ButtonStyleData(
                  elevation: 0,
                  height: 48, // 👈 give button a proper height
                  decoration: BoxDecoration(
                    color: gridColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: axisColor),
                  ),
                  // padding: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
          ),

        SizedBox(height: 10),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 280,
            child: _buildChart(),
          ),
        ),
      ],
    );
  }
}

/// Example usage widget
class ChartExample extends StatelessWidget {
  final List<double> data;
  final List<String> xAxis;
  const ChartExample({super.key, required this.data, required this.xAxis});

  @override
  Widget build(BuildContext context) {
    int xLen = xAxis.length;
    int yLen = data.length;
    int maxLen = xLen > yLen ? xLen : yLen;

    double verticalInterval = (maxLen / 6).ceilToDouble(); // ~6 labels
    double maxY = data.map((e) => e.abs()).reduce((a, b) => a > b ? a : b);
    double horizontalInterval = (maxY / 5e9)
        .ceilToDouble(); // steps in billions

    final chartData = ChartDataModel(
      chartType: 'line',
      title: 'Stock Prices Over Time',
      data: data,
      xAxis: xAxis,
      legend: ['Stock A', 'Stock B'],
      subType: "",
      radar: "",
      treemap: "",
      interval: (maxLen / (xLen > 6 ? 6 : xLen)).floorToDouble(),
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: xLen > yLen || yLen > xLen
          ? SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    show: false,
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                        interval: horizontalInterval,
                        getTitlesWidget: (value, meta) => MdSnsText(
                          "${value.toInt()}",
                          variant: TextVariant.h5,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                        interval: verticalInterval,
                        getTitlesWidget: (value, meta) {
                          int index = value.toInt();
                          if (index < xAxis.length) {
                            return MdSnsText(
                              xAxis[index],
                              variant: TextVariant.h5,
                            );
                          }
                          return MdSnsText(
                            "$index",
                          ); // fallback for extra yAxis points
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(
                        data.length,
                        (i) => FlSpot(i.toDouble(), data[i] / 1e9),
                      ),
                      isCurved: true,
                      color: AppColors.secondaryColor,
                      barWidth: 2,

                      isStrokeCapRound: true,
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.fieldTextColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: GPTEchartContainer(chartData: chartData),
            ),
    );
  }
}
