import 'package:flutter/material.dart';

class GPTEchartContainer extends StatefulWidget {
  final Map<String, dynamic> chartData;

  const GPTEchartContainer({Key? key, required this.chartData})
    : super(key: key);

  @override
  State<GPTEchartContainer> createState() => _GPTEchartContainerState();
}

class _GPTEchartContainerState extends State<GPTEchartContainer> {
  late List<Map<String, String>> chartTypeOptions;
  late String selectedChartType;

  @override
  void initState() {
    super.initState();
    chartTypeOptions = detectTransformableTypes(widget.chartData);
    selectedChartType =
        widget.chartData['chart_type'] ??
        (chartTypeOptions.isNotEmpty ? chartTypeOptions[0]['value']! : '');
  }

  List<Map<String, String>> detectTransformableTypes(
    Map<String, dynamic> chartData,
  ) {
    final data = chartData['data'];
    final chartType = chartData['chart_type'] ?? '';
    final subType = chartData['sub_type'] ?? '';
    final categories = chartData['xAxis']?['data'] ?? chartData['xAxis'] ?? [];
    final List<Map<String, String>> types = [];
    const specialTypes = [
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
    final hasMultiAxis =
        chartData['yAxis'] is List && (chartData['yAxis'] as List).length > 2;
    final categoriesLen = categories.length;
    const maxPieCategories = 16;

    if (isSpecialChart || hasMultiAxis) return [];

    if (data is! List) return types;

    final first = data.isNotEmpty ? data[0] : null;
    final isArrayOfArrays = first is List;
    final isFlatPrimitiveArray =
        !isArrayOfArrays && (first is num || first is String);
    final isSeriesObjectArray =
        !isArrayOfArrays &&
        first is Map &&
        (first['data'] is List || first['value'] != null);

    if (isArrayOfArrays) {
      final firstInner = first;
      final isCandlestickFormat = firstInner is List && firstInner.length == 4;
      if (isCandlestickFormat) {
        types.add({'label': 'Candlestick', 'value': 'candlestick'});
      } else {
        types.add({'label': 'Bar', 'value': 'bar'});
        types.add({'label': 'Line', 'value': 'line'});
        types.add({'label': 'Area', 'value': 'area'});
        types.add({'label': 'Scatter', 'value': 'scatter'});
        if (data.length == 1 && categoriesLen <= maxPieCategories) {
          types.add({'label': 'Pie', 'value': 'pie'});
        }
      }
    }

    if (isFlatPrimitiveArray) {
      types.add({'label': 'Bar', 'value': 'bar'});
      types.add({'label': 'Line', 'value': 'line'});
      types.add({'label': 'Area', 'value': 'area'});
      if (categoriesLen <= maxPieCategories)
        types.add({'label': 'Pie', 'value': 'pie'});
      types.add({'label': 'Scatter', 'value': 'scatter'});
      if (data.length == categoriesLen * 4) {
        types.add({'label': 'Candlestick', 'value': 'candlestick'});
      }
    }

    if (isSeriesObjectArray) {
      types.add({'label': 'Bar', 'value': 'bar'});
      types.add({'label': 'Line', 'value': 'line'});
      types.add({'label': 'Area', 'value': 'area'});
      types.add({'label': 'Scatter', 'value': 'scatter'});
      if (data.length == 1) {
        final s = data[0];
        if (s['data'] is List &&
            (s['data'][0] is num || s['data'][0] is String) &&
            categoriesLen <= maxPieCategories) {
          types.add({'label': 'Pie', 'value': 'pie'});
        }
      }
    }
    return types;
  }

  void onChartTypeChange(String? value) {
    if (value != null) {
      setState(() {
        selectedChartType = value;
        // TODO: update chart rendering logic here
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (chartTypeOptions.isNotEmpty)
          DropdownButton<String>(
            value: selectedChartType,
            items: chartTypeOptions
                .map(
                  (type) => DropdownMenuItem(
                    value: type['value'],
                    child: Text(type['label']!),
                  ),
                )
                .toList(),
            onChanged: onChartTypeChange,
            isExpanded: true,
            hint: const Text('Select Chart Type'),
          ),
        // Chart container: replace with your chart widget
        Container(
          height: 300,
          color: Colors.grey[200],
          child: Center(child: Text('Chart will render here')),
        ),
      ],
    );
  }
}
