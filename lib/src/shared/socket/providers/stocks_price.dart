import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/repository/repository.dart';
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
    _subscription?.cancel();
    _subscription = repo.onStockUpdate().listen((stock) {
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