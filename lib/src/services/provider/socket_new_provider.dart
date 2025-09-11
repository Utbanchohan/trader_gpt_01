import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

class StockNotifier extends StateNotifier<List<Stock>> {
  final SocketService socketService;

  StockNotifier(this.socketService) : super([]) {
    _init();
  }

  void _init() {
    socketService.connect();

    // Initial fetch
    fetchStocks();

    // Listen to live updates
    socketService.onStockUpdate((data) {
      final stocks = data
          .map((item) => Stock.fromJson(Map<String, dynamic>.from(item)))
          .toList();
      state = stocks;
    });
  }

  // Fetch stocks from socket
  void fetchStocks() {
    socketService.fetchStocks((data) {
      final stocks = data
          .map((item) => Stock.fromJson(Map<String, dynamic>.from(item)))
          .toList();
      state = stocks;
    });
  }
}

// Provider
final stocksStreamProvider = StateNotifierProvider<StockNotifier, List<Stock>>((
  ref,
) {
  final socketService = SocketService();
  return StockNotifier(socketService);
});
