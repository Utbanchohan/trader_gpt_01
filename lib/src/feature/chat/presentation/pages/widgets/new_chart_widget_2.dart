import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class ChartData {
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

  ChartData({
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
  final ChartData chartData;
  final Color textColor;
  final Color axisColor;
  final Color gridColor;
  final Color backgroundColor;
  final Color legendTextColor;

  const ChartWidget({
    Key? key,
    required this.chartData,
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
  late List<ChartTypeOption> _chartTypeOptions;

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
      'heatmap',
      'correlation',
      'radar',
      'treemap',
      'waterfall',
      'candlestick',
      'gradient_mapping',
      'polar',
      'histogram',
    ];

    final isSpecialChart = specialTypes.any(
      (type) => chartType.contains(type) || subType.contains(type),
    );

    // Check for multi-axis configuration
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
      const maxPieCategories = 16;

      // Multi-series (array of arrays)
      if (isArrayOfArrays && first is List) {
        // Check for OHLC candlestick data
        final isCandlestickFormat = first.length == 4;

        if (isCandlestickFormat) {
          types.add(ChartTypeOption('Candlestick', 'candlestick'));
        } else {
          types.addAll([
            ChartTypeOption('Bar', 'bar'),
            ChartTypeOption('Line', 'line'),
            ChartTypeOption('Area', 'area'),
            ChartTypeOption('Scatter', 'scatter'),
          ]);

          // Allow Pie for single series
          if (data.length == 1 && categoriesLen <= maxPieCategories) {
            types.add(ChartTypeOption('Pie', 'pie'));
          }
        }
      }

      // Single flat primitive array
      if (isFlatPrimitiveArray) {
        types.addAll([
          ChartTypeOption('Bar', 'bar'),
          ChartTypeOption('Line', 'line'),
          ChartTypeOption('Area', 'area'),
          ChartTypeOption('Scatter', 'scatter'),
        ]);

        if (categoriesLen <= maxPieCategories) {
          types.add(ChartTypeOption('Pie', 'pie'));
        }

        // Check for OHLC format
        if (data.length == categoriesLen * 4) {
          types.add(ChartTypeOption('Candlestick', 'candlestick'));
        }
      }

      // Array of series-like objects
      if (isSeriesObjectArray) {
        types.addAll([
          ChartTypeOption('Bar', 'bar'),
          ChartTypeOption('Line', 'line'),
          ChartTypeOption('Area', 'area'),
          ChartTypeOption('Scatter', 'scatter'),
        ]);

        if (data.length == 1) {
          final s = data[0] as Map<String, dynamic>;
          final sData = s['data'];
          if (sData is List &&
              (sData.isNotEmpty && (sData[0] is num || sData[0] is String)) &&
              categoriesLen <= maxPieCategories) {
            types.add(ChartTypeOption('Pie', 'pie'));
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          if (widget.chartData.title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                widget.chartData.title!,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          // Chart Type Dropdown
          if (_chartTypeOptions.isNotEmpty)
            Container(
              padding: const EdgeInsets.only(bottom: 16.0),
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
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: widget.axisColor),
                  ),
                  hintText: 'Select Chart Type',
                  hintStyle: TextStyle(
                    color: widget.textColor.withOpacity(0.7),
                  ),
                ),
                dropdownColor: widget.gridColor,
                style: TextStyle(color: widget.textColor),
              ),
            ),

          // Chart Container
          Expanded(child: _buildChart()),
        ],
      ),
    );
  }

  Widget _buildChart() {
    final chartType = _selectedChartType ?? widget.chartData.chartType ?? '';
    final subType = widget.chartData.subType ?? '';
    final useDropdownOnly =
        _selectedChartType != null &&
        _selectedChartType != widget.chartData.chartType;

    // Determine chart type
    bool isHeatmap =
        chartType == 'heatmap' ||
        (!useDropdownOnly &&
            (subType.contains('heatmap') || subType.contains('correlation')));
    bool isPie =
        chartType == 'pie' ||
        chartType == 'doughnut' ||
        (!useDropdownOnly &&
            (subType.contains('pie') || subType.contains('doughnut')));
    bool isDoughnut =
        chartType == 'doughnut' ||
        (!useDropdownOnly && subType.contains('doughnut'));
    bool isScatter =
        chartType == 'scatter' ||
        (!useDropdownOnly && subType.contains('scatter'));
    bool isCandlestick =
        chartType == 'candlestick' ||
        (!useDropdownOnly && subType.contains('candlestick'));
    bool isBar =
        chartType == 'bar' ||
        (!useDropdownOnly &&
            (subType.contains('bar') || subType.contains('grouped_bar')));
    bool isHorizontal =
        chartType == 'horizontal_bar' ||
        (!useDropdownOnly && subType.contains('horizontal'));
    bool isHistogram =
        chartType == 'histogram' ||
        (!useDropdownOnly && subType.contains('histogram'));
    bool isWaterfall =
        chartType == 'waterfall' ||
        (!useDropdownOnly && subType.contains('waterfall'));
    bool isLine =
        chartType == 'line' || (!useDropdownOnly && subType.contains('line'));
    bool isArea =
        chartType == 'area' || (!useDropdownOnly && subType.contains('area'));

    // Build appropriate chart
    if (isHeatmap) {
      return _buildHeatmap();
    } else if (isPie) {
      return _buildPieChart(isDoughnut: isDoughnut);
    } else if (isScatter) {
      return _buildScatterChart();
    } else if (isCandlestick) {
      return _buildCandlestickChart();
    } else if (isBar) {
      if (isHorizontal) {
        return _buildHorizontalBarChart();
      } else if (isHistogram) {
        return _buildHistogramChart();
      } else if (isWaterfall) {
        return _buildWaterfallChart();
      } else {
        return _buildBarChart();
      }
    } else if (isLine || isArea) {
      return _buildLineChart(isArea: isArea);
    } else {
      // Default to line chart
      return _buildLineChart();
    }
  }

  Widget _buildBarChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    List<BarChartGroupData> barGroups = [];
    List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is List) {
        // Multi-series data
        final numSeries = data.length;
        final barWidth = 0.15;

        for (int i = 0; i < categories.length; i++) {
          final bars = <BarChartRodData>[];

          for (int j = 0; j < numSeries; j++) {
            if (j < data.length && i < (data[j] as List).length) {
              final value = (data[j] as List)[i];
              final numValue = _toDouble(value);

              bars.add(
                BarChartRodData(
                  toY: numValue,
                  width: barWidth * categories.length,
                  color: colors[j % colors.length],
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }
          }

          barGroups.add(
            BarChartGroupData(
              x: i,
              groupVertically: true,
              barsSpace: 4,
              barRods: bars,
            ),
          );
        }
      } else if (first is num || first is String) {
        // Single series
        for (int i = 0; i < categories.length; i++) {
          if (i < data.length) {
            final value = data[i];
            final numValue = _toDouble(value);

            barGroups.add(
              BarChartGroupData(
                x: i,
                barRods: [
                  BarChartRodData(
                    toY: numValue,
                    width: 16,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
            );
          }
        }
      }
    }

    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            // tooltipBgColor: Colors.black.withOpacity(0.8),
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              final category = categories[group.x.toInt()];
              final value = rod.toY;
              return BarTooltipItem(
                '$category: ${_formatNumber(value)}\n',
                TextStyle(color: widget.textColor),
                children: [
                  TextSpan(
                    text: 'Value: ${_formatNumber(value)}',
                    style: TextStyle(color: widget.textColor),
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
                if (value.toInt() >= 0 && value.toInt() < categories.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      _formatCategory(categories[value.toInt()]),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 40,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  _formatNumber(value),
                  style: TextStyle(color: widget.axisColor, fontSize: 10),
                );
              },
              reservedSize: 40,
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: widget.gridColor, strokeWidth: 1);
          },
        ),
        barGroups: barGroups,
      ),
    );
  }

  Widget _buildLineChart({bool isArea = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;
    final legend = widget.chartData.legend ?? [];

    List<LineChartBarData> lineBars = [];
    List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is List) {
        // Multi-series data
        for (int i = 0; i < data.length; i++) {
          final seriesData = data[i] as List;
          final points = <FlSpot>[];

          for (int j = 0; j < categories.length; j++) {
            if (j < seriesData.length) {
              final value = seriesData[j];
              final numValue = _toDouble(value);
              points.add(FlSpot(j.toDouble(), numValue));
            }
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
                      color: colors[i % colors.length].withOpacity(0.3),
                    )
                  : null,
            ),
          );
        }
      } else if (first is num || first is String) {
        // Single series
        final points = <FlSpot>[];

        for (int i = 0; i < categories.length; i++) {
          if (i < data.length) {
            final value = data[i];
            final numValue = _toDouble(value);
            points.add(FlSpot(i.toDouble(), numValue));
          }
        }

        lineBars.add(
          LineChartBarData(
            spots: points,
            isCurved: true,
            color: Colors.blue,
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: isArea
                ? BarAreaData(show: true, color: Colors.blue.withOpacity(0.3))
                : null,
          ),
        );
      }
    }

    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            // tooltipBgColor: Colors.black.withOpacity(0.8),
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((touchedSpot) {
                final index = touchedSpot.spotIndex;
                final category = index < categories.length
                    ? categories[index]
                    : 'Unknown';
                final value = touchedSpot.y;
                return LineTooltipItem(
                  '$category\n',
                  TextStyle(color: widget.textColor),
                  children: [
                    TextSpan(
                      text: 'Value: ${_formatNumber(value)}',
                      style: TextStyle(color: widget.textColor),
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
                if (value.toInt() >= 0 && value.toInt() < categories.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      _formatCategory(categories[value.toInt()]),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 40,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  _formatNumber(value),
                  style: TextStyle(color: widget.axisColor, fontSize: 10),
                );
              },
              reservedSize: 40,
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor),
        ),
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: widget.gridColor, strokeWidth: 1);
          },
        ),
        lineBarsData: lineBars,
      ),
    );
  }

  Widget _buildPieChart({bool isDoughnut = false}) {
    final categories = _getCategories();
    final data = widget.chartData.data;

    List<PieChartSectionData> sections = [];
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.yellow,
      Colors.cyan,
      Colors.pink,
    ];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is num || first is String) {
        // Single series
        double total = 0;
        final values = <double>[];

        for (int i = 0; i < min(categories.length, data.length); i++) {
          final value = _toDouble(data[i]);
          values.add(value);
          total += value;
        }

        for (int i = 0; i < min(categories.length, values.length); i++) {
          final percentage = total > 0 ? (values[i] / total) * 100 : 0;

          sections.add(
            PieChartSectionData(
              value: values[i],
              title:
                  '${categories[i]}\n${_formatNumber(values[i])} (${percentage.toStringAsFixed(1)}%)',
              color: colors[i % colors.length],
              radius: isDoughnut ? 30 : 40,
              titleStyle: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }
      }
    }

    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {},
        ),
        sections: sections,
        centerSpaceRadius: isDoughnut ? 40 : 0,
        sectionsSpace: 2,
      ),
    );
  }

  Widget _buildScatterChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    List<ScatterSpot> spots = [];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is num || first is String) {
        // Single series
        for (int i = 0; i < min(categories.length, data.length); i++) {
          final value = _toDouble(data[i]);
          spots.add(ScatterSpot(i.toDouble(), value));
        }
      }
    }

    return ScatterChart(
      ScatterChartData(
        scatterSpots: spots,
        minX: 0,
        maxX: categories.length.toDouble(),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: widget.gridColor),
        ),
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: widget.gridColor, strokeWidth: 1);
          },
          getDrawingVerticalLine: (value) {
            return FlLine(color: widget.gridColor, strokeWidth: 1);
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value.toInt() >= 0 && value.toInt() < categories.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      _formatCategory(categories[value.toInt()]),
                      style: TextStyle(color: widget.axisColor, fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }
                return const SizedBox();
              },
              reservedSize: 40,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  _formatNumber(value),
                  style: TextStyle(color: widget.axisColor, fontSize: 10),
                );
              },
              reservedSize: 40,
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
      ),
    );
  }

  Widget _buildCandlestickChart() {
    final categories = _getCategories();
    final data = widget.chartData.data;

    List<CandleData> candles = [];

    if (data is List) {
      final first = data.isNotEmpty ? data[0] : null;

      if (first is List && first.length == 4) {
        // OHLC format: array of arrays
        for (int i = 0; i < min(categories.length, data.length); i++) {
          final candle = data[i] as List;
          if (candle.length >= 4) {
            candles.add(
              CandleData(
                open: _toDouble(candle[0]),
                close: _toDouble(candle[1]),
                low: _toDouble(candle[2]),
                high: _toDouble(candle[3]),
              ),
            );
          }
        }
      } else if (first is num || first is String) {
        // Flat array format (4 values per category)
        final valuesPerCandle = 4;
        for (int i = 0; i < categories.length; i++) {
          final startIdx = i * valuesPerCandle;
          if (startIdx + valuesPerCandle <= data.length) {
            candles.add(
              CandleData(
                open: _toDouble(data[startIdx]),
                close: _toDouble(data[startIdx + 1]),
                low: _toDouble(data[startIdx + 2]),
                high: _toDouble(data[startIdx + 3]),
              ),
            );
          }
        }
      }
    }

    // Since fl_chart doesn't have native candlestick support,
    // we'll use a custom painter or switch to another library
    // For now, show a placeholder
    return Center(
      child: Text(
        'Candlestick chart requires additional implementation',
        style: TextStyle(color: widget.textColor),
      ),
    );
  }

  Widget _buildHeatmap() {
    final xLabels = widget.chartData.xAxis is List
        ? (widget.chartData.xAxis as List).map((e) => e.toString()).toList()
        : [];
    final yLabels = widget.chartData.yAxis is List
        ? (widget.chartData.yAxis as List).map((e) => e.toString()).toList()
        : [];

    return Center(
      child: Text(
        'Heatmap chart requires additional implementation',
        style: TextStyle(color: widget.textColor),
      ),
    );
  }

  Widget _buildHorizontalBarChart() {
    // Similar to bar chart but with swapped axes
    return Center(
      child: Text(
        'Horizontal bar chart',
        style: TextStyle(color: widget.textColor),
      ),
    );
  }

  Widget _buildHistogramChart() {
    final categories = widget.chartData.bins is List
        ? (widget.chartData.bins as List).map((e) => e.toString()).toList()
        : _getCategories();

    return Center(
      child: Text('Histogram chart', style: TextStyle(color: widget.textColor)),
    );
  }

  Widget _buildWaterfallChart() {
    return Center(
      child: Text('Waterfall chart', style: TextStyle(color: widget.textColor)),
    );
  }

  double _toDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) {
      return double.tryParse(value) ?? 0.0;
    }
    return 0.0;
  }

  String _formatNumber(double value) {
    // Simple number formatting
    if (value >= 1e12) {
      return '\$${(value / 1e12).toStringAsFixed(2)}T';
    } else if (value >= 1e9) {
      return '\$${(value / 1e9).toStringAsFixed(2)}B';
    } else if (value >= 1e6) {
      return '\$${(value / 1e6).toStringAsFixed(2)}M';
    } else if (value >= 1e3) {
      return '\$${(value / 1e3).toStringAsFixed(2)}K';
    } else {
      return '\$${value.toStringAsFixed(2)}';
    }
  }

  String _formatCategory(String category) {
    // Try to parse dates
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

      // Try numeric timestamp
      final numValue = double.tryParse(category);
      if (numValue != null) {
        if (numValue > 1000000000 && numValue < 10000000000) {
          final date = DateTime.fromMillisecondsSinceEpoch(
            (numValue * 1000).toInt(),
          );
          final mm = date.month.toString().padLeft(2, '0');
          final dd = date.day.toString().padLeft(2, '0');
          return '$mm/$dd';
        } else if (numValue > 1000000000000) {
          final date = DateTime.fromMillisecondsSinceEpoch(numValue.toInt());
          final mm = date.month.toString().padLeft(2, '0');
          final dd = date.day.toString().padLeft(2, '0');
          return '$mm/$dd';
        }
      }
    } catch (e) {
      // Ignore errors
    }

    // Truncate long categories
    if (category.length > 15) {
      return '${category.substring(0, 12)}...';
    }

    return category;
  }
}

class ChartTypeOption {
  final String label;
  final String value;

  ChartTypeOption(this.label, this.value);
}

class CandleData {
  final double open;
  final double close;
  final double low;
  final double high;

  CandleData({
    required this.open,
    required this.close,
    required this.low,
    required this.high,
  });
}
