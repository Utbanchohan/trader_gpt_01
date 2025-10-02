import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/conversations_start/domain/model/stock_price_model/stock_price_model.dart';

import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';

part 'analysis_api.g.dart';

@RestApi()
abstract interface class AnalysisApi {
  factory AnalysisApi(Dio client) => _AnalysisApi(
    client,
    baseUrl: 'https://marketsdata-prod-ff.traderverse.io/api/v1',
  );

  @POST('/overview')
  Future<StockResponse> getOverview(@Body() OverviewData overview);

  @POST("/ticker/stock_price")
  Future<StockPriceModel> stockPrice(@Body() StockPriceData overview);

  @POST("/ticker/price_target_metrics")
  Future<PriceTargetMatrics> priceTargetMatrics(@Body() OverviewData overview);
}
