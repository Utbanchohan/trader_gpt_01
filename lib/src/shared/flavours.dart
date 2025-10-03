class BaseUrl {
  static String get baseUrl {
    return 'http://stage.tradersgpt.io/';
  }

  static String get socketurl {
    return 'wss://stage.tradersgpt.io/socket.io';
  }

  static String get marketDataUrl {
    return 'https://marketsdata-prod-ff.traderverse.io/';
  }

  static String get etlDataUrl {
    return 'https://etl-payload.traderverse.io/';
  }
}
