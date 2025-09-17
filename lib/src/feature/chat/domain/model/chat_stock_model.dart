class ChatStock {
  final String image;            
  final String symbol;           
  final String companyName;      
  final double price;            
  final double changePercentage; 
  final String chatId;           

  ChatStock({
    required this.image,
    required this.symbol,
    required this.companyName,
    required this.price,
    required this.changePercentage,
    required this.chatId,
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
