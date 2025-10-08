import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_api_repository.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';

import '../../../../core/api_client/client.dart'
    show client, marketDataClient, marketDataClientNew;
import '../../../../shared/flavours.dart';
import '../../../sign_in/data/dto/sign_up_dto/sign_up.dart';
import '../../data/dto/analysis_dto/analysis_dto.dart';
import '../../data/dto/esg_score_dto/esg_score_dto.dart';
import '../../data/dto/market_login_dto/market_login_dto.dart';
import '../../data/dto/overview_dto/overview_dto.dart';
import '../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../model/analysis_data/analysis_data_model.dart';
import '../model/analytics_model/analytics_model.dart';
import '../model/company_detail/company_detail_model.dart';
import '../model/compnay_model/company_model.dart';
import '../model/earning_chart_model/earning_chart_model.dart';
import '../model/earning_report_model/earning_report_model.dart';
import '../model/earnings_model/earnings_model.dart';
import '../model/esg_score_model/esg_score_model.dart';
import '../model/fundamental_model/fundamental_model.dart';
import '../model/insider_transaction/insider_transaction_model.dart';
import '../model/market_data_login/market_data_login.dart';
import '../model/market_data_login_model/market_data_login_model.dart';
import '../model/matrics_data_model/matrics_data_model.dart';
import '../model/monthly_model/monthly_model.dart';
import '../model/overview_model/overview_model.dart';
import '../model/price_comparison_model/price_comparison_model.dart';
import '../model/price_target_matrics_model/price_target_matrics_model.dart';
import '../model/security_ownership_model/security_ownership_model.dart';
import '../model/security_short/short_security_model.dart';
import '../model/share_stats/share_stats.dart';
import '../model/short_volume/short_volume_model.dart';
import '../model/stock_price_model/stock_price_model.dart';
import '../model/weekly_model/weekly_model.dart';

abstract interface class OverviewRepository {
  Future<StockPriceModel> stockPrice(StockPriceData stockPrice);
  Future<StockResponse> getOverview(SymbolDto overview);
  Future<PriceTargetMatrics> priceTargetMatrics(SymbolDto overview);
  Future<MarketDataLoginModel> marketDataLogin(MarketLoginDto signin);
  Future<MarketDataLogin> marketData2Login(SignIn signin);
  Future<PriceComparisonModel> priceComparison(
    PriceComparisonDto priceComparisonDto,
  );
  Future<WeeklyModel> weeklyData(String ticker);
  Future<CompanyModel> companyData(SymbolDto symbolData);
  Future<ProbabilityResponse> monthlyData(String ticker);
  Future<MatricsResponse> matricsData(SymbolDto symbolData);
  Future<SharesResponse> shareStats(SymbolDto symbolData);
  Future<FundamentalResponse> fundamentalModel(SymbolDto symbolData);
  Future<AnalystRatingResponse> analyticsData(SymbolDto symbolData);
  Future<EarningsModel> earningsData(SymbolDto overview);
  Future<ShortVolumeModel> shortVolumeData(SymbolDto symbolData);
  Future<SecurityOwnershipResponse> shortOwnership(SymbolDto overview);
  Future<InsiderTransactionResponse> insiderTrades(SymbolDto overview);
  Future<ShortSecurityResponse> securityShortVolume(SymbolDto overview);
  Future<EsgScoreModel> esgScore(EsgDto overview);
  Future<CompanyDetailModel> companyDetail(SymbolDto overview);
  Future<AnalysisDataModel> analysisData(ChartRequestDto overview);
  Future<EarningChartModel> earningChartData(ChartRequestDto overview);
  Future<EarningReportsModel> earningReportData(ChartRequestDto overview);
}

final overviewRepository = Provider<OverviewRepository>(
  (ref) =>
      OverviewApiRepository(ref.read(marketDataClient(BaseUrl.marketDataUrl))),
);

final overviewRepositoryele = Provider<OverviewRepository>(
  (ref) =>
      OverviewApiRepository(ref.read(marketDataClient(BaseUrl.etlDataUrl))),
);

final overviewRepositoryNrm = Provider<OverviewRepository>(
  (ref) =>
      OverviewApiRepository(ref.read(marketDataClientNew(BaseUrl.marketData))),
);
