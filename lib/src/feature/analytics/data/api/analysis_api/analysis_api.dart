import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_login_dto/market_login_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/fundamental_model/fundamental_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/stock_price_model/stock_price_model.dart';
import '../../../domain/model/market_data_login_model/market_data_login_model.dart';
import '../../../domain/model/matrics_data_model/matrics_data_model.dart';
import '../../../domain/model/monthly_model/monthly_model.dart';
import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../../domain/model/share_stats/share_stats.dart';
import '../../../domain/model/weekly_model/weekly_model.dart';
import '../../dto/overview_dto/overview_dto.dart';
import '../../dto/price_comparison_dto/price_comparison_dto.dart';

part 'analysis_api.g.dart';

@RestApi()
abstract interface class AnalysisApi {
  factory AnalysisApi(Dio client) => _AnalysisApi(client, baseUrl: '');

  @POST('api/v1/overview')
  Future<StockResponse> getOverview(@Body() SymbolDto overview);

  @POST("api/v1/ticker/stock_price")
  Future<StockPriceModel> stockPrice(@Body() StockPriceData stockPrice);

  @POST("api/v1/ticker/price_target_metrics")
  Future<PriceTargetMatrics> priceTargetMatrics(@Body() SymbolDto overview);

  @POST("api/auth/login")
  Future<MarketDataLoginModel> marketDataLogin(@Body() MarketLoginDto signin);

  @POST("api/v1/ticker/price_comparison")
  Future<PriceComparisonModel> priceComparison(
    @Body() PriceComparisonDto priceComparisonDto,
  );

  @POST("api/v1/company/fundamental")
  Future<FundamentalResponse> fundamentalModel(@Body() SymbolDto overview);

  @POST("api/v1/overview/share_stats")
  Future<SharesResponse> shareStats(@Body() SymbolDto overview);

  @POST("api/v1/ticker/fmp_key_metrics_quarter")
  Future<MatricsResponse> matricsData(@Body() SymbolDto overview);

  @GET("calculate_green_day_probabilities?ticker_1={ticker}")
  Future<WeeklyModel> weeklyData(@Path('ticker') String ticker);

  @GET("calculate_monthly_green_probabilities?ticker_1={ticker}")
  Future<ProbabilityResponse> monthlyData(@Path('ticker') String ticker);
}
