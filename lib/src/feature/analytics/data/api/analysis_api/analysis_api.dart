import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_login_dto/market_login_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/analysis_data/analysis_data_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/earnings_model/earnings_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/esg_score_model/esg_score_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/fundamental_model/fundamental_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/info_model_crypto/info_model_crypto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/security_ownership_model/security_ownership_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/short_volume/short_volume_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/stock_price_model/stock_price_model.dart';
import '../../../../sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import '../../../domain/model/about_crypto/about_crypto_model.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';
import '../../../domain/model/company_detail/company_detail_model.dart';
import '../../../domain/model/crypto_market_model/crypto_market_model.dart';
import '../../../domain/model/earning_chart_model/earning_chart_model.dart'
    show EarningChartModel;
import '../../../domain/model/earning_report_model/earning_report_model.dart';
import '../../../domain/model/financial_chart_data/financial_chart_data_model.dart';
import '../../../domain/model/financial_data_model/financial_data_model.dart';
import '../../../domain/model/highlight_model_crypto/highlight_model_crypto.dart';
import '../../../domain/model/insider_transaction/insider_transaction_model.dart';
import '../../../domain/model/market_cap_model/market_cap_model.dart';
import '../../../domain/model/market_data_login/market_data_login.dart';
import '../../../domain/model/market_data_login_model/market_data_login_model.dart';
import '../../../domain/model/matrics_data_model/matrics_data_model.dart';
import '../../../domain/model/monthly_model/monthly_model.dart';
import '../../../domain/model/overview_candle_chart_model/overview_candle_chart_model.dart';
import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../domain/model/price_performance_model/price_performance_model.dart';
import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../../domain/model/security_short/short_security_model.dart';
import '../../../domain/model/share_stats/share_stats.dart';
import '../../../domain/model/weekly_model/weekly_model.dart';
import '../../dto/analysis_dto/analysis_dto.dart';
import '../../dto/esg_score_dto/esg_score_dto.dart';
import '../../dto/financial_dto/financial_dto.dart';
import '../../dto/highlight_dto/highlight_dto_crypto.dart';
import '../../dto/market_cap_dto/market_cap_dto.dart';
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

  @POST("api/v1/login")
  Future<MarketDataLogin> marketData2Login(@Body() SignIn signin);

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

  @POST("api/v1/overview/fmp_analyst_rating")
  Future<AnalystRatingResponse> analyticsData(@Body() SymbolDto overview);

  @POST("api/v1/company/general")
  Future<CompanyModel> companyData(@Body() SymbolDto overview);

  @POST("api/v1/company/earning")
  Future<EarningsModel> earningsData(@Body() SymbolDto overview);

  @POST("api/v1/company/shorts_volume")
  Future<ShortVolumeModel> shortVolume(@Body() SymbolDto overview);

  @POST("api/v1/company/web_premium_table/security_short_vol")
  Future<ShortSecurityResponse> securityShortVolume(@Body() SymbolDto overview);

  @POST("api/v1/company/web_premium_table/security_ownership")
  Future<SecurityOwnershipResponse> shortOwnership(@Body() SymbolDto overview);

  @POST("api/v1/company/web_premium_table/insider_trades")
  Future<InsiderTransactionResponse> insiderTrades(@Body() SymbolDto overview);

  @POST("api/v1/company/details")
  Future<CompanyDetailModel> companyDetail(@Body() SymbolDto overview);

  @POST("api/v1/company/fmp_esg_score")
  Future<EsgScoreModel> esgScore(@Body() EsgDto overview);

  @POST("api/v1/ticker/stock_price")
  Future<AnalysisDataModel> analysisData(@Body() ChartRequestDto overview);

  @POST("api/v1/earning/chart")
  Future<EarningChartModel> earningChartData(@Body() ChartRequestDto overview);

  @POST("api/v1/earning/report")
  Future<EarningReportsModel> earningReportData(
    @Body() ChartRequestDto overview,
  );

  @POST("api/v1/financial/details")
  Future<FinancialResponse> financialData(@Body() PriceRequestDto overview);

  @POST("api/v1/financial/summary/charts")
  Future<FinanceDataResponse> financialCharts(@Body() SymbolDto symbol);

  @GET("calculate_green_day_probabilities?ticker_1={ticker}")
  Future<WeeklyModel> weeklyData(@Path('ticker') String ticker);

  @GET("calculate_monthly_green_probabilities?ticker_1={ticker}")
  Future<ProbabilityResponse> monthlyData(@Path('ticker') String ticker);

  @GET(
    "chartapi/stocks?symbol={symbol}&interval={interval}&start_date={start_date}&end_date={end_date}&sub_points={sub_points}&data_point={data_point}",
  )
  Future<OverviewCandleResponse> overviewCandleChart(
    @Path('symbol') String symbol,
    @Path('interval') String interval,
    @Path('start_date') String start_date,
    @Path('end_date') String end_date,
    @Path('sub_points') String sub_points,
    @Path('data_point') String data_point,
  );

  @POST('api/v1/ticker/price/performance')
  Future<PricePerformance> pricePerformance(@Body() SymbolDto symbol);

  //crypto apis
  @GET('api/v1/crypto/about?symbol={symbol}')
  Future<AboutCryptoModel> aboutCrypto(@Path('symbol') String symbol);

  @POST("api/v1/ticker/price_ratio")
  Future<PriceComparisonModel> priceRatio(@Body() PriceComparisonDto symbol);

  @POST("api/v1/crypto/marketcap_chart")
  Future<MarketCapResponse> marketCapChart(@Body() MarketCapRequest symbol);

  @GET(
    "chartapi/crypto?symbol={symbol}&interval={interval}&start_date={start_date}&end_date={end_date}&sub_points={sub_points}&data_point={data_point}",
  )
  Future<OverviewCandleResponse> cryptoCandleChart(
    @Path('symbol') String symbol,
    @Path('interval') String interval,
    @Path('start_date') String start_date,
    @Path('end_date') String end_date,
    @Path('sub_points') String sub_points,
    @Path('data_point') String data_point,
  );

  @GET(
    'calculate_monthly_green_probabilities?ticker_1={ticker}&asset_type={asset_type}',
  )
  Future<ProbabilityResponse> monthlyDataCrypto(
    @Path('ticker') String ticker,
    @Path('asset_type') String asset_type,
  );

  @GET(
    "calculate_green_day_probabilities?ticker_1={ticker}&asset_type={asset_type}",
  )
  Future<WeeklyModel> weeklyDataCrypto(
    @Path('ticker') String ticker,
    @Path('asset_type') String asset_type,
  );

  @POST('api/v1/crypto/highlights_top')
  Future<HighlightResponse> highlightTop(
    @Body() HighlightRequest highlightRequest,
  );

  @GET('api/v1/crypto/info?symbol={symbol}')
  Future<InfoCryptoResponse> infoCrypto(@Path('symbol') String symbol);

  @POST('api/v1/crypto/exchanges')
  Future<CryptoMarketModel> cryptoMarkets(@Body() SymbolDto symbol);
}
