import 'package:dio/dio.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_login_dto/market_login_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/price_comparison_dto/price_comparison_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/market_cap_model/market_cap_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/pages/sigin_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';

import '../../../sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import '../../data/api/analysis_api/analysis_api.dart';
import '../../data/dto/analysis_dto/analysis_dto.dart';
import '../../data/dto/esg_score_dto/esg_score_dto.dart';
import '../../data/dto/financial_dto/financial_dto.dart';
import '../../data/dto/highlight_dto/highlight_dto_crypto.dart';
import '../../data/dto/market_cap_dto/market_cap_dto.dart';
import '../../data/dto/overview_dto/overview_dto.dart';
import '../model/about_crypto/about_crypto_model.dart';
import '../model/analysis_data/analysis_data_model.dart';
import '../model/analytics_model/analytics_model.dart';
import '../model/company_detail/company_detail_model.dart'
    show CompanyDetailModel;
import '../model/compnay_model/company_model.dart';
import '../model/crypto_market_model/crypto_market_model.dart';
import '../model/earning_chart_model/earning_chart_model.dart';
import '../model/earning_report_model/earning_report_model.dart';
import '../model/earnings_model/earnings_model.dart';
import '../model/esg_score_model/esg_score_model.dart';
import '../model/financial_chart_data/financial_chart_data_model.dart';
import '../model/financial_data_model/financial_data_model.dart';
import '../model/fundamental_model/fundamental_model.dart';
import '../model/highlight_model_crypto/highlight_model_crypto.dart';
import '../model/info_model_crypto/info_model_crypto.dart';
import '../model/insider_transaction/insider_transaction_model.dart';
import '../model/market_data_login/market_data_login.dart';
import '../model/market_data_login_model/market_data_login_model.dart';
import '../model/matrics_data_model/matrics_data_model.dart';
import '../model/monthly_model/monthly_model.dart';
import '../model/overview_candle_chart_model/overview_candle_chart_model.dart';
import '../model/overview_model/overview_model.dart';
import '../model/price_comparison_model/price_comparison_model.dart';
import '../model/price_target_matrics_model/price_target_matrics_model.dart'
    show PriceTargetMatrics;
import '../model/security_ownership_model/security_ownership_model.dart';
import '../model/security_short/short_security_model.dart';
import '../model/share_stats/share_stats.dart';
import '../model/short_volume/short_volume_model.dart';
import '../model/stock_price_model/stock_price_model.dart';
import '../model/weekly_model/weekly_model.dart';

class OverviewApiRepository implements OverviewRepository {
  OverviewApiRepository(this.client);

  final Dio client;

  @override
  Future<StockPriceModel> stockPrice(StockPriceData stockPrice) async {
    return await AnalysisApi(client).stockPrice(stockPrice);
  }

  @override
  Future<StockResponse> getOverview(SymbolDto overview) async {
    return await AnalysisApi(client).getOverview(overview);
  }

  @override
  Future<PriceTargetMatrics> priceTargetMatrics(SymbolDto overview) async {
    return await AnalysisApi(client).priceTargetMatrics(overview);
  }

  @override
  Future<MarketDataLoginModel> marketDataLogin(MarketLoginDto signin) async {
    return await AnalysisApi(client).marketDataLogin(signin);
  }

  @override
  Future<MarketDataLogin> marketData2Login(SignIn signin) async {
    return await AnalysisApi(client).marketData2Login(signin);
  }

  @override
  Future<PriceComparisonModel> priceComparison(
    PriceComparisonDto priceComparisonDto,
  ) async {
    return await AnalysisApi(client).priceComparison(priceComparisonDto);
  }

  @override
  Future<MatricsResponse> matricsData(SymbolDto symbolData) async {
    return await AnalysisApi(client).matricsData(symbolData);
  }

  @override
  Future<FundamentalResponse> fundamentalModel(SymbolDto symbolData) async {
    return await AnalysisApi(client).fundamentalModel(symbolData);
  }

  @override
  Future<SharesResponse> shareStats(SymbolDto symbolData) async {
    return await AnalysisApi(client).shareStats(symbolData);
  }

  @override
  Future<WeeklyModel> weeklyData(String ticker) async {
    return await AnalysisApi(client).weeklyData(ticker);
  }

  @override
  Future<ProbabilityResponse> monthlyData(String ticker) async {
    return await AnalysisApi(client).monthlyData(ticker);
  }

  @override
  Future<AnalystRatingResponse> analyticsData(SymbolDto symbolData) async {
    return await AnalysisApi(client).analyticsData(symbolData);
  }

  @override
  Future<CompanyModel> companyData(SymbolDto symbolData) async {
    return await AnalysisApi(client).companyData(symbolData);
  }

  @override
  Future<ShortVolumeModel> shortVolumeData(SymbolDto symbolData) async {
    return await AnalysisApi(client).shortVolume(symbolData);
  }

  @override
  Future<ShortSecurityResponse> securityShortVolume(SymbolDto overview) async {
    return await AnalysisApi(client).securityShortVolume(overview);
  }

  @override
  Future<SecurityOwnershipResponse> shortOwnership(SymbolDto overview) async {
    return await AnalysisApi(client).shortOwnership(overview);
  }

  @override
  Future<EarningsModel> earningsData(SymbolDto overview) async {
    return await AnalysisApi(client).earningsData(overview);
  }

  @override
  Future<InsiderTransactionResponse> insiderTrades(SymbolDto overview) async {
    return await AnalysisApi(client).insiderTrades(overview);
  }

  @override
  Future<EsgScoreModel> esgScore(EsgDto overview) async {
    return await AnalysisApi(client).esgScore(overview);
  }

  @override
  Future<CompanyDetailModel> companyDetail(SymbolDto overview) async {
    return await AnalysisApi(client).companyDetail(overview);
  }

  @override
  Future<AnalysisDataModel> analysisData(ChartRequestDto overview) async {
    return await AnalysisApi(client).analysisData(overview);
  }

  @override
  Future<EarningChartModel> earningChartData(ChartRequestDto overview) async {
    return await AnalysisApi(client).earningChartData(overview);
  }

  @override
  Future<EarningReportsModel> earningReportData(
    ChartRequestDto overview,
  ) async {
    return await AnalysisApi(client).earningReportData(overview);
  }

  @override
  Future<FinancialResponse> financialData(PriceRequestDto overview) async {
    return await AnalysisApi(client).financialData(overview);
  }

  @override
  Future<FinanceDataResponse> financialCharts(SymbolDto symbol) async {
    return await AnalysisApi(client).financialCharts(symbol);
  }

  @override
  Future<AboutCryptoModel> aboutCrypto(String symbol) async {
    return await AnalysisApi(client).aboutCrypto(symbol);
  }

  @override
  Future<PriceComparisonModel> priceRatio(PriceComparisonDto symbol) async {
    return await AnalysisApi(client).priceRatio(symbol);
  }

  @override
  Future<MarketCapResponse> marketCapChart(MarketCapRequest symbol) async {
    return await AnalysisApi(client).marketCapChart(symbol);
  }

  @override
  Future<List<OverviewCandleChartModel>> overviewCandleChart(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) async {
    return await AnalysisApi(client).overviewCandleChart(
      symbol,
      interval,
      start_date,
      end_date,
      sub_points,
      data_point,
    );
  }

  @override
  Future<List<OverviewCandleChartModel>> cryptoCandleChart(
    String symbol,
    String interval,
    String start_date,
    String end_date,
    String sub_points,
    String data_point,
  ) async {
    return await AnalysisApi(client).cryptoCandleChart(
      symbol,
      interval,
      start_date,
      end_date,
      sub_points,
      data_point,
    );
  }

  @override
  Future<ProbabilityResponse> monthlyDataCrypto(
    String ticker,
    String asset_type,
  ) async {
    return await AnalysisApi(client).monthlyDataCrypto(ticker, asset_type);
  }

  Future<WeeklyModel> weeklyDataCrypto(String ticker, String asset_type) async {
    return await AnalysisApi(client).weeklyDataCrypto(ticker, asset_type);
  }

  @override
  Future<HighlightResponse> highlightTop(
    HighlightRequest highlightRequest,
  ) async {
    return await AnalysisApi(client).highlightTop(highlightRequest);
  }

  @override
  Future<InfoCryptoResponse> infoCrypto(String symbol) async {
    return await AnalysisApi(client).infoCrypto(symbol);
  }

  @override
  Future<CryptoMarketModel> cryptoMarkets(SymbolDto symbol) async {
    return await AnalysisApi(client).cryptoMarkets(symbol);
  }
}
