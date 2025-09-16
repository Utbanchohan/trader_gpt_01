import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class StockScreen extends StatefulWidget {
  StockScreen({super.key});

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
    _pollingTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
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
    return _loading
        ? Center(child: CircularProgressIndicator())
        : _stocks.isEmpty
        ? Center(child: Text('No stocks available'))
        : Container(
            padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
            decoration: BoxDecoration(
              color: AppColors.color1B254B,
              borderRadius: BorderRadius.circular(5),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  "Select Symbol",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.fieldColor,
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                      color: Color(0xFF8B8B97),
                    ), // Light grey hint text
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ), // Rounded corners
                      borderSide:
                          BorderSide.none, // Removes the default border line
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF8B8B97), // Color of the search icon
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: _stocks.length,
                    itemBuilder: (context, index) {
                      final stock = _stocks[index];
                      final change = stock.changesPercentage ?? 0.0;

                      return Container(
                        child: GestureDetector(
                          onTap: () => _selectStock(stock),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 5,
                            ),
                            leading: stock.logoUrl != null
                                ? Image.network(
                                    stock.logoUrl!,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Icon(Icons.broken_image, size: 40),
                                  )
                                : Icon(Icons.safety_check, size: 40),
                            title: MdSnsText(
                              "#" + stock.symbol,

                              color: AppColors.white,

                              size: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            subtitle: MdSnsText(
                              stock.name != null
                                  ? stock.name!.split("-").first.trim()
                                  : "",
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.color677FA4,
                            ),

                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MdSnsText(
                                  '\$${stock.price?.toStringAsFixed(2) ?? '0.00'}',
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w400,
                                  size: 14,
                                ),
                                SizedBox(height: 4),
                                MdSnsText(
                                  '${change >= 0 ? '+' : ''}${change.toStringAsFixed(2)}%',

                                  color: _getChangeColor(change),
                                  fontWeight: FontWeight.w400,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: AppColors.colorB3B3B3,
                      height: 2.h,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
