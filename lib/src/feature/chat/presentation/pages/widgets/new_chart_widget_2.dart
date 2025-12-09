import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class ChartDataNewWidget {
  final String? title;
  final String? chartType;
  final String? subType;
  final dynamic data;
  final List<String>? legend;
  final List<String>? xAxis;
  final dynamic yAxis;
  final Map<String, dynamic>? tooltip;
  final Map<String, dynamic>? grid;
  final List<num>? bins;
  final List<num>? volume;

  ChartDataNewWidget({
    this.title,
    this.chartType,
    this.subType,
    this.data,
    this.legend,
    this.xAxis,
    this.yAxis,
    this.tooltip,
    this.grid,
    this.bins,
    this.volume,
  });
}

class ChartWidget extends StatefulWidget {
  final ChartDataNewWidget chartData;
  final double height;
  final Color textColor;
  final Color axisColor;
  final Color gridColor;
  final Color backgroundColor;
  final Color legendTextColor;

  const ChartWidget({
    Key? key,
    required this.chartData,
    this.height = 450,
    this.textColor = Colors.white,
    this.axisColor = const Color(0xFF7A90B2),
    this.gridColor = const Color(0xFF091224),
    this.backgroundColor = const Color(0xFF111A3A),
    this.legendTextColor = const Color(0xFF0098E4),
  }) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  String? _selectedChartType;
  List<ChartTypeOption> _chartTypeOptions = [];

  @override
  void initState() {
    super.initState();
    _selectedChartType = widget.chartData.chartType;
    _detectTransformableTypes();
  }

  @override
  void didUpdateWidget(covariant ChartWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.chartData != widget.chartData) {
      _detectTransformableTypes();
    }
  }

  void _detectTransformableTypes() {
    final data = widget.chartData.data;
    final categories = _getCategories();
    final chartType = widget.chartData.chartType ?? '';
    final subType = widget.chartData.subType ?? '';

    // Special chart types that shouldn't show dropdown
    final specialTypes = [
      "heatmap",
      "correlation",
      "radar",
      "treemap",
      "waterfall",
      "candlestick",
      "gradient_mapping",
      "polar",
      "histogram",
    ];

    final isSpecialChart = specialTypes.any(
      (type) => chartType.contains(type) || subType.contains(type),
    );

    // Check if backend provided complete multi-axis configuration
    final hasMultiAxis =
        widget.chartData.yAxis is List &&
        (widget.chartData.yAxis as List).length > 2;

    if (isSpecialChart || hasMultiAxis) {
      _chartTypeOptions = [];
      return;
    }

    final List<ChartTypeOption> types = [];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;
      final isArrayOfArrays = first is List;
      final isFlatPrimitiveArray =
          !isArrayOfArrays && (first is num || first is String);
      final isSeriesObjectArray =
          !isArrayOfArrays && first is Map<String, dynamic>;

      final categoriesLen = categories.length;
      const MAX_PIE_CATEGORIES = 16;

      // Multi-series (array of arrays)
      if (isArrayOfArrays && first is List) {
        // Check if this is OHLC candlestick data
        final isCandlestickFormat = first.length == 4;

        if (isCandlestickFormat) {
          types.add(ChartTypeOption("Candlestick", "candlestick"));
        } else {
          types.add(ChartTypeOption("Bar", "bar"));
          types.add(ChartTypeOption("Line", "line"));
          types.add(ChartTypeOption("Area", "area"));
          types.add(ChartTypeOption("Scatter", "scatter"));

          if (data.length == 1 && categoriesLen <= MAX_PIE_CATEGORIES) {
            types.add(ChartTypeOption("Pie", "pie"));
          }
        }
      }

      // Single flat primitive array
      if (isFlatPrimitiveArray) {
        types.add(ChartTypeOption("Bar", "bar"));
        types.add(ChartTypeOption("Line", "line"));
        types.add(ChartTypeOption("Area", "area"));
        types.add(ChartTypeOption("Scatter", "scatter"));

        if (categoriesLen <= MAX_PIE_CATEGORIES) {
          types.add(ChartTypeOption("Pie", "pie"));
        }

        // Check for OHLC format
        if (data.length == categoriesLen * 4) {
          types.add(ChartTypeOption("Candlestick", "candlestick"));
        }
      }

      // Array of series-like objects
      if (isSeriesObjectArray) {
        types.add(ChartTypeOption("Bar", "bar"));
        types.add(ChartTypeOption("Line", "line"));
        types.add(ChartTypeOption("Area", "area"));
        types.add(ChartTypeOption("Scatter", "scatter"));

        if (data.length == 1) {
          final s = data[0] as Map<String, dynamic>;
          final sData = s['data'];
          if (sData is List &&
              sData.isNotEmpty &&
              (sData[0] is num || sData[0] is String) &&
              categoriesLen <= MAX_PIE_CATEGORIES) {
            types.add(ChartTypeOption("Pie", "pie"));
          }
        }
      }
    }

    _chartTypeOptions = types;

    if (types.isNotEmpty && !types.any((t) => t.value == _selectedChartType)) {
      _selectedChartType = types.first.value;
    }
  }

  List<String> _getCategories() {
    if (widget.chartData.xAxis is List) {
      return (widget.chartData.xAxis as List).map((e) => e.toString()).toList();
    }
    return [];
  }

  void _onChartTypeChanged(String? newValue) {
    if (newValue != null) {
      setState(() {
        _selectedChartType = newValue;
      });
    }
  }

  // Helper methods
  double _toDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  String _formatNumber(double value) {
    if (value.abs() >= 1e12) return '${(value / 1e12).toStringAsFixed(1)}T';
    if (value.abs() >= 1e9) return '${(value / 1e9).toStringAsFixed(1)}B';
    if (value.abs() >= 1e6) return '${(value / 1e6).toStringAsFixed(1)}M';
    if (value.abs() >= 1e3) return '${(value / 1e3).toStringAsFixed(1)}K';
    return value.toStringAsFixed(value.abs() < 1 ? 2 : 1);
  }

  String _formatCategory(String category) {
    try {
      final isoLike = RegExp(r'^\d{4}-\d{2}-\d{2}(T.*)?$');
      if (isoLike.hasMatch(category)) {
        final date = DateTime.tryParse(category);
        if (date != null) {
          final mm = date.month.toString().padLeft(2, '0');
          final dd = date.day.toString().padLeft(2, '0');
          return '$mm/$dd';
        }
      }
    } catch (e) {}

    if (category.length > 10) return '${category.substring(0, 8)}...';
    return category;
  }

  // Get evenly spaced indices for X-axis labels (max 5-6)
  List<int> _getSpacedIndices(int total, int maxVisible) {
    if (total <= maxVisible) return List.generate(total, (i) => i);

    final step = (total - 1) / (maxVisible - 1);
    final indices = <int>[];

    for (int i = 0; i < maxVisible; i++) {
      final index = (i * step).round();
      indices.add(index.clamp(0, total - 1));
    }

    // Ensure first and last are always included
    if (indices.first != 0) indices[0] = 0;
    if (indices.last != total - 1) indices[indices.length - 1] = total - 1;

    return indices.toSet().toList()..sort();
  }

  // Get nice Y-axis values (max 5-6)
  List<double> _getYAxisValues(List<double> values, int maxTitles) {
    if (values.isEmpty) return [0, 1, 2, 3, 4, 5];

    final minVal = values.reduce(min);
    final maxVal = values.reduce(max);

    if ((maxVal - minVal).abs() < 0.0001) {
      return List.generate(maxTitles, (i) => minVal + i);
    }

    // Calculate nice interval
    final range = maxVal - minVal;
    final niceRange = _niceNumber(range, false);
    final niceMin = (minVal / niceRange).floor() * niceRange;
    final niceMax = (maxVal / niceRange).ceil() * niceRange;

    final List<double> result = [];
    double current = niceMin;
    final step = niceRange;

    while (current <= niceMax && result.length < maxTitles) {
      result.add(current);
      current += step;
    }

    return result;
  }

  double _niceNumber(double value, bool round) {
    final exponent = value == 0 ? 0 : (log(value) / ln10).floor();
    final fraction = value / pow(10, exponent);

    double niceFraction;
    if (round) {
      if (fraction < 1.5) {
        niceFraction = 1.0;
      } else if (fraction < 3.0) {
        niceFraction = 2.0;
      } else if (fraction < 7.0) {
        niceFraction = 5.0;
      } else {
        niceFraction = 10.0;
      }
    } else {
      if (fraction <= 1.0) {
        niceFraction = 1.0;
      } else if (fraction <= 2.0) {
        niceFraction = 2.0;
      } else if (fraction <= 5.0) {
        niceFraction = 5.0;
      } else {
        niceFraction = 10.0;
      }
    }

    return niceFraction * pow(10, exponent);
  }

  // Calculate chart height based on content
  double _calculateChartHeight() {
    double height = widget.height;

    // Subtract title height if exists
    if (widget.chartData.title != null) height -= 40;

    // Subtract dropdown height if exists
    if (_chartTypeOptions.isNotEmpty) height -= 60;

    // Ensure minimum chart height
    return max(height, 300);
  }

  @override
  Widget build(BuildContext context) {
    final chartHeight = _calculateChartHeight();

    return Container(
      color: widget.backgroundColor,
      padding: const EdgeInsets.all(12.0),
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          if (widget.chartData.title != null &&
              widget.chartData.title!.isNotEmpty)
            Container(
              height: 32,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 8),
              child: Text(
                widget.chartData.title!,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

          // Chart Type Dropdown
          if (_chartTypeOptions.isNotEmpty)
            Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 12),
              child: DropdownButtonFormField<String>(
                value: _selectedChartType,
                items: _chartTypeOptions.map((option) {
                  return DropdownMenuItem<String>(
                    value: option.value,
                    child: Text(
                      option.label,
                      style: TextStyle(color: widget.textColor),
                    ),
                  );
                }).toList(),
                onChanged: _onChartTypeChanged,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: widget.axisColor),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  hintText: 'Select Chart Type',
                  hintStyle: TextStyle(
                    color: widget.textColor.withOpacity(0.7),
                  ),
                ),
                dropdownColor: widget.gridColor,
                style: TextStyle(color: widget.textColor, fontSize: 14),
                icon: Icon(Icons.arrow_drop_down, color: widget.textColor),
                isExpanded: true,
              ),
            ),

          // Chart Container with FIXED height
          SizedBox(height: chartHeight, child: _buildChart()),
        ],
      ),
    );
  }

  Widget _buildChart() {
    final chartType = _selectedChartType ?? widget.chartData.chartType ?? '';
    final subType = widget.chartData.subType ?? '';

    // Determine chart type
    bool isHeatmap =
        chartType == 'heatmap' ||
        (subType.contains('heatmap') || subType.contains('correlation'));
    bool isPie =
        chartType == 'pie' ||
        chartType == 'doughnut' ||
        (subType.contains('pie') || subType.contains('doughnut'));
    bool isDoughnut = chartType == 'doughnut' || subType.contains('doughnut');
    bool isScatter = chartType == 'scatter' || subType.contains('scatter');
    bool isCandlestick =
        chartType == 'candlestick' || subType.contains('candlestick');
    bool isBar =
        chartType == 'bar' ||
        (subType.contains('bar') || subType.contains('grouped_bar'));
    bool isHorizontal =
        chartType == 'horizontal_bar' || subType.contains('horizontal');
    bool isHistogram =
        chartType == 'histogram' || subType.contains('histogram');
    bool isWaterfall =
        chartType == 'waterfall' || subType.contains('waterfall');
    bool isLine = chartType == 'line' || subType.contains('line');
    bool isArea = chartType == 'area' || subType.contains('area');
    bool isStacked = subType.contains('stacked');

    if (isPie) {
      return _buildPieChart(isDoughnut: isDoughnut);
    } else if (isScatter) {
      return _buildScatterChart();
    } else if (isBar) {
      if (isHorizontal) {
        return _buildHorizontalBarChart();
      } else if (isHistogram) {
        return _buildHistogramChart();
      } else if (isWaterfall) {
        return _buildWaterfallChart();
      } else {
        return _buildBarChart(isStacked: isStacked);
      }
    } else if (isLine || isArea) {
      return _buildLineChart(isArea: isArea);
    } else {
      return _buildBarChart(isStacked: isStacked);
    }
  }

  Widget _buildBarChart({bool isStacked = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;
    final legend = widget.chartData.legend ?? [];

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<BarChartGroupData> barGroups = [];
    List<double> allValues = [];
    final colors = [
      const Color(0xFF3B82F6),
      const Color(0xFF10B981),
      const Color(0xFFF59E0B),
      const Color(0xFFEF4444),
      const Color(0xFF8B5CF6),
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is List) {
        // Multi-series bar chart
        final numSeries = data.length;

        for (int i = 0; i < categories.length; i++) {
          final bars = <BarChartRodData>[];
          double stackOffset = 0;

          for (int j = 0; j < numSeries; j++) {
            if (j < data.length && i < (data[j] as List).length) {
              final value = (data[j] as List)[i];
              final numValue = _toDouble(value);
              allValues.add(numValue);

              bars.add(
                BarChartRodData(
                  fromY: isStacked ? stackOffset : 0,
                  toY: isStacked ? (stackOffset + numValue) : numValue,
                  width: 16,
                  color: colors[j % colors.length],
                  borderRadius: BorderRadius.circular(2),
                ),
              );

              if (isStacked) stackOffset += numValue;
            }
          }

          barGroups.add(
            BarChartGroupData(
              x: i,
              barRods: bars,
              barsSpace: isStacked ? 0 : 4,
            ),
          );
        }
      } else if (first is num || first is String) {
        // Single series bar chart
        for (int i = 0; i < categories.length; i++) {
          if (i < data.length) {
            final value = data[i];
            final numValue = _toDouble(value);
            allValues.add(numValue);

            barGroups.add(
              BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                    toY: numValue,
                    width: 20,
                    color: colors[0],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
            );
          }
        }
      }
    }

    if (barGroups.isEmpty) {
      return _buildNoDataWidget();
    }

    // Get limited X-axis indices (max 5-6)
    final maxXLabels = min(6, categories.length);
    final xLabelIndices = _getSpacedIndices(categories.length, maxXLabels);

    // Get Y-axis values (max 5-6)
    final yValues = _getYAxisValues(allValues, 5);

    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            //tooltipBgColor: Colors.black.withOpacity(0.9),
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              final category = categories[group.x.toInt()];
              final value = rod.toY - (isStacked ? rod.fromY : 0);
              final seriesName = legend.length > rodIndex
                  ? legend[rodIndex]
                  : 'Series ${rodIndex + 1}';

              return BarTooltipItem(
                '$category\n',
                TextStyle(color: Colors.white, fontSize: 12),
                children: [
                  TextSpan(
                    text: '$seriesName: ${_formatNumber(value)}',
                    style: const TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                ],
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (xLabelIndices.contains(index) &&
                    index < categories.length) {
                  final shouldRotate = categories.length > 8;
                  return Padding(
                    padding: EdgeInsets.only(top: shouldRotate ? 8.0 : 4.0),
                    child: Transform.rotate(
                      angle: shouldRotate ? -0.5 : 0,
                      child: Text(
                        _formatCategory(categories[index]),
                        style: TextStyle(
                          color: widget.axisColor,
                          fontSize: categories.length > 12 ? 9 : 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: categories.length > 8 ? 45 : 32,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: yValues.length > 1 ? yValues[1] - yValues[0] : 1,
              getTitlesWidget: (value, meta) {
                if (yValues.any((v) => (v - value).abs() < 0.001)) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Text(
                      _formatNumber(value),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 45,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor, width: 0.5),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: yValues.length > 1
              ? yValues[1] - yValues[0]
              : null,
          getDrawingHorizontalLine: (value) => FlLine(
            color: widget.gridColor.withOpacity(0.5),
            strokeWidth: 0.5,
          ),
        ),
        barGroups: barGroups,
      ),
    );
  }

  Widget _buildLineChart({bool isArea = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;
    final legend = widget.chartData.legend ?? [];

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<LineChartBarData> lineBars = [];
    List<double> allValues = [];
    final colors = [
      const Color(0xFF3B82F6),
      const Color(0xFF10B981),
      const Color(0xFFF59E0B),
      const Color(0xFFEF4444),
      const Color(0xFF8B5CF6),
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is List) {
        // Multi-series line chart
        for (int i = 0; i < data.length; i++) {
          final seriesData = data[i] as List;
          final points = <FlSpot>[];

          for (int j = 0; j < min(categories.length, seriesData.length); j++) {
            final value = seriesData[j];
            final numValue = _toDouble(value);
            allValues.add(numValue);
            points.add(FlSpot(j.toDouble(), numValue));
          }

          lineBars.add(
            LineChartBarData(
              spots: points,
              isCurved: true,
              color: colors[i % colors.length],
              barWidth: 2,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
              belowBarData: isArea
                  ? BarAreaData(
                      show: true,
                      color: colors[i % colors.length].withOpacity(0.1),
                    )
                  : null,
            ),
          );
        }
      } else if (first is num || first is String) {
        // Single series line chart
        final points = <FlSpot>[];

        for (int i = 0; i < min(categories.length, data.length); i++) {
          final value = data[i];
          final numValue = _toDouble(value);
          allValues.add(numValue);
          points.add(FlSpot(i.toDouble(), numValue));
        }

        lineBars.add(
          LineChartBarData(
            spots: points,
            isCurved: true,
            color: colors[0],
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: isArea
                ? BarAreaData(show: true, color: colors[0].withOpacity(0.1))
                : null,
          ),
        );
      }
    }

    if (lineBars.isEmpty) {
      return _buildNoDataWidget();
    }

    // Get limited X-axis indices (max 5-6)
    final maxXLabels = min(6, categories.length);
    final xLabelIndices = _getSpacedIndices(categories.length, maxXLabels);

    // Get Y-axis values (max 5-6)
    final yValues = _getYAxisValues(allValues, 5);

    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            //tooltipBgColor: Colors.black.withOpacity(0.9),
            // FIXED: Using proper callback format
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((touchedSpot) {
                final index = touchedSpot.spotIndex;
                final category = index < categories.length
                    ? categories[index]
                    : 'Point $index';
                final value = touchedSpot.y;
                final seriesName = legend.length > touchedSpot.barIndex
                    ? legend[touchedSpot.barIndex]
                    : 'Series ${touchedSpot.barIndex + 1}';

                return LineTooltipItem(
                  '$category\n',
                  TextStyle(color: Colors.white, fontSize: 12),
                  children: [
                    TextSpan(
                      text: '$seriesName: ${_formatNumber(value)}',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                  ],
                );
              }).toList();
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (xLabelIndices.contains(index) &&
                    index < categories.length) {
                  final shouldRotate = categories.length > 8;
                  return Padding(
                    padding: EdgeInsets.only(top: shouldRotate ? 8.0 : 4.0),
                    child: Transform.rotate(
                      angle: shouldRotate ? -0.5 : 0,
                      child: Text(
                        _formatCategory(categories[index]),
                        style: TextStyle(
                          color: widget.axisColor,
                          fontSize: categories.length > 12 ? 9 : 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: categories.length > 8 ? 45 : 32,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: yValues.length > 1 ? yValues[1] - yValues[0] : 1,
              getTitlesWidget: (value, meta) {
                if (yValues.any((v) => (v - value).abs() < 0.001)) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Text(
                      _formatNumber(value),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 45,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor, width: 0.5),
        ),
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          horizontalInterval: yValues.length > 1
              ? yValues[1] - yValues[0]
              : null,
          getDrawingHorizontalLine: (value) => FlLine(
            color: widget.gridColor.withOpacity(0.5),
            strokeWidth: 0.5,
          ),
        ),
        lineBarsData: lineBars,
      ),
    );
  }

  Widget _buildPieChart({bool isDoughnut = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<PieChartSectionData> sections = [];
    final colors = [
      const Color(0xFF3B82F6),
      const Color(0xFF10B981),
      const Color(0xFFF59E0B),
      const Color(0xFFEF4444),
      const Color(0xFF8B5CF6),
      const Color(0xFFEC4899),
      const Color(0xFF06B6D4),
      const Color(0xFF84CC16),
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is num || first is String) {
        // Single series pie chart
        double total = 0;
        final values = <double>[];

        for (int i = 0; i < min(categories.length, data.length); i++) {
          final value = _toDouble(data[i]);
          values.add(value);
          total += value;
        }

        // Limit to max 8 categories for readability
        final maxCategories = min(8, values.length);

        for (int i = 0; i < maxCategories; i++) {
          final percentage = total > 0 ? (values[i] / total) * 100 : 0;

          sections.add(
            PieChartSectionData(
              value: values[i],
              title:
                  '${_formatCategory(categories[i])}\n${percentage.toStringAsFixed(1)}%',
              color: colors[i % colors.length],
              radius: 60,
              titleStyle: TextStyle(
                fontSize: values.length > 6 ? 10 : 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }

        // Add "Other" section if there are more categories
        if (values.length > maxCategories) {
          double otherTotal = 0;
          for (int i = maxCategories; i < values.length; i++) {
            otherTotal += values[i];
          }
          final otherPercentage = total > 0 ? (otherTotal / total) * 100 : 0;

          sections.add(
            PieChartSectionData(
              value: otherTotal,
              title: 'Other\n${otherPercentage.toStringAsFixed(1)}%',
              color: Colors.grey,
              radius: 60,
              titleStyle: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }
      }
    }

    if (sections.isEmpty) {
      return _buildNoDataWidget();
    }

    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {},
          // touchTooltipData: PieTouchTooltipData(
          //   //tooltipBgColor: Colors.black.withOpacity(0.9),
          //   getTooltipItem: (section, sectionIndex, isTouched) {
          //     final value = section.value;
          //     final category = sectionIndex < categories.length
          //         ? categories[sectionIndex]
          //         : 'Other';
          //     return PieTooltipItem(
          //       '$category: ${_formatNumber(value)}\n',
          //       TextStyle(color: Colors.white, fontSize: 12),
          //       children: [
          //         TextSpan(
          //           text:
          //               '${(value / sections.fold(0, (sum, s) => sum + s.value.toInt()) * 100).toStringAsFixed(1)}%',
          //           style: const TextStyle(color: Colors.white70, fontSize: 11),
          //         ),
          //       ],
          //     );
          //   },
          // ),
        ),
        sections: sections,
        centerSpaceRadius: isDoughnut ? 40 : 0,
        sectionsSpace: 1,
      ),
    );
  }

  Widget _buildScatterChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<FlSpot> spots = [];
    List<double> yValues = [];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is num || first is String) {
        // Single series scatter chart
        for (int i = 0; i < min(categories.length, data.length); i++) {
          final value = _toDouble(data[i]);
          yValues.add(value);
          spots.add(FlSpot(i.toDouble(), value));
        }
      }
    }

    if (spots.isEmpty) {
      return _buildNoDataWidget();
    }

    // Get limited X-axis indices (max 5-6)
    final maxXLabels = min(6, categories.length);
    final xLabelIndices = _getSpacedIndices(categories.length, maxXLabels);

    // Get Y-axis values (max 5-6)
    final yAxisValues = _getYAxisValues(yValues, 5);

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
        maxX: categories.length > 1 ? (categories.length - 1).toDouble() : 1,
        minY: yValues.reduce(min) * 0.9,
        maxY: yValues.reduce(max) * 1.1,
        scatterTouchData: ScatterTouchData(
          enabled: true,
          touchTooltipData: ScatterTouchTooltipData(
            //tooltipBgColor: Colors.black.withOpacity(0.9),
            // FIXED: Scatter chart has a different callback format
            // getTooltipItems: (ScatterSpot touchedSpot) {
            //   final index = touchedSpot.spotIndex;
            //   final category = index < categories.length
            //       ? categories[index]
            //       : 'Point $index';
            //   final value = touchedSpot.y;

            //   return [
            //     ScatterTooltipItem(
            //       '$category\n',
            //       TextStyle(color: Colors.white, fontSize: 12),
            //       children: [
            //         TextSpan(
            //           text: 'Value: ${_formatNumber(value)}',
            //           style: const TextStyle(
            //             color: Colors.white70,
            //             fontSize: 11,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ];
            // },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (xLabelIndices.contains(index) &&
                    index < categories.length) {
                  final shouldRotate = categories.length > 8;
                  return Padding(
                    padding: EdgeInsets.only(top: shouldRotate ? 8.0 : 4.0),
                    child: Transform.rotate(
                      angle: shouldRotate ? -0.5 : 0,
                      child: Text(
                        _formatCategory(categories[index]),
                        style: TextStyle(
                          color: widget.axisColor,
                          fontSize: categories.length > 12 ? 9 : 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: categories.length > 8 ? 45 : 32,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: yAxisValues.length > 1
                  ? yAxisValues[1] - yAxisValues[0]
                  : 1,
              getTitlesWidget: (value, meta) {
                if (yAxisValues.any((v) => (v - value).abs() < 0.001)) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Text(
                      _formatNumber(value),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 45,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor, width: 0.5),
        ),
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          horizontalInterval: yAxisValues.length > 1
              ? yAxisValues[1] - yAxisValues[0]
              : null,
          getDrawingHorizontalLine: (value) => FlLine(
            color: widget.gridColor.withOpacity(0.5),
            strokeWidth: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalBarChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<BarChartGroupData> barGroups = [];
    List<double> allValues = [];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is num || first is String) {
        // Single series horizontal bar chart
        for (int i = 0; i < categories.length; i++) {
          if (i < data.length) {
            final value = data[i];
            final numValue = _toDouble(value);
            allValues.add(numValue);

            barGroups.add(
              BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                    toY: numValue,
                    width: 16,
                    color: const Color(0xFF3B82F6),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
            );
          }
        }
      }
    }

    if (barGroups.isEmpty) {
      return _buildNoDataWidget();
    }

    // Get limited Y-axis indices (max 5-6) - Y-axis is vertical for horizontal bar chart
    final maxYLabels = min(6, categories.length);
    final yLabelIndices = _getSpacedIndices(categories.length, maxYLabels);

    // Get X-axis values (max 5-6) - X-axis is horizontal for horizontal bar chart
    final xValues = _getYAxisValues(allValues, 5);

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.start,
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            //tooltipBgColor: Colors.black.withOpacity(0.9),
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              final category = categories[group.x.toInt()];
              final value = rod.toY;

              return BarTooltipItem(
                '$category\n',
                TextStyle(color: Colors.white, fontSize: 12),
                children: [
                  TextSpan(
                    text: 'Value: ${_formatNumber(value)}',
                    style: const TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                ],
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (yLabelIndices.contains(index) &&
                    index < categories.length) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      _formatCategory(categories[index]),
                      style: TextStyle(
                        color: widget.axisColor,
                        fontSize: categories.length > 12 ? 9 : 10,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 80,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: xValues.length > 1 ? xValues[1] - xValues[0] : 1,
              getTitlesWidget: (value, meta) {
                if (xValues.any((v) => (v - value).abs() < 0.001)) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      _formatNumber(value),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 30,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor, width: 0.5),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          drawHorizontalLine: false,
          verticalInterval: xValues.length > 1 ? xValues[1] - xValues[0] : null,
          getDrawingVerticalLine: (value) => FlLine(
            color: widget.gridColor.withOpacity(0.5),
            strokeWidth: 0.5,
          ),
        ),
        barGroups: barGroups,
      ),
    );
  }

  Widget _buildHistogramChart() {
    final categories = widget.chartData.bins != null
        ? widget.chartData.bins!.map((e) => e.toString()).toList()
        : _getCategories();
    final data = widget.chartData.data;

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    return _buildBarChart(); // Use regular bar chart for histogram
  }

  Widget _buildWaterfallChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    if (data == null || categories.isEmpty) {
      return _buildNoDataWidget();
    }

    List<BarChartGroupData> barGroups = [];
    List<double> values = [];

    if (data is List) {
      for (int i = 0; i < min(categories.length, data.length); i++) {
        final value = _toDouble(data[i]);
        values.add(value);
      }
    }

    if (values.isEmpty) {
      return _buildNoDataWidget();
    }

    // Calculate cumulative values for waterfall
    List<double> cumulative = [];
    double runningTotal = 0;

    for (double value in values) {
      runningTotal += value;
      cumulative.add(runningTotal);
    }

    // Create bars for waterfall
    for (int i = 0; i < values.length; i++) {
      final isIncrease = values[i] >= 0;
      final fromY = i == 0 ? 0 : cumulative[i - 1];
      final toY = cumulative[i];

      barGroups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              fromY: fromY.toDouble(),
              toY: toY,
              width: 20,
              color: isIncrease
                  ? const Color(0xFF10B981)
                  : const Color(0xFFEF4444),
              borderRadius: BorderRadius.zero,
            ),
          ],
        ),
      );
    }

    // Get limited X-axis indices (max 5-6)
    final maxXLabels = min(6, categories.length);
    final xLabelIndices = _getSpacedIndices(categories.length, maxXLabels);

    // Get Y-axis values (max 5-6)
    final yValues = _getYAxisValues(cumulative, 5);

    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            //tooltipBgColor: Colors.black.withOpacity(0.9),
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              final category = categories[group.x.toInt()];
              final change = values[group.x.toInt()];
              final cumulativeValue = cumulative[group.x.toInt()];
              final isIncrease = change >= 0;

              return BarTooltipItem(
                '$category\n',
                TextStyle(color: Colors.white, fontSize: 12),
                children: [
                  TextSpan(
                    text:
                        'Change: ${isIncrease ? '+' : ''}${_formatNumber(change)}\n',
                    style: TextStyle(
                      color: isIncrease ? Colors.green : Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Total: ${_formatNumber(cumulativeValue)}',
                    style: const TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                ],
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (xLabelIndices.contains(index) &&
                    index < categories.length) {
                  final shouldRotate = categories.length > 8;
                  return Padding(
                    padding: EdgeInsets.only(top: shouldRotate ? 8.0 : 4.0),
                    child: Transform.rotate(
                      angle: shouldRotate ? -0.5 : 0,
                      child: Text(
                        _formatCategory(categories[index]),
                        style: TextStyle(
                          color: widget.axisColor,
                          fontSize: categories.length > 12 ? 9 : 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: categories.length > 8 ? 45 : 32,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: yValues.length > 1 ? yValues[1] - yValues[0] : 1,
              getTitlesWidget: (value, meta) {
                if (yValues.any((v) => (v - value).abs() < 0.001)) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Text(
                      _formatNumber(value),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 45,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor, width: 0.5),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: yValues.length > 1
              ? yValues[1] - yValues[0]
              : null,
          getDrawingHorizontalLine: (value) => FlLine(
            color: widget.gridColor.withOpacity(0.5),
            strokeWidth: 0.5,
          ),
        ),
        barGroups: barGroups,
      ),
    );
  }

  Widget _buildNoDataWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.bar_chart,
            color: widget.textColor.withOpacity(0.3),
            size: 48,
          ),
          const SizedBox(height: 16),
          Text(
            'No data available',
            style: TextStyle(
              color: widget.textColor.withOpacity(0.5),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ChartTypeOption {
  final String label;
  final String value;

  ChartTypeOption(this.label, this.value);
}
