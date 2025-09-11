
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
import '../model/stock_model.dart/stock_model.dart';

part 'stocks_price.g.dart';

@Riverpod(keepAlive: true)
class StocksStream extends _$StocksStream {
  StreamSubscription? _subscription;
  Stock? getStock(String id) {
    return state.firstWhere((e) => e.stockId == id);
  }

  @override
  List<Stock> build() {
    final repo = ref.watch(socketRepository);

    // cancel old subscription if rebuilds
    _subscription?.cancel();

    // listen to the stock price stream
    _subscription = repo.listenToStocksPrices().listen((stock) {
      // update state with new stock
      state = [
        ...state.where((s) => s.stockId != stock.stockId), // remove old
        stock, // add new
      ];
    });

    // cleanup on dispose
    ref.onDispose(() {
      _subscription?.cancel();
    });

    return <Stock>[]; // initial state
  }
}

@Riverpod(keepAlive: true)
class StocksPrices extends _$StocksPrices {
  List<String> stockIds = [];

  Stock? getStock(String id) {
    return state.firstWhere((e) => e.stockId == id);
  }

  void addId(String id) {
    if (!stockIds.contains(id)) {
      stockIds.add(id);
    }
  }

  void addIds(List<String> ids) {
    for (final id in ids) {
      if (!stockIds.contains(id)) {
        stockIds.add(id);
      }
    }
  }

  void removeId(String id) {
    stockIds.remove(id);
  }

  Timer? timer;

  @override
  List<Stock> build() {
    // Cleanup
    ref.onDispose(() {
      timer?.cancel();
    });
    onListenData();
    return <Stock>[];
  }

  void onListenData() {
        debugPrint("onGetData");
("onListenData");
    onGetData();
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 30), (time) {
          debugPrint("onGetData");
("time ${time.tick}");
      onGetData();
    });
  }

  void onGetData() {
    debugPrint("onGetData");
    ref.read(socketRepository).getUpdatedStocks(stockIds, (stocks) {
      state = [
        ...state.where((s) => !stocks.any((u) => u.id == s.id)),
        ...stocks,
      ];
    });
  }
}
