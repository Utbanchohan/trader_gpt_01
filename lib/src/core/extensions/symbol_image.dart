String getItemImage(ImageType? type, String symbol) {
  print(type!.value + "=================================type $symbol");
  if (symbol.isNotEmpty) {
    if (type.value == ImageType.crypto.value) {
      return "https://storage.googleapis.com/analytics-images-traderverse/crypto_v1/${symbol.toUpperCase()}.svg";
    } else {
      return "https://storage.googleapis.com/analytics-images-traderverse/stocks_v1/${symbol.toUpperCase()}.svg";
    }
  } else {
    if (type!.value == ImageType.crypto.value) {
      return "https://cdn-images.traderverse.io/crypto_dummy.svg";
    } else if (type.value == ImageType.stock.value) {
      return "https://cdn-images.traderverse.io/stock_dummy.svg";
    } else {
      return "https://storage.googleapis.com/analytics-images-traderverse/stock/mobile_app/TGPT-Blue.svg";
    }
  }
}

enum ImageType {
  crypto('crypto'),
  stock('stock');

  final String value;
  const ImageType(this.value);

  /// Optional: reverse lookup
  static ImageType? fromValue(String value) {
    return ImageType.values.firstWhere((e) => e.value == value);
  }
}
