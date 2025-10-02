import '../../shared/socket/model/stock_model.dart/stock_model.dart';

Stock emptyStock() {
  return Stock(
    id: "",
    stockId: "",
    symbol: "",
    exchange: "",
    exchangeshortname: "",
    source: "",
    type: "",
    companyName: "",
    isActivelyTrading: false,
    isAdr: false,
    isEtf: false,
    isFund: false,
    isin: "",
    marketCap: 0,
    price: 0,
    previousClose: 0,
    pctChange: 0,
    key: "",
    isPositive: false,
    fiveDayTrend: [FiveDayTrend(data: [])],
  );
}
