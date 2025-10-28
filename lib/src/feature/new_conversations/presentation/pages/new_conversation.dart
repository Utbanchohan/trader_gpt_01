import 'dart:async';
import 'dart:math';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/extensions/price_calculation.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/pages/widget/shimmer_widget.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/provider/create_chat/create_chat.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
import '../../../../core/extensions/symbol_image.dart';
import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../core/routes/routes.dart';
import '../../../../shared/extensions/number_formatter_extension.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../chat/domain/model/chat_stock_model.dart';

class NewConversation extends ConsumerStatefulWidget {
  final List<ChatRouting>? chatRouting;
  const NewConversation({super.key, this.chatRouting});

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
  final TextEditingController search = TextEditingController();
  List<Stock> stocks = [];
  List<Stock> searchStock = [];
  bool loading = true;
  Timer? pollingTimer;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    getStocks();
  }

  void _startPollingSearch(val) async {
    if (val.isEmpty) {
      setState(() {
        searchStock = [];
        _debounce!.cancel();
      });
      return;
    }

    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (val.length > 2) {
        print("$val searching value");
        ref.read(socketRepository).searchStocks(val, (data) {
          searchStock = [];
          updateStocksSearch(data);
        });
      }
    });
  }

  getStocks() async {
    var res = await ref.read(localDataProvider).getStocks();
    if (res != null) {
      for (var stock in res) {
        stocks.add(Stock.fromJson(stock));
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  void updateStocksSearch(List<dynamic> data) {
    final updatedStocks = data;

    setState(() {
      for (var updated in updatedStocks) {
        final index = searchStock.indexWhere(
          (s) => s.symbol == updated!.symbol,
        );
        if (index >= 0) {
          searchStock[index] = updated!;
        } else {
          if (updated.symbol.isNotEmpty) {
            searchStock.add(updated!);
          }
        }
      }
      loading = false;
    });
  }

  createChat(Stock stock) async {
    if (widget.chatRouting != null && widget.chatRouting!.isNotEmpty) {
      for (final chat in widget.chatRouting!) {
        if (chat.symbol.toLowerCase() == stock.symbol.toLowerCase()) {
          context.pushNamed(
            AppRoutes.swipeScreen.name,
            extra: {
              "chatRouting": ChatRouting(
                previousClose: stock.previousClose,
                chatId: chat.chatId,
                symbol: stock.symbol,
                type: stock.type,
                image: "",
                companyName: stock.companyName,
                price: stock.price,
                changePercentage: stock.pctChange,
                trendChart:
                    stock.fiveDayTrend.isNotEmpty &&
                        stock.fiveDayTrend[0].data != null
                    ? stock.fiveDayTrend[0]
                    : FiveDayTrend(data: [0, 0, 0, 0, 0]),
                stockid: stock.stockId,
              ),
              "initialIndex": 1,
            },
          );
          return;
        }
      }
    } else {
      var res = await ref
          .read(createChatProviderProvider.notifier)
          .createChate(
            CreateChatDto(
              companyName: stock.companyName,
              stockId: stock.stockId,
              symbol: stock.symbol,
              type: stock.type,
            ),
          );
      if (res != null) {
        ChatHistory chatHistory = res;
        if (mounted) {
          pushNewStock(stock);
          ref.read(stocksManagerProvider.notifier).watchStock(stock);

          context.pushNamed(
            AppRoutes.swipeScreen.name,
            extra: {
              "chatRouting": ChatRouting(
                previousClose: stock.previousClose,
                chatId: chatHistory.id,
                symbol: stock.symbol,
                type: stock.type,
                image: "",
                companyName: stock.companyName,
                price: stock.price,
                changePercentage: stock.pctChange,
                trendChart:
                    stock.fiveDayTrend.isNotEmpty &&
                        stock.fiveDayTrend[0].data != null
                    ? stock.fiveDayTrend[0]
                    : FiveDayTrend(data: [0, 0, 0, 0, 0]),
                stockid: stock.stockId,
              ),
              "initialIndex": 1,
            },
          );
          // socketService.dispose();
        }
      }
    }
  }

  pushNewStock(Stock stock) {
    ref.read(localDataProvider).getStocks().then((value) {
      List<Map<String, dynamic>> stocks = value ?? [];
      bool exists = stocks.any((s) => s['symbol'] == stock.symbol);
      if (!exists) {
        stocks.add(stock.toJson());

        ref.read(localDataProvider).saveStock(stocks);
      }
    });
  }

  @override
  void dispose() {
    search.dispose();
    pollingTimer?.cancel();
    if (_debounce != null) {
      _debounce!.cancel();
    }

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
          variant: TextVariant.h1,
          fontWeight: TextFontWeightVariant.h2,
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
                // debounceSearch(value);
                _startPollingSearch(value);
              },
              onSubmitted: (value) {
                // debounceSearch(value);
                _startPollingSearch(value);
              },
              decoration: InputDecoration(
                hintText: "Search here",

                hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                filled: true,
                fillColor: AppColors.color091224,
                suffixIcon: InkWell(
                  onTap: () {
                    _startPollingSearch(search.text);
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
          Row(
            children: [
              SizedBox(width: 12.w),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.color0xFF5F5EDE,
                ),
              ),

              SizedBox(width: 5),
              MdSnsText(
                "Stock",
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h2,
                color: AppColors.white,
              ),
              SizedBox(width: 10),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.color0xFFFFB21D,
                ),
              ),

              SizedBox(width: 5),
              MdSnsText(
                "Crypto",
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h2,
                color: AppColors.white,
              ),
            ],
          ),

          search.text.isNotEmpty && searchStock.isEmpty
              ? MdSnsText(
                  "No Data Found",
                  variant: TextVariant.h2,
                  color: AppColors.white,
                  fontWeight: TextFontWeightVariant.h2,
                )
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
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.789.h,
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
                          child: BuildStockCard(
                            stockId: stock.stockId,
                            symbol: stock.symbol,
                            company: stock.companyName,
                            price: stock.price,
                            change: stock.pctChange,
                            image: stock.type,
                            trendchart:
                                stock.fiveDayTrend.isNotEmpty &&
                                    stock.fiveDayTrend[0].data != null
                                ? stock.fiveDayTrend[0]
                                : FiveDayTrend(data: [0, 0, 0, 0]),
                            previousClose: stock.previousClose,
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: GridView.builder(
                      itemCount: 21,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 3 cards per row
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.85.h,
                      ),
                      itemBuilder: (context, index) {
                        return ShimmerCardStock();
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class BuildStockCard extends ConsumerStatefulWidget {
  final String symbol;
  final String company;
  double price;
  double change;
  final String image;
  FiveDayTrend trendchart;
  String stockId;
  double previousClose;

  BuildStockCard({
    super.key,
    required this.symbol,
    required this.company,
    required this.price,
    required this.change,
    required this.image,
    required this.trendchart,
    required this.stockId,
    required this.previousClose,
  });

  @override
  ConsumerState<BuildStockCard> createState() => _BuildStockCardState();
}

class _BuildStockCardState extends ConsumerState<BuildStockCard> {
  List<Stock> stocks = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stockManagerState = ref.watch(stocksManagerProvider);

    final liveStock = stockManagerState[widget.stockId];

    widget.change =
        PriceUtils.getChangesPercentage(
          liveStock != null 
              ? liveStock.price
              : widget.price,
         liveStock != null 
              ? liveStock.previousClose
              : widget.previousClose,
        ) ??
        widget.change;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.color091224,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: widget.image.toLowerCase() == "crypto"
              ? AppColors.color0xFFFFB21D
              : AppColors.color0xFF5F5EDE,
        ),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // widget.image.isNotEmpty
              //     ?
              Container(
                width: 26.w,
                height: 26.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: widget.image.toLowerCase() == "crypto"
                      ? Image.network(
                          getItemImage(ImageType.crypto, widget.symbol),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return SvgPicture.network(
                              "https://cdn-images.traderverse.io/crypto_dummy.svg",
                              fit: BoxFit.cover,
                            );
                          },
                        )
                      : SvgPicture.network(
                          getItemImage(ImageType.stock, widget.symbol),
                          fit: BoxFit.cover,
                          placeholderBuilder: (context) => SizedBox(
                            width: 26.w,
                            height: 26.h,
                            child: SvgPicture.network(
                              "https://cdn-images.traderverse.io/stock_dummy.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          errorBuilder: (context, error, stackTrace) {
                            return SvgPicture.network(
                              "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg",
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                ),
              ),
              // : shimmerBox(width: 26.w, height: 26.h),
              SizedBox(width: 7.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50.w,
                    child: MdSnsText(
                      widget.symbol,
                      color: Colors.white,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      variant: TextVariant.h4,
                      fontWeight: TextFontWeightVariant.h1,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                    child: MdSnsText(
                      widget.company.split("-").first.trim(),
                      color: Colors.white70,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                      variant: TextVariant.h4,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),
          MdSnsText(
            liveStock != null
                ? Filters.systemNumberConvention(
                    liveStock.price,
                    isPrice: true,
                    isAbs: false,
                  )
                : Filters.systemNumberConvention(
                    widget.price,
                    isPrice: true,
                    isAbs: false,
                  ),

            color: AppColors.white,
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h1,
          ),
          Row(
            children: [
              Icon(
                widget.change.toString().contains("-")
                    ? Icons.arrow_drop_down
                    : Icons.arrow_drop_up,
                color: widget.change.toString().contains("-")
                    ? AppColors.redFF3B3B
                    : AppColors.color06D54E,
                size: 20,
              ),
              MdSnsText(
                      " " +Filters.systemNumberConvention(widget.change,isPrice: false,containerWidth: 50) +"%",
                color: widget.change.toString().contains("-")
                    ? AppColors.redFF3B3B
                    : AppColors.color06D54E,
                variant: TextVariant.h4,
                fontWeight: TextFontWeightVariant.h4,
              ),
            ],
          ),

          SizedBox(height: 4),

          SizedBox(
            width: 86.w,
            height: 15.h,
            child: Sparkline(
              data: widget.trendchart.data!,

              lineWidth: 2.0,
              lineColor: widget.change.toString().contains("-")
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
}
