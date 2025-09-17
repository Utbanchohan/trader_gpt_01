import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class ConversationStart extends ConsumerStatefulWidget {
  ConversationStart({super.key});

  @override
  ConsumerState<ConversationStart> createState() => _ConversationStartState();
}

class _ConversationStartState extends ConsumerState<ConversationStart> {
  List<ChatHistory> convo = [];

  @override
  void initState() {
    getChats();
    // TODO: implement initState
    super.initState();
  }

  getChats() async {
    var res = await ref.read(chatRepository).chats();
    if (res.isSuccess) {
      for (int i = 0; i < res.data!.results.length; i++) {
        convo.add(res.data!.results[i]);
      }
      // scrollToBottom();
      setState(() {});
    } else {
      return false;
    }
  }

  List<double> generateStockLikeData({int count = 40, double start = 100}) {
    final random = Random();
    double value = start;
    return List.generate(count, (index) {
      value += (random.nextDouble() - 0.5) * 4; // change between -2 to +2
      return value;
    });
  }

  
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
            convo != null && convo.length > 0
                ? Expanded(
                    child: ListView.separated(
                      itemCount: convo.length,
                      itemBuilder: (context, index) {
                        final stock = convo[index];
                        return Slidable(
                          // key: ValueKey(stock["symbol"]),
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              CustomSlidableAction(
                                onPressed: (context) {
                                  // Delete action
                                  // print("Delete ${stock["symbol"]}");
                                },
                                backgroundColor: AppColors.color1B254B,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets
                                          .images
                                          .direct
                                          .path, // yahan apni image lagegi
                                      width: 24.w,
                                      height: 24.h,
                                      color: AppColors
                                          .color9EAAC0, // agar white tint chahiye
                                    ),
                                    SizedBox(height: 4),
                                    MdSnsText(
                                      'Archive',

                                      color: AppColors.color9EAAC0,
                                      fontWeight: FontWeight.w400,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),

                              CustomSlidableAction(
                                onPressed: (context) {
                                  // Delete action
                                  // print("Delete ${stock["symbol"]}");
                                },
                                backgroundColor: AppColors.color091224,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets
                                          .images
                                          .trash
                                          .path, // yahan apni image lagegi
                                      width: 24.w,
                                      height: 24.h,
                                      color: AppColors
                                          .color9EAAC0, // agar white tint chahiye
                                    ),
                                    SizedBox(height: 4),
                                    MdSnsText(
                                      'Delete',

                                      color: AppColors.color9EAAC0,
                                      fontWeight: FontWeight.w400,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
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
                                      // "3 days ago",
                                      stock.lastMessage.createdAt.millisecondsSinceEpoch.timeAgoFromMilliseconds() ,
                                      size: 10,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.color677FA4,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MdSnsText(
                                        stock.symbol,
                                        // stock["symbol"],
                                        size: 16,
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(height: 2.h),
                                      MdSnsText(
                                        // stock["name"],
                                        stock.companyName != null
                                            ? stock.companyName
                                                  .split("-")
                                                  .first
                                                  .trim()
                                            : "",

                                        color: AppColors.color677FA4,
                                        fontWeight: FontWeight.w400,
                                        size: 14,
                                      ),
                                      SizedBox(height: 5.h),
                                      MdSnsText(
                                        stock.lastMessage.message,
                                        maxLines: 1,
                                        // "Provide a company overview for...",
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
                                      "\$200",
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
                                          "2000",
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
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider(height: 1, color: AppColors.colorB3B3B3);
                      },
                    ),
                  )
                : MdSnsText("Conversation Not Fopunt"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            context.pushNamed(AppRoutes.newConversation.name);

          },
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
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.color203063 : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: isSelected ? AppColors.color203063 : AppColors.colorB3B3B3,
              width: 1.5,
            ),
          ),
          child: MdSnsText(
            text,
            color: Colors.white,
            size: 16,
            fontWeight: FontWeight.w700,
          ),
        );
      },
    ),
  );
}
