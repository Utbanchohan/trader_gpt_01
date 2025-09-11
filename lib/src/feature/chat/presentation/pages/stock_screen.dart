import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model/stock_model.dart';
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

    // Listen for live updates from server push
    _socketService.onStockUpdate((data) {
      _updateStocks(data);
    });
  }

  void _startPolling() {
    // Fetch every 100 milliseconds
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NASDAQ Stocks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _socketService.fetchStocks((data) {
              _updateStocks(data);
            }),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _stocks.isEmpty
          ? const Center(child: Text('No stocks available'))
          : ListView.builder(
              itemCount: _stocks.length,
              itemBuilder: (context, index) {
                final stock = _stocks[index];
                final change = stock.change ?? 0.0;
                return ListTile(
                  leading: stock.logoUrl != null
                      ? Image.network(stock.logoUrl!, width: 40, height: 40)
                      : const Icon(Icons.safety_check),
                  title: Text(stock.name ?? ''),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$${stock.price?.toStringAsFixed(2) ?? '0.00'}',
                            style: TextStyle(
                              color: _getChangeColor(change),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${change >= 0 ? '+' : ''}${change.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: _getChangeColor(change),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
