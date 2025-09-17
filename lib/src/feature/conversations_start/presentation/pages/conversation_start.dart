import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class ConversationStart extends ConsumerStatefulWidget {
  ConversationStart({super.key});

  @override
  ConsumerState<ConversationStart> createState() => _ConversationStartState();
}

class _ConversationStartState extends ConsumerState<ConversationStart> {
  List<double> generateStockLikeData({int count = 40, double start = 100}) {
    final random = Random();
    double value = start;
    return List.generate(count, (index) {
      value += (random.nextDouble() - 0.5) * 4; // change between -2 to +2
      return value;
    });
  }

  final List<Map<String, dynamic>> stocks = [
    {
      "symbol": "#TSLA",
      "name": "Tesla, Inc.",
      "price": 450.00,
      "change": "+3.23%",
    },
    {
      "symbol": "#AAPL",
      "name": "Apple Inc.",
      "price": 450.00,
      "change": "+3.23%",
    },
    {
      "symbol": "Google",
      "name": "Google Inc.",
      "price": 450.00,
      "change": "+3.23%",
    },
    {
      "symbol": "#TNR",
      "name": "Tnrel Inc.",
      "price": 450.00,
      "change": "+3.23%",
    },
    {
      "symbol": "#Meta",
      "name": "Meta.com",
      "price": 450.00,
      "change": "+3.23%",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          title: Text("Conversations", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            TabBar(
              dividerHeight: 0,
              indicator: BoxDecoration(), // remove default indicator
              labelPadding: EdgeInsets.zero,
              tabs: [
                _buildTab("All", 0),
                _buildTab("Stocks", 1),
                _buildTab("Crypto", 2),
                _buildTab("ETFs", 3),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                itemCount: stocks.length,
                itemBuilder: (context, index) {
                  final stock = stocks[index];
                  return Slidable(
                    key: ValueKey(stock["symbol"]),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            // Delete action
                            print("Delete ${stock["symbol"]}");
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (context) {
                            // Active action
                            print("Active ${stock["symbol"]}");
                          },
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          icon: Icons.check_circle,
                          label: 'Active',
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 14,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                Assets.images.tesla.path,
                                width: 42.w,
                                height: 41.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 5.h),
                              MdSnsText(
                                "3 days ago",
                                size: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color677FA4,
                              ),
                            ],
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MdSnsText(
                                  stock["symbol"],
                                  size: 16,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                SizedBox(height: 2.h),
                                MdSnsText(
                                  stock["name"],
                                  color: AppColors.color677FA4,
                                  fontWeight: FontWeight.w400,
                                  size: 14,
                                ),
                                SizedBox(height: 5.h),
                                MdSnsText(
                                  "Provide a company overview for...",
                                  color: AppColors.color677FA4,
                                  fontWeight: FontWeight.w400,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MdSnsText(
                                "\$${stock["price"]}",
                                size: 16,
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color: AppColors.color06D54E,
                                  ),
                                  MdSnsText(
                                    stock["change"],
                                    color: AppColors.color06D54E,
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 86.w,
                                height: 15.h,
                                child: Sparkline(
                                  data: generateStockLikeData(
                                    count: 50,
                                    start: 100,
                                  ),
                                  lineWidth: 2.0,
                                  lineColor: AppColors.color06D54E,
                                  pointsMode: PointsMode.none,
                                  pointColor: Colors.white,
                                  useCubicSmoothing: false,
                                  sharpCorners: true,
                                  fillMode: FillMode.below,
                                  fillGradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }, separatorBuilder: (BuildContext context, int index) { 
                  return Divider(
                    height: 1,
                    color: AppColors.colorB3B3B3,
                  );
                 },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget _buildTab(String text, int index) {
  return Tab(
    child: Builder(
      builder: (context) {
        final TabController controller = DefaultTabController.of(context);
        final bool isSelected = controller.index == index;

        // Listen to changes
        controller.addListener(() {
          (context as Element).markNeedsBuild();
        });

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.color203063 : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: isSelected ? AppColors.color203063 : AppColors.colorB3B3B3,
              width: 1.5,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        );
      },
    ),
  );
}
