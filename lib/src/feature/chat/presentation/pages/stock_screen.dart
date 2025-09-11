import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:intl/intl.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  final SocketService _socketService = SocketService();
  List<Stock> _stocks = [];
  bool _loading = true;

  Timer? _pollingTimer;

  @override
  void initState() {
    super.initState();
    _connectSocket();
    _startPolling();
  }

  void _connectSocket() {
    _socketService.connect();
    _socketService.onStockUpdate((data) {
      _updateStocks(data);
    });
  }

  void _startPolling() {
    _pollingTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      _socketService.fetchStocks((data) {
        _updateStocks(data);
      });
    });
  }

  void _updateStocks(List<dynamic> data) {
    final updatedStocks = data
        .map((item) => Stock.fromJson(Map<String, dynamic>.from(item)))
        .toList();

    setState(() {
      for (var updated in updatedStocks) {
        final index = _stocks.indexWhere((s) => s.symbol == updated.symbol);
        if (index >= 0) {
          _stocks[index] = updated;
        } else {
          _stocks.add(updated);
        }
      }
      _loading = false;
    });
  }

  Color _getChangeColor(double? change) {
    if (change == null) return Colors.black;
    return change < 0 ? Colors.red : Colors.green;
  }

  @override
  void dispose() {
    _socketService.socket.dispose();
    _pollingTimer?.cancel();
    super.dispose();
  }

  void _selectStock(Stock symbol) {
    // Immediately return the selected symbol to previous screen
    context.pop(symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NASDAQ Stocks')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _stocks.isEmpty
          ? const Center(child: Text('No stocks available'))
          : ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: _stocks.length,
              itemBuilder: (context, index) {
                final stock = _stocks[index];
                final change = stock.changesPercentage ?? 0.0;

                return GestureDetector(
                  onTap: () => _selectStock(stock),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 5,
                      ),
                      leading: stock.logoUrl != null
                          ? Image.network(
                              stock.logoUrl!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.broken_image, size: 40),
                            )
                          : const Icon(Icons.safety_check, size: 40),
                      title: Text(
                        stock.name ?? 'Unknown',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        stock.symbol,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$${stock.price?.toStringAsFixed(2) ?? '0.00'}',
                            style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${change >= 0 ? '+' : ''}${change.toStringAsFixed(2)}%',
                            style: TextStyle(
                              color: _getChangeColor(change),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
