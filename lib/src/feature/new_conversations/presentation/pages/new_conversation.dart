import 'dart:async';
import 'dart:math';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/provider/create_chat/create_chat.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../core/routes/routes.dart';
import '../../../chat/domain/model/chat_stock_model.dart';

class NewConversation extends ConsumerStatefulWidget {
  const NewConversation({super.key});

  @override
  ConsumerState<NewConversation> createState() => _NewConversationState();
}

List<double> generateStockLikeData({int count = 40, double start = 100}) {
  final random = Random();
  double value = start;
  return List.generate(count, (index) {
    value += (random.nextDouble() - 0.5) * 4; // change between -2 to +2
    return value;
  });
}

class _NewConversationState extends ConsumerState<NewConversation> {
  final SocketService socketService = SocketService();
  final TextEditingController search = TextEditingController();
  List<Stock> stocks = [];
  List<Stock> searchStock = [];
  bool loading = true;
  Timer? pollingTimer;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _connectSocket();
    _startPolling();
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

  searchStockItem(val) {
    if (val.isNotEmpty) {
      searchStock = [];
      searchStock = stocks
          .where(
            (ele) =>
                ele.name.toLowerCase().contains(val) ||
                ele.symbol.toLowerCase().contains(val),
          )
          .toList();

      setState(() {});
    }
  }

  debounceSearch(String val) {
    if (_debounce != null) {
      _debounce!.cancel();
    }
    _debounce = Timer(Duration(milliseconds: 300), searchStockItem(val));
  }

  createChat(Stock stock) async {
    var res = await ref
        .read(createChatProviderProvider.notifier)
        .createChate(
          CreateChatDto(
            companyName: stock.name,
            stockId: stock.stockId,
            symbol: stock.symbol,
            type: "stocks",
          ),
        );
    if (res != null) {
      ChatHistory chatHistory = res;
      if(mounted)
      {
  context.pushNamed(
        AppRoutes.chatPage.name,
        extra: ChatRouting(
          chatId: chatHistory.id,
          symbol: stock.symbol,
          image: stock.logoUrl,
          companyName: stock.name,
          price: stock.price,
          changePercentage: stock.changesPercentage,
          trendChart: stock.fiveDayTrend[0],
          stockid: stock.stockId,
        ),
      );
      }
    
    }
  }

  @override
  void dispose() {
    search.dispose();
    socketService.socket.dispose();
    pollingTimer?.cancel();
    _debounce!.cancel();
    super.dispose();
  }

  void selectStock(Stock symbol) {
    // Immediately return the selected symbol to previous screen
    context.pop(symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.primaryColor,
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            context.pop();
          },
        ),

        title: MdSnsText(
          "Start New Conversation",
          color: AppColors.color9EAAC0,
          size: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Column(
        children: [
          // 🔍 Search box
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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

                hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                filled: true,
                fillColor: AppColors.color091224,
                suffixIcon: InkWell(
                  onTap: () {
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
          search.text.isNotEmpty && searchStock.isEmpty
              ? SizedBox()
              : stocks.isNotEmpty
              ? Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: GridView.builder(
                      itemCount:
                          search.text.isNotEmpty && searchStock.isNotEmpty
                          ? searchStock.length
                          : stocks.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 3 cards per row
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.8.h,
                      ),
                      itemBuilder: (context, index) {
                        Stock stock =
                            search.text.isNotEmpty && searchStock.isNotEmpty
                            ? searchStock[index]
                            : stocks[index];
                        return GestureDetector(
                          onTap: () {
                            createChat(stock);
                          },
                          child: _buildStockCard(
                            symbol: stock.symbol,
                            company: stock.name,
                            price: "\$${stock.price.toString()}",
                            change: stock.changesPercentage,
                            image: stock.logoUrl,
                            trendchart: stock.fiveDayTrend[0],
                          ),
                        );
                      },
                    ),
                  ),
                )
              : MdSnsText("stocks not found"),
        ],
      ),
    );
  }
}

Widget _buildStockCard({
  required String symbol,
  required String company,
  required String price,
  required double change,
  required String image,
  required FiveDayTrend trendchart,
}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.color091224,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: AppColors.color1B254B),
    ),
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.network(image, width: 26.w, height: 26.h, fit: BoxFit.cover),
            SizedBox(width: 7.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  symbol,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  size: 12,
                ),
                SizedBox(
                  width: 50.w,
                  child: MdSnsText(
                    company.split("-").first.trim(),
                    color: Colors.white70,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        MdSnsText(
          price,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          size: 16,
        ),
        Row(
          children: [
            Icon(
              change.toString().contains("-")
                  ? Icons.arrow_drop_down
                  : Icons.arrow_drop_up,
              color: change.toString().contains("-")
                  ? AppColors.redFF3B3B
                  : AppColors.color06D54E,
              size: 20,
            ),
            MdSnsText(
              change.toStringAsFixed(2),
              color: change.toString().contains("-")
                  ? AppColors.redFF3B3B
                  : AppColors.color06D54E,
              size: 12,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),

        SizedBox(height: 4),
        // Mini Graph Placeholder
        SizedBox(
          width: 86.w,
          height: 15.h,
          child: Sparkline(
            data: trendchart.data,

            lineWidth: 2.0,
            lineColor: change.toString().contains("-")
                ? AppColors.redFF3B3B
                : AppColors.color06D54E,

            pointsMode: PointsMode.none,
            pointColor: Colors.white,
            useCubicSmoothing: false,
            sharpCorners: true,
            fillMode: FillMode.below,
            fillGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.transparent],
            ),
          ),
        ),
      ],
    ),
  );
}
