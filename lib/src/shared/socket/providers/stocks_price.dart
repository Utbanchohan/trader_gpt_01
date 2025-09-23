import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/repository/repository.dart';
import '../model/stock_model.dart/stock_model.dart';

part 'stocks_price.g.dart';
@Riverpod(keepAlive: true)
class StocksStream extends _$StocksStream {
  StreamSubscription? _subscription;
  Stock? getStock(String id) {
    return id==state.stockId?state:null;
  }

  @override
  Stock build() {
    final repo = ref.watch(socketRepository);
    _subscription?.cancel();
    _subscription = repo.onStockPriceUpdate().listen((stock) {
      // update state with new stock
    state = stock;
    });

    // cleanup on dispose
    ref.onDispose(() {
      _subscription?.cancel();
    });

    return Stock(
                avgVolume: 0,
                change: 0,
                changesPercentage: 0,
                dayHigh: 0,
                dayLow: 0,
                earningsAnnouncement: "",
                eps: 0,
                exchange: "",
                fiveDayTrend: [FiveDayTrend(data: [])],
                marketCap: 0,
                name: "",
                open: 0,
                pe: 0,
                previousClose: 0,
                price: 0,
                priceAvg200: 0,
                priceAvg50: 0,
                sharesOutstanding: 0,
                stockId: "",
                symbol: "",
                timestamp: 0,
                volume: 0,
                yearHigh: 0,
                yearLow: 0,
                logoUrl: "",
                type: "",
                count: 0,
                dateHours: "",
                ticks: 0,
                primaryLogoUrl: "",
                secondaryLogoUrl: "",
                tertiaryLogoUrl: "",
                status: "",
                updatedFrom: "",
                country: "",
                exchangeSortOrder: 0,
              ); // initial state
  }
}