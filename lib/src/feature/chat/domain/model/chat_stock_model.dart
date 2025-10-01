import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

class ChatRouting {
  final String image;
  final String symbol;
  final String companyName;
  final double price;
  final double changePercentage;
  final String chatId;
  final String stockid;
  final FiveDayTrend trendChart;
  final double? previousClose;

  ChatRouting({
    required this.image,
    required this.symbol,
    required this.companyName,
    required this.price,
    required this.changePercentage,
    required this.chatId,
    required this.stockid,
    required this.trendChart,
    required this.previousClose,
  });

  // factory ChatStock.fromJson(Map<String, dynamic> json) {
  //   return ChatStock(
  //     image: json['image'] ?? '',
  //     symbol: json['symbol'] ?? '',
  //     companyName: json['companyName'] ?? '',
  //     price: (json['price'] ?? 0).toDouble(),
  //     changePercentage: (json['changePercentage'] ?? 0).toDouble(),
  //     chatId: json['chatId'] ?? '',
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'image': image,
  //     'symbol': symbol,
  //     'companyName': companyName,
  //     'price': price,
  //     'changePercentage': changePercentage,
  //     'chatId': chatId,
  //   };
  // }
}
