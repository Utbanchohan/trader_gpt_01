import 'dart:async';
import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/shared/extensions/custom_extensions.dart';

import '../../../core/extensions/empty_stock.dart';
import '../domain/repository/repository.dart';
import '../model/stock_model.dart/stock_model.dart';

part 'stocks_price.g.dart';

@Riverpod(keepAlive: true)
class StocksStream extends _$StocksStream {
  StreamSubscription? _subscription;
  Stock? getStock(String id) {
    return id == state.stockId ? state : null;
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

    return emptyStock(); // initial state
  }
}

// @riverpod
// double getStockPrice(Ref ref, String id, double currentPrice) {
//   final streamPrices = ref.watch(stocksStreamProvider);
//   final stocksPrices = ref.watch(stocksPricesProvider);

//   return streamPrices
// }

// @Riverpod(keepAlive: true)
// class StocksStream extends _$StocksStream {
//   StreamSubscription? _subscription;
//   Stock? getStock(String id) {
//     return state.firstWhere((e) => e.stockId == id);
//   }

//   @override
//   List<Stock> build() {
//     final repo = ref.watch(socketRepository);

//     // cancel old subscription if rebuilds
//     _subscription?.cancel();

//     // listen to the stock price stream
//     _subscription = repo.listenToStocksPrices().listen((stock) {
//       // update state with new stock
//       state = [
//         ...state.where((s) => s.stockId != stock.stockId), // remove old
//         stock, // add new
//       ];
//     });

//     // cleanup on dispose
//     ref.onDispose(() {
//       _subscription?.cancel();
//     });

//     return <Stock>[]; // initial state
//   }
// }

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
    log("onListenData");
    onGetData();
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 30), (time) {
      log("time ${time.tick}");
      onGetData();
    });
  }

  void onGetData() {
    // log("onGetData");
    // ref.read(socketRepository).getUpdatedStocks(stockIds, (stocks) {
    //   state = [
    //     ...state.where((s) => !stocks.any((u) => u.id == s.id)),
    //     ...stocks,
    //   ];
    // });
  }
}

////
///
///
@Riverpod(keepAlive: true)
class StocksManager extends _$StocksManager {
  StreamSubscription? _subscription;

  // List of watched Stock models
  final List<Stock> _watchedStockIds = [];

  // List of stocks that need a fresh fetch
  final List<Stock> _pendingFetchIds = [];

  @override
  Map<String, Stock> build() {
    final repo = ref.watch(socketRepository);

    ref.onDispose(() {
      _subscription?.cancel();
    });

    _subscription = repo.onStockPriceUpdate().listen((stock) {
      _handlePriceUpdate(stock);
      log("stock listen price update: ${stock.price}");
    });

    return {};
  }

  /// handle update price
  void _handlePriceUpdate(Stock stock) {
    List<String> stockidSplit = stock.stockId.toUpperCase().split("_");
    var symbol = stockidSplit.first;
    var exchange = stockidSplit.last;
    final isCrypto = exchange == "CRYPTO";
    print("isCrypto $isCrypto exchange $exchange symbol $symbol");

    List<Stock> stocks = List.from(state.values);
    if (isCrypto) {
      stocks = stocks
          .where((x) => x.stockId == stock.stockId || x.symbol == stock.symbol)
          .toList();
    } else {
      stocks = stocks
          .where(
            (x) => x.symbol.toUpperCase() == symbol && x.exchange != "CRYPTO",
          )
          .toList();
    }

    print("stocks ${stocks.length}");

    for (int index = 0; index < stocks.length; index++) {
      final stockData = state[stocks[index].stockId];
      if (stockData != null) {
        print(
          "priceChange ${stock.price} exchange stockData.price ${stockData.price}",
        );
        var priceChange =
            (((stock.price - stockData.price) / stockData.price) * 100)
                .toPrecision(2);

        final updatedStock = stockData.copyWith(
          price: stock.price,
          pctChange: priceChange == 0 ? 0 : priceChange,
        );
        state = {...state, stocks[index].stockId: updatedStock};
      }

      log("updated stock: ");
    }
  }

  /// fetch all pending stocks
  Future<void> _fetchPendingUpdates() async {
    if (_pendingFetchIds.isEmpty) return;

    final idsToFetch = List<Stock>.from(_pendingFetchIds);
    _pendingFetchIds.clear();

    ref.read(socketRepository).getUpdatedStocks(idsToFetch, (stocks) {
      state = {...state, for (final stock in stocks) stock.stockId: stock};
    });
  }

  void watchStock(Stock stock) {
    if (!_watchedStockIds.any((s) => s.stockId == stock.stockId)) {
      _watchedStockIds.add(stock);
      _pendingFetchIds.add(stock);
      _fetchPendingUpdates();
    }
  }

  void watchStocks(List<Stock> stocks) {
    print("watchStocks 1");
    for (final stock in stocks) {
      if (!_watchedStockIds.any((s) => s.stockId == stock.stockId)) {
        _watchedStockIds.add(stock);
        _pendingFetchIds.add(stock);
      }
    }
    print("watchStocks 2");
    _fetchPendingUpdates();
  }

  void unwatchStock(Stock stock) {
    _watchedStockIds.removeWhere((s) => s.stockId == stock.stockId);
    // optionally also remove from state if desired
    // state.remove(stock.stockId);
    // state = {...state};
  }

  Stock? getStock(String id) => state[id];

  List<Stock> getStocks(List<String> ids) =>
      ids.map((id) => state[id]).whereType<Stock>().toList();
}




///
// @Riverpod(keepAlive: true) class StocksManager extends _$StocksManager { StreamSubscription? _subscription; // Use a Set for watched IDs for fast lookups. final Set<String> _watchedStockIds = {}; // Use a Set for IDs that need a fresh fetch. // final Set<String> _pendingFetchIds = {}; List<Stock> _pendingFetchIds = []; List<Stock> _watchedStockIds = []; @override Map<String, Stock> build() { final repo = ref.watch(socketRepository); ref.onDispose(() { _subscription?.cancel(); }); _subscription = repo.listenToStocksPrices().listen((stock) { _handlePriceUpdate(stock); log("stock listen price update: ${stock.price}"); }); return {}; } ///handle update price void _handlePriceUpdate(Stock stock) { List<String> stockidSplit = stock.stockId.toUpperCase().split("_"); var symbol = stockidSplit.first; var exchange = stockidSplit.last; final isCrypto = exchange == "CRYPTO"; print("isCrypto $isCrypto exchange $exchange symbol $symbol"); List<Stock> stocks = List.from(state.values); if (isCrypto) { stocks = stocks .where((x) => x.stockId == stock.stockId || x.symbol == stock.symbol) .toList(); } else { stocks = stocks .where( (x) => x.symbol.toUpperCase() == symbol && x.exchange != "CRYPTO", ) .toList(); } print("stocks ${stocks.length}"); for (int index = 0; index < stocks.length; index++) { final stockData = state[stocks[index].stockId]; if (stockData != null) { print( "priceChange ${stock.price} exchange stockData.price ${stockData.price}", ); var priceChange = (((stock.price - stockData.price) / stockData.price) * 100) .toPrecision(2); final updatedStock = stockData.copyWith( price: stock.price, changesPercentage: priceChange, ); state = {...state, stocks[index].stockId: updatedStock}; } log("updated stock: "); } } // Method to fetch all stocks that are being watched by the UI Future<void> _fetchPendingUpdates() async { // Check if there are any IDs to fetch. if (_pendingFetchIds.isEmpty) { return; } final idsToFetch = _pendingFetchIds.toList(); _pendingFetchIds.clear(); // Clear the queue before starting the fetch. // Fetch only the IDs that are new to the state. ref.read(socketRepository).getUpdatedStocks(idsToFetch, (stocks) { state = {...state, for (final stock in stocks) stock.stockId: stock}; }); } void watchStock(String id) { // Only add to pending if the ID isn't already being watched. if (_watchedStockIds.add(id)) { _pendingFetchIds.add(id); _fetchPendingUpdates(); } } void watchStocks(List<String> ids) { print("watchStocks 1"); for (final id in ids) { if (_watchedStockIds.add(id)) { _pendingFetchIds.add(id); } } print("watchStocks 2"); _fetchPendingUpdates(); } void unwatchStock(String id) { _watchedStockIds.remove(id); // You could also remove it from state to free up memory if needed, // but for most cases, keeping it is fine as the stream might update it again. // If you want to remove it: // state.remove(id); // state = {...state}; } Stock? getStock(String id) => state[id]; List<Stock> getStocks(List<String> ids) => ids.map((id) => state[id]).whereType<Stock>().toList(); }