import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Analytics());
}

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956), // Base design size for responsiveness
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const AnalyticsScreen(),
        );
      },
    );
  }
}

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B2A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                color: const Color(0xFF0B1221), // Background color
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Side
                    Row(
                      children: [
                        // Chat bubble icon
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: const Color(0xFF151C2C),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 8),

                        // Analytics Button
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF20284B),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              // Logo Image
                              // Image.asset(
                              //   'assets/logo.png', // Apni image ka path yahan den
                              //   height: 18,
                              //   width: 18,
                              // ),
                              const SizedBox(width: 6),
                              const Text(
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

                    // Right Side - History Text
                    const Text(
                      "History",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- SEARCH BAR ----------
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF142233),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF142233),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.more_horiz, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              // ---------- STOCK INFO ----------
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage(
                      "assets/images/tesla_logo.png",
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "#TSLA • TESLA INC",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                      Text(
                        "173.19  ↑1.41%",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              // ---------- PRICE & MARKET CAP ----------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoCard(
                    title: "PREVIOUSLY CLOSE PRICE",
                    mainValue: "173.19",
                    subValue: "AFTER HOURS\n176.22  +0.25%",
                    subValueColor: Colors.greenAccent,
                  ),
                  _infoCard(
                    title: "MARKET CAPITALIZATION",
                    mainValue: "173.19",
                    subValue: "SHARES OUTSTANDING\n10,187,555",
                    subValueColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              // ---------- GRAPH SECTION ----------
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF142233),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    // Graph Filter Tabs
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        "1D",
                        "1W",
                        "1M",
                        "6M",
                        "1Y",
                        "5Y",
                      ].map((e) => _timeFilterChip(e, e == "1W")).toList(),
                    ),
                    SizedBox(height: 16.h),

                    // Graph Placeholder
                    Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Graph Placeholder",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // ---------- REVENUE ANALYSIS ----------
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF142233),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Revenue Analysis (2020-2025)",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const Icon(Icons.bar_chart, color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    // Dummy Bar Chart
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _bar(height: 140, label: "2020"),
                        _bar(height: 180, label: "2021"),
                        _bar(height: 100, label: "2022"),
                        _bar(height: 200, label: "2023"),
                        _bar(height: 120, label: "2024"),
                        _bar(height: 160, label: "2025"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Widgets ----------
  Widget _chip(String label, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blueAccent : const Color(0xFF142233),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 14.sp),
      ),
    );
  }

  Widget _infoCard({
    required String title,
    required String mainValue,
    required String subValue,
    required Color subValueColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF142233),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 12.sp),
            ),
            SizedBox(height: 8.h),
            Text(
              mainValue,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              subValue,
              style: TextStyle(color: subValueColor, fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }

  Widget _timeFilterChip(String label, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.blueAccent : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.grey.shade400,
          fontSize: 14.sp,
        ),
      ),
    );
  }

  Widget _bar({required double height, required String label}) {
    return Column(
      children: [
        Container(
          height: height,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 12.sp),
        ),
      ],
    );
  }
}
