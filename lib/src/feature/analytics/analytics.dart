import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/chart/lin_chart.dart';
import 'package:trader_gpt/src/shared/chart/performance_table.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsScreen extends StatefulWidget {
  AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                color: Color(0xFF0B1221), // Background color
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Side
                    Row(
                      children: [
                        // Chat bubble icon
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Color(0xFF151C2C),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        SizedBox(width: 8),

                        // Analytics Button
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF20284B),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              // Logo Image
                              Image.asset(
                                Assets.images.analytics.path,
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "ANALYTICS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "History",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- SEARCH BAR ----------
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xFF142233),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search here",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- FILTER CHIPS ----------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _chip("Overview", isSelected: true),
                  _chip("Company"),
                  _chip("Financial"),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFF142233),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.more_horiz, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              Row(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 53.w,
                          height: 53.h,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                          child: Image.asset(
                            Assets.images.tesla.path,
                            width: 31.w,
                            height: 31.h,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 22.w,
                          height: 22.h,
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            color: AppColors.color1A1F2C,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            Assets.images.tradersGPTLogo.path,
                            width: 15.w,
                            height: 15.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MdSnsText(
                            "#TSLA",

                            // "#${widget.chatRouting!.symbol}",
                            fontWeight: FontWeight.w700,
                            size: 16,
                            color: AppColors.white,
                          ),
                          SizedBox(width: 4),
                          MdSnsText(
                            "TESLA INC",

                            // widget.chatRouting!.companyName!
                            //     .split("-")
                            //     .first
                            //     .trim(),
                            color: AppColors.colorB2B2B7,
                            size: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.white,

                            size: 20.sp,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MdSnsText(
                            "173.19",
                            // " ${widget.chatRouting!.changePercentage!.toStringAsFixed(2)}%",
                            color: AppColors.white,
                            // widget.chatRouting!.changePercentage
                            //     .toString()
                            //     .contains("-")
                            // ? AppColors.redFF3B3B

                            // :
                            size: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(width: 6),
                          Icon(
                            // widget.chatRouting!.changePercentage
                            //         .toString()
                            //         .contains("-")
                            //     ? Icons.arrow_drop_down
                            //     :
                            Icons.arrow_drop_up,
                            color:
                                // widget.chatRouting!.changePercentage
                                //     .toString()
                                //     .contains("-")
                                // ? AppColors.redFF3B3B
                                // :
                                AppColors.color00FF55,
                            size: 20,
                          ),
                          MdSnsText(
                            "1.41%",
                            // " ${widget.chatRouting!.changePercentage!.toStringAsFixed(2)}%",
                            color: AppColors.color00FF55,
                            // widget.chatRouting!.changePercentage
                            //     .toString()
                            //     .contains("-")
                            // ? AppColors.redFF3B3B

                            // :
                            size: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomLineChart(),
              SizedBox(height: 20.h),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Performance Overview",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              Assets.images.textalignJustifycenter.path,
                              height: 14.h,
                              width: 16.55.w,
                            ),
                            SizedBox(width: 10.w),
                            Image.asset(
                              Assets.images.chart.path,
                              height: 14.h,
                              width: 14.w,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    // Dummy Table
                    PerformanceTable(),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- PRICE COMPARISON ----------
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.color091224,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MdSnsText(
                      "Price Comparison",
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.fieldTextColor,
                    ),
                    SizedBox(height: 16.h),
                    SizedBox(
                      height: 180,
                      child: LineChart(
                        LineChartData(
                          backgroundColor: AppColors.color091224,
                          gridData: FlGridData(
                            show: true,
                            getDrawingHorizontalLine: (value) => FlLine(
                              color: AppColors.color1B254B,
                              strokeWidth: 3,
                            ),
                            getDrawingVerticalLine: (value) => FlLine(
                              color: Colors.transparent,
                              strokeWidth: 1,
                            ),
                          ),
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 28,
                                interval: 10,
                                getTitlesWidget: (value, meta) => MdSnsText(
                                  value.toInt().toString(),
                                  color: AppColors.white,
                                  size: 10,
                                ),
                              ),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                interval: 1,
                                getTitlesWidget: (value, meta) => MdSnsText(
                                  value.toInt().toString(),
                                  color: AppColors.white,
                                  size: 10,
                                ),
                              ),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                FlSpot(1, 35),
                                FlSpot(2, 40),
                                FlSpot(3, 20),
                                FlSpot(4, 55),
                                FlSpot(5, 60),
                                FlSpot(6, 45),
                                FlSpot(7, 38),
                                FlSpot(8, 42),
                                FlSpot(9, 41),
                                FlSpot(10, 50),
                                FlSpot(11, 55),
                                FlSpot(12, 37),
                              ],
                              isCurved: true,
                              color: AppColors.color0098E4,
                              barWidth: 3,
                              dotData: FlDotData(show: false),
                            ),
                            LineChartBarData(
                              spots: [
                                FlSpot(1, 25),
                                FlSpot(2, 35),
                                FlSpot(3, 30),
                                FlSpot(4, 40),
                                FlSpot(5, 45),
                                FlSpot(6, 72),
                                FlSpot(7, 20),
                                FlSpot(8, 28),
                                FlSpot(9, 26),
                                FlSpot(10, 60),
                                FlSpot(11, 70),
                                FlSpot(12, 58),
                              ],
                              isCurved: true,
                              color: AppColors.color06D54E,
                              barWidth: 3,
                              dotData: FlDotData(show: false),
                            ),
                          ],
                          minX: 1,
                          maxX: 12,
                          minY: 10,
                          maxY: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- WEEKLY SEASONALITY ----------
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF142233),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weekly Seasonality",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 12.h),
                    Column(
                      children: [
                        _progressBar("Monday", 0.7),
                        _progressBar("Tuesday", 0.6),
                        _progressBar("Wednesday", 0.8),
                        _progressBar("Thursday", 0.92),
                        _progressBar("Friday", 0.5),
                        _progressBar("Saturday", 0.7),
                        _progressBar("Sunday", 0.9),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- SHARE STRUCTURE ----------
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF142233),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Share Structure",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 12.h),
                    _shareRow("Authorized Shares", "500.00M"),
                    _shareRow("Outstanding Shares", "7.43B"),
                    _shareRow("Percent Insiders", "0.052"),
                    _shareRow("Percent Institutions", "73.21"),
                    _shareRow("Held at DTC", "N/A"),
                    _shareRow("Float", "7,423,671,316"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _chip(String label, {bool isSelected = false}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: isSelected ? Colors.blueAccent : Color(0xFF142233),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 14.sp),
    ),
  );
}

Widget _tableHeader(String text) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.r),
    color: AppColors.color1B254B,
  ),
  child: Text(
    text,
    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
  ),
);

Widget _tableCell(String text) => Padding(
  padding: EdgeInsets.all(8),
  child: Text(text, style: TextStyle(color: Colors.white)),
);

Widget _progressBar(String label, double percent) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        SizedBox(
          width: 70,
          child: Text(label, style: TextStyle(color: Colors.white)),
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: percent,
            color: Colors.blueAccent,
            backgroundColor: Colors.white12,
          ),
        ),
      ],
    ),
  );
}

Widget _shareRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(color: Colors.grey)),
        Text(value, style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}
