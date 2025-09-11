import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/shared/flavours.dart';
import 'package:trader_gpt/src/shared/socket/data/api/socket_api.dart';
import 'package:trader_gpt/src/shared/socket/enums.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

class SocketRepository {
  final String baseUrl;
  final SocketApi service;

  SocketRepository(this.service, this.baseUrl);

  // ✅ Connect socket AFTER login
  void initConnection(String accessToken) {
    service.connect(baseUrl, accessToken);
  }

  Stream<Stock> listenToStocksPrices() {
    return service.listen(SocketEvents.priceUpdate.value).map((data) {
      return Stock.fromJson(jsonDecode(data));
    });
  }

  void getUpdatedStocks(
    List<String> ids,
    Function(List<Stock> stocks) callBack,
  ) {
    service.emitWithAck(
      SocketEvents.getStocksData.value,
      {
        "stocks": ids
            .map((e) => {'stockId': e, 'showTrendChart': true})
            .toList(),
      },
      (event) {
        List<Stock> stocks = (event as List)
            .map((e) => Stock.fromJson(e))
            .toList();
        callBack(stocks);
      },
    );
  }

  void dispose() {
    service.disconnect();
  }
}

final socketRepository = Provider<SocketRepository>((ref) {
  return SocketRepository(SocketApi.instance, BaseUrl.socketurl);
});
