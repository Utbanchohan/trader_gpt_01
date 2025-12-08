import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/build_analytic_tab.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/crypto_items.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

import '../../domain/model/stock_price_model/stock_price_model.dart';

class AnalyticsScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;

  const AnalyticsScreen({super.key, this.chatRouting});

  @override
  ConsumerState<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen> {
  StockPriceModel? stockPrices;
  bool analysisDataModelLoader = true;
  final compactFormatter = NumberFormat.compact();
  Stock? selectedStock;

  @override
  void initState() {
    super.initState();
    selectedStock =
        widget.chatRouting != null && widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            companyName: widget.chatRouting!.companyName,
            pctChange: widget.chatRouting!.changePercentage,
            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            previousClose: 0.0,
            price: widget.chatRouting!.price,
            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,
            type: widget.chatRouting!.type,
          )
        : emptyStock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: SafeArea(
        top: true,
        child: widget.chatRouting != null &&
            widget.chatRouting!.type.toLowerCase() == "crypto"
        ? CryptoItems(
            chatRouting: widget.chatRouting!,
            selectedStock: selectedStock!,
          )
        : BuildAnalyticTab(
            chatRouting: widget.chatRouting!,
            selectedStock: selectedStock!,
          ),
      ),
    );
  }
}
