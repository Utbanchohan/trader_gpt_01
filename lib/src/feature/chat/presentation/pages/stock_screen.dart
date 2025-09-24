import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/shimmer_stock_list.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/widgets/stock_tile.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

import '../../../../core/local/repository/local_storage_repository.dart';

class StockScreen extends ConsumerStatefulWidget {
  StockScreen({super.key});

  @override
  ConsumerState<StockScreen> createState() => _StockScreenState();
}

class _StockScreenState extends ConsumerState<StockScreen> {
  final TextEditingController search = TextEditingController();
  List<Stock> _stocks = [];
  List<Stock> searchStocks = [];
  Timer? _debounce;
  bool _loading = true;

  Timer? _pollingTimer;

  @override
  void initState() {
    super.initState();
    getStocks();
    _startPolling();
  }

  void _startPolling() {
    _pollingTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
      ref.read(socketRepository).fetchStocks((data) {
        _updateStocks(data);
      });
    });
  }

  getStocks() async {
    var res = await ref.read(localDataProvider).getStocks();
    if (res != null) {
      for (var stock in res) {
        _stocks.add(Stock.fromJson(stock));
      }
    }
    setState(() {});
  }

  void _updateStocks(List<dynamic> data) {
    final updatedStocks = data;

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

  @override
  void dispose() {
    _pollingTimer?.cancel();
    search.dispose();
    if (_debounce != null) {
      _debounce!.cancel();
    }
    super.dispose();
  }

  searchStockItem(val) {
    if (val.isNotEmpty) {
      searchStocks = [];
      searchStocks = _stocks
          .where(
            (ele) =>
                ele.name.toLowerCase().contains(val) ||
                ele.symbol.toLowerCase().contains(val),
          )
          .toList();

      setState(() {});
    }
  }

  debounceSearch(String val) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(
      const Duration(milliseconds: 300),
      () => searchStockItem(val),
    );
  }

  void _selectStock(Stock symbol) {
    // Immediately return the selected symbol to previous screen
    context.pop(symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            variant: TextVariant.h2,
            fontWeight: TextFontWeightVariant.h4,
            color: AppColors.white,
          ),
          SizedBox(height: 10.h),
          TextFormField(
            controller: search,
            style: TextStyle(color: Colors.white),
            textInputAction: TextInputAction.search,
            onChanged: (value) {
              debounceSearch(value);
            },
            onFieldSubmitted: (value) {
              debounceSearch(value);
            },
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
                borderRadius: BorderRadius.circular(50.0), // Rounded corners
                borderSide: BorderSide.none, // Removes the default border line
              ),
              suffixIcon: InkWell(
                onTap: () {
                  debounceSearch(search.text);
                },
                child: Icon(
                  Icons.search,
                  color: Color(0xFF8B8B97), // Color of the search icon
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          _loading
              ? Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ShimmerStockList();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: AppColors.colorB3B3B3, height: 2.h);
                    },
                  ),
                )
              : _stocks.isEmpty
              ? Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ShimmerStockList();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: AppColors.colorB3B3B3, height: 2.h);
                    },
                  ),
                )
              : search.text.isNotEmpty && searchStocks.isEmpty
              ? Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ShimmerStockList();
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: AppColors.colorB3B3B3, height: 2.h);
                    },
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: search.text.isNotEmpty && searchStocks.isNotEmpty
                        ? searchStocks.length
                        : _stocks.length,
                    itemBuilder: (context, index) {
                      final stock =
                          search.text.isNotEmpty && searchStocks.isNotEmpty
                          ? searchStocks[index]
                          : _stocks[index];
                      final change = stock.changesPercentage;

                      return GestureDetector(
                        onTap: () => _selectStock(stock),
                        child: StockTile(stock: stock, change: change),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(color: AppColors.colorB3B3B3, height: 2.h);
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
