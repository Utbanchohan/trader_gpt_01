import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/matrics_data_model/matrics_data_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import '../../../../../shared/states/app_loading_state.dart';
import '../../../data/dto/overview_dto/overview_dto.dart';
import '../../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';
import '../../../domain/model/fundamental_model/fundamental_model.dart';
import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../../domain/model/share_stats/share_stats.dart';
import '../../../domain/model/stock_price_model/stock_price_model.dart';
import '../../../domain/repositroy/overview_repository.dart'
    show overviewRepository;

part 'analytics_provider.g.dart';

@riverpod
class AnalyticsProvider extends _$AnalyticsProvider {
  @override
  AppLoadingState build() => const AppLoadingState();

  Future<StockPriceModel> stockPrices(StockPriceData stockprice) async {
    var res = await ref.read(overviewRepository).stockPrice(stockprice);
    if (res.msg != null) {
      return res;
    } else {
      return StockPriceModel(
        data: StockPriceData(chart: [], chartVol: [], eodData: {}),
      );
    }
  }

  Future<StockResponse?> getOverview(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).getOverview(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<PriceComparisonModel?> priceComparison(
    PriceComparisonDto priceComparisonDto,
  ) async {
    var res = await ref
        .read(overviewRepository)
        .priceComparison(priceComparisonDto);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<MatricsResponse?> matricsData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).matricsData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<FundamentalResponse?> fundamentalData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).fundamentalModel(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<SharesResponse?> shareStats(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).shareStats(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<PriceTargetMatrics?> priceTargetMatrics(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).priceTargetMatrics(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<AnalystRatingResponse?> analyticsData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).analyticsData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<CompanyModel?> companyData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).companyData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }
}
