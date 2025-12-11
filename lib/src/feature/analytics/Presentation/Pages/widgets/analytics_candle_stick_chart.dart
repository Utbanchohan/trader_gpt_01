import 'dart:typed_data';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/extensions/number_formatter_extension.dart';
import '../../../domain/model/analysis_data/analysis_data_model.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomCandleChart extends StatefulWidget {
  final GlobalKey screenshotKey = GlobalKey();

  final String name;
  final List<ChartData> data;
  final void Function(String id) onPressed;
  final String selectedItem;
  bool? fromChat;

  CustomCandleChart({
    super.key,
    required this.data,
    required this.onPressed,
    required this.name,
    required this.selectedItem,
    this.fromChat,
  });

  @override
  State<CustomCandleChart> createState() => _CustomCandleChartState();
}

class _CustomCandleChartState extends State<CustomCandleChart> {
  int currentZoomLevel = 1;

  Future<void> captureWidgetScreenshot() async {
    try {
      // Check storage permission
      if (!(await Permission.storage.request().isGranted)) {
        Fluttertoast.showToast(
          msg: "Storage permission denied",
          toastLength: Toast.LENGTH_SHORT,
        );
        return;
      }

      final boundary =
          widget.screenshotKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary?;

      if (boundary == null) {
        Fluttertoast.showToast(
          msg: "Unable to capture screenshot",
          toastLength: Toast.LENGTH_SHORT,
        );
        return;
      }

      final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final ByteData? byteData = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );
      if (byteData == null) return;

      final Uint8List pngBytes = byteData.buffer.asUint8List();

      final result = await ImageGallerySaverPlus.saveImage(
        pngBytes,
        quality: 100,
        name: "widget_screenshot",
      );

      Fluttertoast.showToast(
        msg: "Screenshot saved successfully!",
        toastLength: Toast.LENGTH_SHORT,
      );

      print("Screenshot Saved! Path: $result");
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Screenshot Error: $e",
        toastLength: Toast.LENGTH_SHORT,
      );
      print("Screenshot Error: $e");
    }
  }

  double calculateInterval(double minY, double maxY, {int targetSteps = 6}) {
    final range = (maxY - minY).abs();
    if (range == 0) return 1;
    final rawInterval = range / targetSteps;
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

  final List<String> labels = ['H', 'D', 'W', 'M'];
  final List<String> labels1 = ['Hour', 'Min'];
  String selectedIndex1 = "Hour";

  @override
  Widget build(BuildContext context) {
    final List<OhlcData> chartData = widget.data.map((item) {
      final open = item.y != null && item.y!.isNotEmpty ? item.y![0] : 0.0;
      final high = item.y != null && item.y!.length > 0 ? item.y![1] : 0.0;
      final low = item.y != null && item.y!.length > 1 ? item.y![2] : 0.0;
      final close = item.y != null && item.y!.length > 2 ? item.y![3] : 0.0;
      return OhlcData(
        date: DateTime.parse(item.x!),
        open: open,
        high: high,
        low: low,
        close: close,
      );
    }).toList();

    List<BarChartGroupData> getBarGroups() {
      return chartData.asMap().entries.map((entry) {
        final index = entry.key;
        final data = entry.value;

        final bullColor = AppColors.color00FF55;
        final bearColor = AppColors.color0xFFCD3438;
        final barColor = data.isBullish ? bullColor : bearColor;

        return BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              fromY: data.low,
              toY: data.high,
              width: currentZoomLevel * 1,
              borderRadius: BorderRadius.zero,
              rodStackItems: [
                BarChartRodStackItem(
                  data.low,
                  data.bodyMin,
                  Colors.transparent,
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),
                BarChartRodStackItem(
                  data.bodyMin,
                  data.bodyMax,
                  barColor,
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),
                BarChartRodStackItem(
                  data.bodyMax,
                  data.high,
                  Colors.transparent,
                  borderSide: BorderSide(color: barColor, width: 1.0),
                ),
              ],
            ),
          ],
        );
      }).toList();
    }

    return RepaintBoundary(
      key: widget.screenshotKey,
      child: Container(
        alignment: Alignment.center,
        height: 360.h,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.colorB3B3B3),
          color: AppColors.color091224,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: Name + Screenshot Button + Right-side Labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: widget.name.isNotEmpty,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 240,
                            child: MdSnsText(
                              widget.name,
                              color: AppColors.fieldTextColor,
                              fontWeight: TextFontWeightVariant.h3,
                              variant: TextVariant.h3,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 7),
                          widget.fromChat != null && widget.fromChat == true
                              ? GestureDetector(
                                  onTap: () {
                                    captureWidgetScreenshot();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: AppColors.bubbleColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Icon(
                                      Icons.arrow_circle_down,
                                      size: 18,
                                    ),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),

                      SizedBox(height: 2),
                      widget.fromChat == null
                          ? MdSnsText(
                              "Description about OHLC chart",
                              color: AppColors.fieldTextColor,
                              fontWeight: TextFontWeightVariant.h4,
                              variant: TextVariant.h4,
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
                Row(
                  children: widget.fromChat == null
                      ? List.generate(labels.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              widget.onPressed(labels[index]);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: labels[index] == widget.selectedItem
                                    ? AppColors.color0E1738
                                    : AppColors.colo2C3754,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: MdSnsText(
                                labels[index],
                                color: widget.selectedItem == labels[index]
                                    ? Colors.white
                                    : Colors.white70,
                                variant: TextVariant.h5,
                                fontWeight: TextFontWeightVariant.h2,
                              ),
                            ),
                          );
                        })
                      : [],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 260.h,
              child: BarChart(
                duration: const Duration(milliseconds: 1200),
                curve: Curves.easeInOutCubic,
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    horizontalInterval: calculateInterval(
                      chartData.isNotEmpty
                          ? chartData.map((e) => e.low).reduce(min)
                          : 0.0,
                      chartData.isNotEmpty
                          ? chartData.map((e) => e.high).reduce(max)
                          : 0.0,
                    ),
                    verticalInterval: 1,
                    getDrawingHorizontalLine: (value) =>
                        FlLine(color: AppColors.colorB3B3B3, strokeWidth: 1.2),
                    getDrawingVerticalLine: (value) =>
                        FlLine(color: AppColors.colorB3B3B3, strokeWidth: 0.8),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        minIncluded: false,

                        maxIncluded: false,
                        reservedSize: 50.w, // thoda zyada space
                        interval: calculateInterval(
                          chartData.isNotEmpty
                              ? chartData.map((e) => e.low).reduce(min)
                              : 0.0,
                          chartData.isNotEmpty
                              ? chartData.map((e) => e.high).reduce(max)
                              : 0.0,
                        ),
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 4,
                            ), // thoda space
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                Filters.systemNumberConvention(
                                  value,
                                  isPrice: true,
                                  isAbs: true,
                                  containerWidth: 30,
                                  isRound: true,
                                ),
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    bottomTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: getBarGroups(),
                  barTouchData: BarTouchData(enabled: true),
                  maxY: chartData.isNotEmpty
                      ? chartData.map((e) => e.high).reduce(max)
                      : 0.0,
                  minY: chartData.isNotEmpty
                      ? chartData.map((e) => e.low).reduce(min)
                      : 0.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OhlcData {
  final DateTime date;
  final double open;
  final double high;
  final double low;
  final double close;
  final bool isBullish;

  OhlcData({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  }) : isBullish = close > open;

  double get bodyMax => isBullish ? close : open;
  double get bodyMin => isBullish ? open : close;
}
