import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class ChartService {
  final Dio dio = Dio();

  Future<void> fetchChartData({
    required bool cryptoApi,
    required bool internalApi,
    required String selectedSymbol,
    required String interval,
    required Function(List<dynamic>) onSuccess,
    required Function(Object) onError,
  }) async {
    try {
      if (cryptoApi) {
        final timestamp = (DateTime.now().millisecondsSinceEpoch / 1000)
            .floor();
        const apiKey =
            "00abb106bab258a22e1ab5fa66c0dc380b4e360c856fad07606f806ff0c7b3b7";

        String apiRoute =
            "https://data-api.coindesk.com/index/cc/v1/historical/days"
            "?market=cadli"
            "&instrument=$selectedSymbol-USD"
            "&to_ts=$timestamp"
            "&limit=2000"
            "&aggregate=1"
            "&fill=true"
            "&apply_mapping=true"
            "&response_format=JSON"
            "&groups=OHLC,VOLUME"
            "&api_key=$apiKey";

        if (interval == "min") {
          apiRoute =
              "https://data-api.coindesk.com/index/cc/v1/historical/minutes"
              "?market=cadli"
              "&instrument=$selectedSymbol-USD"
              "&to_ts=$timestamp"
              "&limit=2000"
              "&aggregate=1"
              "&fill=true"
              "&apply_mapping=true"
              "&response_format=JSON"
              "&groups=OHLC,VOLUME"
              "&api_key=$apiKey";
        } else if (interval == "hour") {
          apiRoute =
              "https://data-api.coindesk.com/index/cc/v1/historical/hours"
              "?market=cadli"
              "&instrument=$selectedSymbol-USD"
              "&to_ts=$timestamp"
              "&limit=2000"
              "&aggregate=1"
              "&fill=true"
              "&apply_mapping=true"
              "&response_format=JSON"
              "&groups=OHLC,VOLUME"
              "&api_key=$apiKey";
        }

        final res = await dio.get(apiRoute);

        if (res.statusCode == 200) {
          final data = res.data["Data"] ?? [];
          final transformed = transformExternalData(data);
          onSuccess(transformed);
        } else {
          onSuccess([]);
        }
      } else if (internalApi) {
        DateTime now = DateTime.now();
        String toDate = DateFormat('yyyy-MM-dd').format(now);
        String fromDate = DateFormat(
          'yyyy-MM-dd',
        ).format(now.subtract(const Duration(days: 365 * 1)));

        String apiRoute =
            "https://financialmodelingprep.com/stable/historical-price-eod/full?symbol=$selectedSymbol";

        if (interval == "min") {
          fromDate = DateFormat(
            'yyyy-MM-dd',
          ).format(now.subtract(const Duration(days: 15)));
          apiRoute =
              "https://financialmodelingprep.com/stable/historical-chart/1min?symbol=$selectedSymbol";
        } else if (interval == "hour") {
          fromDate = DateFormat(
            'yyyy-MM-dd',
          ).format(now.subtract(const Duration(days: 60)));
          apiRoute =
              "https://financialmodelingprep.com/stable/historical-chart/1hour?symbol=$selectedSymbol";
        } else if (interval == "daily") {
          fromDate = DateFormat(
            'yyyy-MM-dd',
          ).format(now.subtract(const Duration(days: 730)));
        }

        final res = await dio.get(
          apiRoute,
          queryParameters: {
            "from": fromDate,
            "to": toDate,
            "apikey": "kZ2IufkTebqBJoodhTojSFLZpBqhyKbO",
          },
        );

        if (res.statusCode == 200) {
          final data = (res.data as List).reversed.toList();
          final transformed = transformExternalData(data);
          onSuccess(transformed);
        } else {
          onSuccess([]);
        }
      }
    } catch (err) {
      onError(err);
    }
  }

  // You can replace this with your own transformation logic
  List<dynamic> transformExternalData(dynamic data) {
    // Example: simply return list of closing prices
    if (data is List) {
      return data.map((e) => e).toList();
    }
    return [];
  }
}
