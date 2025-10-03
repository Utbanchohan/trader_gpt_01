import 'package:dio/dio.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/market_login_dto/market_login_dto.dart';
import 'package:trader_gpt/src/feature/analytics/data/dto/price_comparison_dto/price_comparison_dto.dart';
import 'package:trader_gpt/src/feature/analytics/domain/repositroy/overview_repository.dart';

import '../../../sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import '../../data/api/analysis_api/analysis_api.dart';
import '../../data/dto/overview_dto/overview_dto.dart';
import '../model/fundamental_model/fundamental_model.dart';
import '../model/market_data_login/market_data_login.dart';
import '../model/market_data_login_model/market_data_login_model.dart';
import '../model/matrics_data_model/matrics_data_model.dart';
import '../model/monthly_model/monthly_model.dart';
import '../model/overview_model/overview_model.dart';
import '../model/price_comparison_model/price_comparison_model.dart';
import '../model/price_target_matrics_model/price_target_matrics_model.dart'
    show PriceTargetMatrics;
import '../model/share_stats/share_stats.dart';
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
}
