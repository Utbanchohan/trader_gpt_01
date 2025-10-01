enum Flavor {
  prod,
  dev,
  stage,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'TradersGPT';
      case Flavor.dev:
        return 'TradersGPT-dev';
      case Flavor.stage:
        return 'TradersGPT-stage';
    }
  }


  static String get baseUrl{
      switch (appFlavor) {
      case Flavor.prod:
        return 'http://app.tradersgpt.io/';
      case Flavor.dev:
        return 'http://dev.tradersgpt.io/';
      case Flavor.stage:
        return 'http://stage.tradersgpt.io/';
    }
  }


    static String get socketUrl{
      switch (appFlavor) {
      case Flavor.prod:
        return 'wss://app.tradersgpt.io/socket.io';
      case Flavor.dev:
        return 'wss://dev.tradersgpt.io/socket.io';
      case Flavor.stage:
        return 'wss://stage.tradersgpt.io/socket.io';
    }
  }


      static String get newSocketUrl{
      switch (appFlavor) {
      case Flavor.prod:
        return 'https://app.tradersgpt.io';
      case Flavor.dev:
        return 'https://dev.tradersgpt.io';
      case Flavor.stage:
        return 'https://stage.tradersgpt.io';
    }
  }




  



}
