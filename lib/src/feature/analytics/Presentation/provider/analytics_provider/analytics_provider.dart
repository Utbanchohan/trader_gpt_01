import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/company_detail/company_detail_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/esg_score_model/esg_score_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/matrics_data_model/matrics_data_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import '../../../../../shared/custom_message.dart';
import '../../../../../shared/states/app_loading_state.dart';
import '../../../data/dto/analysis_dto/analysis_dto.dart';
import '../../../data/dto/esg_score_dto/esg_score_dto.dart';
import '../../../data/dto/overview_dto/overview_dto.dart';
import '../../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';
import '../../../domain/model/earning_chart_model/earning_chart_model.dart';
import '../../../domain/model/earning_report_model/earning_report_model.dart';
import '../../../domain/model/earnings_model/earnings_model.dart';
import '../../../domain/model/fundamental_model/fundamental_model.dart';
import '../../../domain/model/insider_transaction/insider_transaction_model.dart';
import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../domain/model/price_target_matrics_model/price_target_matrics_model.dart';
import '../../../domain/model/security_ownership_model/security_ownership_model.dart';
import '../../../domain/model/security_short/short_security_model.dart';
import '../../../domain/model/share_stats/share_stats.dart';
import '../../../domain/model/short_volume/short_volume_model.dart';
import '../../../domain/model/stock_price_model/stock_price_model.dart';
import '../../../domain/repositroy/overview_repository.dart'
    show overviewRepository, overviewRepositoryNrm;

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

  Future<EarningsModel?> earningsData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).earningsData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<InsiderTransactionResponse?> insiderTrades(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).insiderTrades(symbol);
    if (res.data.isNotEmpty) {
      return res;
    } else {
      return null;
    }
  }

  Future<ShortVolumeModel?> shortVolumeData(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).shortVolumeData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<ShortSecurityResponse?> securityShortVolume(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).securityShortVolume(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<SecurityOwnershipResponse?> shortOwnership(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).shortOwnership(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<EsgScoreModel?> esgScore(String symbol) async {
    final now = DateTime.now().toUtc();

    // Subtract 2 years for startDate
    final endDate = DateTime.utc(
      now.year - 2,
      now.month,
      now.day,
      now.hour,
      now.minute,
      now.second,
      now.millisecond,
    );

    EsgDto esgDto = EsgDto(symbol: symbol, startDate: now, endDate: endDate);
    var res = await ref.read(overviewRepository).esgScore(esgDto);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<CompanyDetailModel?> companyDetail(SymbolDto symbol) async {
    var res = await ref.read(overviewRepository).companyDetail(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  }

  Future<EarningChartModel?> earningChartData(ChartRequestDto overview) async {
    try {
      var res = await ref
          .read(overviewRepositoryNrm)
          .earningChartData(overview);
      if (res.msg == "Success") {
        return res;
      } else {
        return null;
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        try {
          $showMessage(e.response!.data!['message'], isError: true);
        } catch (e) {
          $showMessage("Something went wrong", isError: true);
        }
      } else if (e.type == DioExceptionType.connectionError) {
        print('❌ Network error');
      } else {
        print('❌ Unknown error: ${e.message}');
      }

      state = AppLoadingState();
    }
  }

  Future<EarningReportsModel?> earningReportData(
    ChartRequestDto overview,
  ) async {
    try {
      var res = await ref
          .read(overviewRepositoryNrm)
          .earningReportData(overview);
      if (res.msg == "Success") {
        return res;
      } else {
        return null;
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        try {
          $showMessage(e.response!.data!['message'], isError: true);
        } catch (e) {
          $showMessage("Something went wrong", isError: true);
        }
      } else if (e.type == DioExceptionType.connectionError) {
        print('❌ Network error');
      } else {
        print('❌ Unknown error: ${e.message}');
      }

      state = AppLoadingState();
    }
  }
}
