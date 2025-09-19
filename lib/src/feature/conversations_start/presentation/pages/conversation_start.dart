import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

import '../../../../services/sockets/socket_service.dart';
import '../../../../shared/socket/model/stock_model.dart/stock_model.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../widgets/conversation_tile.dart';

class ConversationStart extends ConsumerStatefulWidget {
  ConversationStart({super.key});

  @override
  ConsumerState<ConversationStart> createState() => _ConversationStartState();
}

class _ConversationStartState extends ConsumerState<ConversationStart>
    with TickerProviderStateMixin {
  List<ChatHistory> convo = [];
  final SocketService socketService = SocketService();
  late TabController tabController;
  List<Stock> stocks = [];
  Timer? pollingTimer;
  bool loading = true;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    getChats();
    _connectSocket();
    _startPolling();
    // TODO: implement initState
    super.initState();
  }

  getChats() async {
    var res = await ref.read(chatRepository).chats();
    if (!res.isSuccess) return false;

    // make a set of existing symbols for O(1) lookup
    final existingSymbols = convo.map((e) => e.symbol).toSet();

    for (final chat in res.data!.results) {
      if (chat.symbol.toLowerCase() != "tdgpt" &&
          !existingSymbols.contains(chat.symbol)) {
        convo.add(chat);
        existingSymbols.add(chat.symbol); // keep set in sync
      }
    }

    setState(() {});
  }

  @override
  void dispose() {
    socketService.socket.dispose();
    pollingTimer?.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  int findRelatedStock(String symbol) {
    int i = stocks.indexWhere((ele) => ele.symbol == symbol);
    if (i != -1) {
      return i;
    } else {
      return 0;
    }
  }

  void _connectSocket() {
    socketService.connect();
    socketService.onStockUpdate((data) {
      updateStocks(data);
    });
  }

  void _startPolling() {
    pollingTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
      socketService.fetchStocks((data) {
        updateStocks(data);
      });
    });
  }

  void updateStocks(List<dynamic> data) {
    final updatedStocks = data
        .map((item) => Stock.fromJson(Map<String, dynamic>.from(item)))
        .toList();

    setState(() {
      for (var updated in updatedStocks) {
        final index = stocks.indexWhere((s) => s.symbol == updated.symbol);
        if (index >= 0) {
          stocks[index] = updated;
        } else {
          stocks.add(updated);
        }
      }
      loading = false;
    });
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
        drawer: SideMenu(),

        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          centerTitle: false,

          scrolledUnderElevation: 0,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          leadingWidth: 40.w,

          leading: Builder(
            builder: (context) {
              return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.w),
                  child: Image.asset(
                    Assets.images.directboxNotifc4.path,
                    // scale: 2.9,
                    height: 20.h,
                    width: 18.16.w,
                  ),
                ),
              );
            },
          ),
          title: Row(
            children: [
              MdSnsText(
                "Conversations",
                size: 18,
                fontWeight: FontWeight.w700,

                color: AppColors.fieldTextColor,
              ),
              SizedBox(width: 10.w),
              Container(
                alignment: Alignment.center,
                height: 22.h,
                width: 41.06.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.fieldColor,
                ),
                child: MdSnsText(
                  convo.length.toString(),
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.fieldTextColor,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20.w),
              child: Image.asset(
                Assets.images.searchNormal.path,
                height: 20.h,
                width: 20.w,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              controller: tabController,
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 0.h,
              ),
              indicator: BoxDecoration(
                color: AppColors.color203063,
                borderRadius: BorderRadius.circular(20.r),
              ),
              labelColor: AppColors.white,
              labelStyle: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
              unselectedLabelStyle: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.color677FA4,
              ),
              unselectedLabelColor: AppColors.color677FA4,
              labelPadding: EdgeInsets.zero,
              tabs: [
                buildCustomTab("All", 0, tabController),
                buildCustomTab("Stocks", 1, tabController),
                buildCustomTab("Crypto", 2, tabController),
                buildCustomTab("ETFs", 3, tabController),
              ],
            ),
            SizedBox(height: 16.h),

            // Yeh Expanded me rakho
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  // First tab
                  convo != null && convo.isNotEmpty && stocks.isNotEmpty
                      ? ListView.separated(
                          itemCount: convo.length,
                          itemBuilder: (context, index) {
                            final stock = convo[index];
                            int stockIndex = findRelatedStock(stock.symbol);

                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRoutes.chatPage.name,
                                  extra: ChatRouting(
                                    chatId: convo[index].id,
                                    symbol: stocks[stockIndex].symbol,
                                    image: stocks[stockIndex].logoUrl,
                                    companyName: stocks[stockIndex].name,
                                    price: stocks[stockIndex].price,
                                    changePercentage:
                                        stocks[stockIndex].changesPercentage,
                                    trendChart:
                                        stocks[stockIndex].fiveDayTrend[0],
                                    stockid: stocks[stockIndex].stockId,
                                  ),
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      onPressed: (context) {},
                                      backgroundColor: AppColors.color1B254B,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.images.direct.path,
                                            width: 24.w,
                                            height: 24.h,
                                            color: AppColors.color9EAAC0,
                                          ),
                                          const SizedBox(height: 4),
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
                                      },
                                      backgroundColor: AppColors.color091224,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.images.trash.path,
                                            width: 24.w,
                                            height: 24.h,
                                            color: AppColors.color9EAAC0,
                                          ),
                                          const SizedBox(height: 4),
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
                                child: ConversationTile(
                                  stocks: stocks[stockIndex],
                                  stock: convo[index],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              height: 1,
                              color: AppColors.colorB3B3B3,
                            );
                          },
                        )
                      : Center(child: Text("Conversation Not Found")),

                  // Second tab
                  convo != null && convo.isNotEmpty && stocks.isNotEmpty
                      ? ListView.separated(
                          itemCount: convo.length,
                          itemBuilder: (context, index) {
                            final stock = convo[index];
                            int stockIndex = findRelatedStock(stock.symbol);

                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRoutes.chatPage.name,
                                  extra: ChatRouting(
                                    chatId: convo[index].id,
                                    symbol: stocks[stockIndex].symbol,
                                    image: stocks[stockIndex].logoUrl,
                                    companyName: stocks[stockIndex].name,
                                    price: stocks[stockIndex].price,
                                    changePercentage:
                                        stocks[stockIndex].changesPercentage,
                                    trendChart:
                                        stocks[stockIndex].fiveDayTrend[0],
                                    stockid: stocks[stockIndex].stockId,
                                  ),
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      onPressed: (context) {},
                                      backgroundColor: AppColors.color1B254B,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.images.direct.path,
                                            width: 24.w,
                                            height: 24.h,
                                            color: AppColors.color9EAAC0,
                                          ),
                                          const SizedBox(height: 4),
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
                                      },
                                      backgroundColor: AppColors.color091224,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Assets.images.trash.path,
                                            width: 24.w,
                                            height: 24.h,
                                            color: AppColors.color9EAAC0,
                                          ),
                                          const SizedBox(height: 4),
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
                                child: ConversationTile(
                                  stocks: stocks[stockIndex],
                                  stock: convo[index],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              height: 1,
                              color: AppColors.colorB3B3B3,
                            );
                          },
                        )
                      : Center(child: Text("Conversation Not Found")),

                  Center(
                    child: MdSnsText(
                      "Comming Soon",
                      size: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),

                  // Third tab
                  Center(
                    child: MdSnsText(
                      "Comming Soon",
                      size: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
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

Widget buildCustomTab(String text, int index, TabController tabController) {
  return Tab(
    child: AnimatedBuilder(
      animation: tabController,
      builder: (context, _) {
        final isSelected = tabController.index == index;

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: isSelected ? Colors.transparent : AppColors.colorB3B3B3,
              width: 1.5,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.color677FA4,
              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              fontSize: isSelected ? 16 : 14,
            ),
          ),
        );
      },
    ),
  );
}
