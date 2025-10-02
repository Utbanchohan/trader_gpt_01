import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/welcome_widget.dart';
import 'package:trader_gpt/src/feature/conversations_start/provider/delete_provider.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import 'package:trader_gpt/src/shared/widgets/archive_widget.dart';
import 'package:trader_gpt/src/shared/widgets/delete_widget.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

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
  final FocusNode searchFocus = FocusNode();
  bool isSearching = false; // 👈 ye flag add karo
  final TextEditingController search = TextEditingController();

  List<ChatHistory> convo = [];
  List<ChatHistory> searchConvo = [];

  final SocketService socketService = SocketService();
  late TabController tabController;
  List<Stock> stocks = [];
  Timer? pollingTimer;
  bool loading = true;
  Timer? _debounce;
  List<Stock> watchStockes = [];

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    getStocks();
    getChats();
    // TODO: implement initState
    super.initState();
  }

  FutureOr<void> deleteStock(String convoId) async {
    final result = await ref
        .read(deleteProviderProvider.notifier)
        .delete(chatId: convoId);

    if (result != null) {
      Navigator.pop(context);

      setState(() {
        convo.removeWhere((c) => c.id == convoId);
        searchConvo.removeWhere((c) => c.id == convoId);
      });
      setState(() {
        convo.removeWhere((c) => c.id == convoId);
        searchConvo.removeWhere((c) => c.id == convoId);
      });
      $showMessage("Chat deleted successfully", isError: false);
    } else {
      $showMessage("Failed to delete chat", isError: true);
    }
  }

  void _showDeleteDialog(BuildContext context, Function onPressed) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return DeleteWidget(
          onConfirm: () {
            onPressed();
          },
          onCancel: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  void _showArchivedDialog(BuildContext context, Function onPressed) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return ArchiveWidget(
          onConfirm: () {
            onPressed();
          },
          onCancel: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  FutureOr<void> archivedStock(String convoId, bool isArchived) async {
    final result = await ref
        .read(deleteProviderProvider.notifier)
        .archive(chatId: convoId, isArchived: isArchived);
    if (result != null) {
      Navigator.pop(context);

      setState(() {
        convo.removeWhere((c) => c.id == convoId);
        searchConvo.removeWhere((c) => c.id == convoId);
      });
      $showMessage("Chat Archived successfully", isError: false);
    } else {
      $showMessage("Failed to Archived chat", isError: true);
    }
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
        watchStockes.add(
          Stock(
            stockId: chat.stockId,
            symbol: chat.symbol,
            logoUrl: '',
            price: 0,
            changesPercentage: 0,
            previousClose: 0,
            fiveDayTrend: [],
          ),
        );
        existingSymbols.add(chat.symbol); // keep set in sync
      }
    }
    ref.read(stocksManagerProvider.notifier).watchStocks(watchStockes);

    setState(() {});
  }

  debounceSearch(String val) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(Duration(milliseconds: 300), () => searchStockItem(val));
  }

  searchStockItem(val) {
    if (val.isNotEmpty) {
      searchConvo = [];
      searchConvo = convo
          .where((ele) => ele.symbol.toLowerCase().contains(val))
          .toList();

      setState(() {});
    }
  }

  @override
  void dispose() {
    pollingTimer?.cancel();
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

  getStocks() async {
    var res = await ref.read(localDataProvider).getStocks();
    if (res != null) {
      for (var stock in res) {
        stocks.add(Stock.fromJson(stock));
      }
    }
  }

  void updateStocks(List<dynamic> data) {
    final updatedStocks = data;

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
    final stockManagerState = ref.watch(stocksManagerProvider);

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
                child: Image.asset(
                  Assets.images.menu.path,
                  width: 40,
                  height: 40,
                ),
              );
            },
          ),
          title: Row(
            children: [
              MdSnsText(
                "Conversations",
                variant: TextVariant.h1,
                fontWeight: TextFontWeightVariant.h1,

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
                  variant: TextVariant.h2,
                  fontWeight: TextFontWeightVariant.h4,

                  color: AppColors.fieldTextColor,
                ),
              ),
            ],
          ),
          actions: [
            if (!isSearching) // 👈 Agar search mode nahi hai to search button dikhao
              IconButton(
                icon: Image.asset(
                  Assets.images.searchNormal.path,
                  height: 20.h,
                  width: 20.w,
                ),
                onPressed: () {
                  setState(() {
                    isSearching = true;
                  });
                },
              )
            else // 👈 Agar search mode ON hai to close button dikhao
              IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  setState(() {
                    isSearching = false;
                    search.clear();
                  });
                },
              ),
          ],
        ),
        body: Column(
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  axisAlignment: -1.0,
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: !isSearching
                  ? TabBar(
                      controller: tabController,
                      dividerHeight: 0,
                      indicatorSize: TabBarIndicatorSize.tab,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 8.h,
                      ),
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
                        fontWeight: FontWeight.w600,
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
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: TextField(
                        controller: search,
                        textInputAction: TextInputAction.search,
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          debounceSearch(value);
                        },
                        onSubmitted: (value) {
                          debounceSearch(value);
                        },
                        decoration: InputDecoration(
                          hintText: "Search here",

                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                          ),
                          filled: true,
                          fillColor: AppColors.color091224,
                          suffixIcon: InkWell(
                            onTap: () {
                              // debounceSearch(search.text);
                              debounceSearch(search.text);
                            },
                            child: Icon(Icons.search, color: Colors.white54),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
            ),

            // Yeh Expanded me rakho
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  search.text.isNotEmpty && searchConvo.isEmpty
                      ? ListView.separated(
                          itemCount: searchConvo.length,
                          itemBuilder: (context, index) {
                            final stock =
                                search.text.isNotEmpty && searchConvo.isNotEmpty
                                ? searchConvo[index]
                                : convo[index];

                            int stockIndex = findRelatedStock(stock.symbol);
                            final liveStock =
                                stockManagerState[stocks[stockIndex].stockId];
                            stocks[stockIndex] = stocks[stockIndex].copyWith(
                              changesPercentage:
                                  liveStock != null && liveStock.price > 0
                                  ? liveStock.price -
                                        stocks[stockIndex].previousClose
                                  : stocks[stockIndex].changesPercentage,
                              price:
                                  liveStock?.price ?? stocks[stockIndex].price,
                            );

                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRoutes.swipeScreen.name,
                                  extra: {
                                    "chatRouting": ChatRouting(
                                      previousClose:
                                          stocks[stockIndex].previousClose,
                                      chatId: convo[index].id,
                                      symbol: convo[index].symbol,
                                      image: stocks[stockIndex].logoUrl,
                                      companyName: convo[index].companyName,
                                      price: stocks[stockIndex].price,
                                      changePercentage:
                                          stocks[stockIndex].changesPercentage,
                                      trendChart:
                                          stocks[stockIndex].fiveDayTrend[0],
                                      stockid: convo[index].stockId,
                                    ),
                                    "initialIndex": 1,
                                  },
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showArchivedDialog(context, () {
                                          archivedStock(convo[index].id, true);
                                        });
                                      },
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Archive',
                                            color: AppColors.color9EAAC0,
                                            variant: TextVariant.h4,
                                            fontWeight:
                                                TextFontWeightVariant.h4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showDeleteDialog(context, () {
                                          deleteStock(convo[index].id);
                                        });
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Delete',
                                            color: AppColors.color9EAAC0,

                                            variant: TextVariant.h4,
                                            fontWeight:
                                                TextFontWeightVariant.h4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                child: ConversationTile(
                                  stocks: stocks[stockIndex],
                                  stock: stock,
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
                      : convo != null && convo.isNotEmpty && stocks.isNotEmpty
                      ? ListView.separated(
                          itemCount:
                              search.text.isNotEmpty && searchConvo.isNotEmpty
                              ? searchConvo.length
                              : convo.length,
                          itemBuilder: (context, index) {
                            final stock =
                                search.text.isNotEmpty && searchConvo.isNotEmpty
                                ? searchConvo[index]
                                : convo[index];
                            int stockIndex = findRelatedStock(stock.symbol);
                            final liveStock =
                                stockManagerState[stocks[stockIndex].stockId];
                            stocks[stockIndex] = stocks[stockIndex].copyWith(
                              changesPercentage:
                                  liveStock != null && liveStock.price > 0
                                  ? liveStock.price -
                                        stocks[stockIndex].previousClose
                                  : stocks[stockIndex].changesPercentage,
                              price:
                                  liveStock?.price ?? stocks[stockIndex].price,
                            );

                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRoutes.swipeScreen.name,
                                  extra: {
                                    "chatRouting": ChatRouting(
                                      chatId: convo[index].id,
                                      symbol: convo[index].symbol,
                                      image: stocks[stockIndex].logoUrl,
                                      companyName: convo[index].companyName,
                                      price: stocks[stockIndex].price,
                                      changePercentage:
                                          stocks[stockIndex].changesPercentage,
                                      trendChart:
                                          stocks[stockIndex]
                                                  .fiveDayTrend
                                                  .isNotEmpty &&
                                              stocks[stockIndex]
                                                      .fiveDayTrend[0]
                                                      .data !=
                                                  null
                                          ? stocks[stockIndex].fiveDayTrend[0]
                                          : FiveDayTrend(data: [0, 0, 0, 0]),
                                      stockid: convo[index].stockId,
                                      previousClose:
                                          stocks[stockIndex].previousClose,
                                    ),
                                    "initialIndex": 1,
                                  },
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showArchivedDialog(context, () {
                                          archivedStock(convo[index].id, true);
                                        });
                                      },
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Archive',
                                            color: AppColors.color9EAAC0,
                                            fontWeight:
                                                TextFontWeightVariant.h4,
                                            variant: TextVariant.h4,
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showDeleteDialog(context, () {
                                          deleteStock(convo[index].id);
                                        });
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Delete',
                                            color: AppColors.color9EAAC0,
                                            fontWeight:
                                                TextFontWeightVariant.h4,
                                            variant: TextVariant.h4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                child: ConversationTile(
                                  stocks: stocks[stockIndex],
                                  stock: stock,
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
                      : Container(
                          // margin: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: WelcomeWidget(),
                        ),

                  // Second tab
                  convo != null && convo.isNotEmpty && stocks.isNotEmpty
                      ? ListView.separated(
                          itemCount:
                              search.text.isNotEmpty && searchConvo.isNotEmpty
                              ? searchConvo.length
                              : convo.length,
                          itemBuilder: (context, index) {
                            final stock =
                                search.text.isNotEmpty && searchConvo.isNotEmpty
                                ? searchConvo[index]
                                : convo[index];
                            int stockIndex = findRelatedStock(stock.symbol);
                            final liveStock =
                                stockManagerState[stocks[stockIndex].stockId];
                            stocks[stockIndex] = stocks[stockIndex].copyWith(
                              changesPercentage:
                                  liveStock != null && liveStock.price > 0
                                  ? liveStock.price -
                                        stocks[stockIndex].previousClose
                                  : stocks[stockIndex].changesPercentage,
                              price:
                                  liveStock?.price ?? stocks[stockIndex].price,
                            );

                            return GestureDetector(
                              onTap: () {
                                context.pushNamed(
                                  AppRoutes.swipeScreen.name,
                                  extra: {
                                    "chatRouting": ChatRouting(
                                      chatId: convo[index].id,
                                      symbol: convo[index].symbol,
                                      image: stocks[stockIndex].logoUrl,
                                      companyName: convo[index].companyName,
                                      price: stocks[stockIndex].price,
                                      changePercentage:
                                          stocks[stockIndex].changesPercentage,
                                      trendChart:
                                          stocks[stockIndex].fiveDayTrend[0],
                                      stockid: convo[index].stockId,
                                      previousClose:
                                          stocks[stockIndex].previousClose,
                                    ),
                                    "initialIndex": 1,
                                  },
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: ScrollMotion(),
                                  children: [
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showArchivedDialog(context, () {
                                          archivedStock(convo[index].id, true);
                                        });
                                      },
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Archive',
                                            variant: TextVariant.h4,
                                            fontWeight:
                                                TextFontWeightVariant.h4,
                                            color: AppColors.color9EAAC0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomSlidableAction(
                                      onPressed: (context) {
                                        _showDeleteDialog(context, () {
                                          deleteStock(convo[index].id);
                                        });
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
                                          SizedBox(height: 4),
                                          MdSnsText(
                                            'Delete',
                                            color: AppColors.color9EAAC0,
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
                      : Container(
                          margin: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: WelcomeWidget(),
                        ),

                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: WelcomeWidget(),
                  ),
                  // Third tab
                  Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: WelcomeWidget(),
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
          child: MdSnsText(
            text,
            color: isSelected ? AppColors.white : AppColors.color677FA4,
            variant: isSelected ? TextVariant.h2 : TextVariant.h3,

            fontWeight: isSelected
                ? TextFontWeightVariant.h1
                : TextFontWeightVariant.h4,
          ),
        );
      },
    ),
  );
}
