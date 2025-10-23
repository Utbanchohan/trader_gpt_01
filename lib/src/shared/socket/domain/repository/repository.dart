import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

import '../../data/api/socket_api.dart';
import '../../enums.dart';
import '../../model/stock_model.dart/stock_model.dart';

class SocketRepository {
  final String baseUrl;
  final SocketApi service;
  final Ref ref;
  SocketRepository(this.service, this.baseUrl, this.ref);

  void initConnection({Map<String, dynamic>? query}) {
    service.connect();
  }

  void fetchStocks(Function(List<dynamic>) callback) {
    service.emitWithAck(SocketEvents.getpopularnasdaqstocks.value, {}, (event) {
      if (event != null && event is List) {
        // _stockStreamController.add(data);
        List<Stock> stocks = (event).map((e) => Stock.fromJson(e)).toList();
        callback(stocks);
      } else {
        print('⚠️ Invalid stock data');
      }
    });
  }

  void getUpdatedStocks(
    List<Stock> ids,
    // List<Stock> stocks,
    Function(List<Stock> stocks) callBack,
  ) async {
    var data = {
      "stocks": ids
          .map((e) => {'stockId': e.stockId, 'showTrendChart': true})
          .toList(),
    };

    service.emitWithAck(SocketEvents.getStockData.value, data, (event) {
      log("getUpdatedStocks data $data $event");
      List<Stock> stocks = (event as List)
          .map((e) => Stock.fromJson(e))
          .toList();
      callBack(stocks);
    });
  }

  void searchStocks(String keyword, Function(List<dynamic>) callback) {
    service.emitWithAckString(
      SocketEvents.searchStockByKeyword.value,
      keyword,
      (data) {
        if (data != null && data is List) {
          List<Stock> stocks = (data).map((e) {
            try {
              return Stock.fromJson(e);
            } catch (e) {
              return emptyStock();
            }
          }).toList();
          callback(stocks);
        } else {
          print('⚠️ Invalid search result: $data');
        }
      },
    );
  }

  Stream<dynamic> onStockPriceUpdate() {
    return service.listen(SocketEvents.priceupdate.value).map((data) {
      // log("stock listen price update 1. : ${data}");
      return Stock.fromJson(jsonDecode(data));
    });
  }

  Stream<dynamic> onStockUpdate() {
    return Stream<dynamic>.multi((controller) {
      service.listenStockUpdate(
        SocketEvents.popularNasdaqStocksUpdate.value,
        (data) => controller.add(data),
      );
    });
  }

  void dispose() {
    service.disconnect();
  }
}

final socketRepository = Provider<SocketRepository>((ref) {
  final repo = SocketRepository(SocketApi.instance, BaseUrl.socketurl, ref);

  ref.onDispose(() => repo.dispose());

  return repo;
});
