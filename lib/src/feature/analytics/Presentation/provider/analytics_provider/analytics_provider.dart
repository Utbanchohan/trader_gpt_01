import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/company_detail/company_detail_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/compnay_model/company_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/esg_score_model/esg_score_model.dart';
import 'package:trader_gpt/src/feature/analytics/domain/model/matrics_data_model/matrics_data_model.dart';
import '../../../../../core/local/repository/local_storage_repository.dart';
import '../../../../../shared/custom_message.dart';
import '../../../../../shared/states/app_loading_state.dart';
import '../../../data/dto/analysis_dto/analysis_dto.dart';
import '../../../data/dto/esg_score_dto/esg_score_dto.dart';
import '../../../data/dto/financial_dto/financial_dto.dart';
import '../../../data/dto/highlight_dto/highlight_dto_crypto.dart';
import '../../../data/dto/market_cap_dto/market_cap_dto.dart';
import '../../../data/dto/overview_dto/overview_dto.dart';
import '../../../data/dto/price_comparison_dto/price_comparison_dto.dart';
import '../../../domain/model/analysis_data/analysis_data_model.dart';
import '../../../domain/model/analytics_model/analytics_model.dart';
import '../../../domain/model/crypto_market_model/crypto_market_model.dart';
import '../../../domain/model/earning_chart_model/earning_chart_model.dart';
import '../../../domain/model/earning_report_model/earning_report_model.dart';
import '../../../domain/model/earnings_model/earnings_model.dart';
import '../../../domain/model/financial_chart_data/financial_chart_data_model.dart';
import '../../../domain/model/financial_data_model/financial_data_model.dart';
import '../../../domain/model/fundamental_model/fundamental_model.dart';
import '../../../domain/model/highlight_model_crypto/highlight_model_crypto.dart';
import '../../../domain/model/insider_transaction/insider_transaction_model.dart';
import '../../../domain/model/market_cap_model/market_cap_model.dart';
import '../../../domain/model/overview_model/overview_model.dart';
import '../../../domain/model/price_comparison_model/price_comparison_model.dart';
import '../../../domain/model/price_performance_model/price_performance_model.dart';
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
    try {
      var res = await ref.read(overviewRepository).stockPrice(stockprice);
      if (res.msg != null) {
        return res;
      } else {
        return StockPriceModel(
          data: StockPriceData(chart: [], chartVol: [], eodData: {}),
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        final refreshToken = ref.read(localDataProvider).marketRefreshToken;
        if (refreshToken == null) rethrow;
        try {
          final newToken = ref.read(localDataProvider).marketRefreshToken;
          if (newToken != null) {
            ref.read(localDataProvider).setAccessTokenMarket(newToken);
            return StockPriceModel(
              data: StockPriceData(chart: [], chartVol: [], eodData: {}),
            );
          } else {
            rethrow;
          }
        } catch (refreshError) {
          rethrow;
        }
      } else {
        rethrow;
      }
    }
  }
}

//overview providers

@riverpod
Future<OverviewData?> getOverview(Ref ref, String symbol) async {
  try {
    var res = await ref
        .read(overviewRepository)
        .getOverview(SymbolDto(symbol: symbol));
    if (res.status == 200) {
      return res.data;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketRefreshToken;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketRefreshToken;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarket(newToken);
          var res = await ref
              .read(overviewRepository)
              .getOverview(SymbolDto(symbol: symbol));

          if (res.status == 200) {
            return res.data;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

@riverpod
Future<List<PriceTargetData?>?> priceTargetMatrics(
  Ref ref,
  SymbolDto symbol,
) async {
  var res = await ref.read(overviewRepository).priceTargetMatrics(symbol);
  if (res.status == 200) {
    return res.data;
  } else {
    return null;
  }
}

@riverpod
Future<MatricsResponse?> matricsData(Ref ref, String symbol) async {
  var res = await ref
      .read(overviewRepository)
      .matricsData(SymbolDto(symbol: symbol));

  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<PricePerformance?> pricePerformance(Ref ref, SymbolDto symbol) async {
  try {
    var res = await ref.read(overviewRepositoryNrm).pricePerformance(symbol);
    if (res.msg == "Success") {
      return res;
    } else {
      return null;
    }
  } catch (e) {
    print(e);
    rethrow;
  }
}

@riverpod
Future<SharesResponse?> shareStats(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).shareStats(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<FundamentalResponse?> fundamentalData(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).fundamentalModel(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<PriceComparisonModel?> priceComparison(
  Ref ref,
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

@riverpod
Future<AnalystRatingResponse?> analyticsData(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).analyticsData(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

//company providers
@riverpod
Future<CompanyDetailModel?> companyDetail(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).companyDetail(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<EarningsModel?> earningsData(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).earningsData(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<EsgScoreModel?> esgScore(Ref ref, String symbol) async {
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

@riverpod
Future<InsiderTransactionResponse?> insiderTrades(
  Ref ref,
  SymbolDto symbol,
) async {
  var res = await ref.read(overviewRepository).insiderTrades(symbol);
  if (res.data.isNotEmpty) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<ShortVolumeModel?> shortVolumeData(Ref ref, SymbolDto symbol) async {
  var res = await ref.read(overviewRepository).shortVolumeData(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<ShortSecurityResponse?> securityShortVolume(
  Ref ref,
  SymbolDto symbol,
) async {
  var res = await ref.read(overviewRepository).securityShortVolume(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<SecurityOwnershipResponse?> shortOwnership(
  Ref ref,
  SymbolDto symbol,
) async {
  var res = await ref.read(overviewRepository).shortOwnership(symbol);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

@riverpod
Future<CompanyModel?> companyData(Ref ref, SymbolDto symbol) async {
  try {
    var res = await ref.read(overviewRepository).companyData(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketRefreshToken;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketRefreshToken;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarketNew(newToken);
          var res = await ref.read(overviewRepository).companyData(symbol);
          if (res.status == 200) {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

//financial chart data provider
@riverpod
Future<FinanceDataResponse?> financialCharts(Ref ref, SymbolDto symbol) async {
  try {
    var res = await ref.read(overviewRepository).financialCharts(symbol);
    if (res.status == 200) {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketRefreshToken;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketRefreshToken;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarketNew(newToken);
          var res = await ref.read(overviewRepository).financialCharts(symbol);
          if (res.status == 200) {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

@riverpod
Future<FinancialResponse?> financialData(
  Ref ref,
  PriceRequestDto overview,
) async {
  var res = await ref.read(overviewRepository).financialData(overview);
  if (res.status == 200) {
    return res;
  } else {
    return null;
  }
}

//earning providers
@riverpod
Future<EarningChartModel?> earningChartData(
  Ref ref,
  ChartRequestDto overview,
) async {
  try {
    var res = await ref.read(overviewRepositoryNrm).earningChartData(overview);
    if (res.msg == "Success") {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketAccessTokenNew;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketAccessTokenNew;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarketNew(newToken);
          var res = await ref
              .read(overviewRepositoryNrm)
              .earningChartData(overview);
          if (res.msg == "Success") {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        print(e);
        rethrow;
      }
    } else {
      rethrow;
      print(e);
    }
  }
}

@riverpod
Future<EarningReportsModel?> earningReportData(
  Ref ref,
  ChartRequestDto overview,
) async {
  try {
    var res = await ref.read(overviewRepositoryNrm).earningReportData(overview);
    if (res.msg == "Success") {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    log("catch earningReportData errror======>>>>>>" + e.toString());

    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketAccessTokenNew;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketAccessTokenNew;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarketNew(newToken);
          var res = await ref
              .read(overviewRepositoryNrm)
              .earningReportData(overview);
          if (res.msg == "Success") {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        log("rethorw earningReportData errror======>>>>>>" + e.toString());
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

//analysis data provider
@riverpod
Future<AnalysisDataModel?> analysisData(
  Ref ref,
  ChartRequestDto overview,
) async {
  try {
    var res = await ref.read(overviewRepositoryNrm).analysisData(overview);
    if (res.msg == "Success") {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketRefreshTokenNew;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketRefreshTokenNew;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarketNew(newToken);
          var res = await ref
              .read(overviewRepositoryNrm)
              .analysisData(overview);
          if (res.msg == "Success") {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

//crypto apis start
@riverpod
Future<HighlightResponse?> highlightsTop(
  Ref ref,
  HighlightRequest highlightRequest,
) async {
  try {
    var res = await ref.read(overviewRepository).highlightTop(highlightRequest);
    if (res.msg == "Success") {
      return res;
    } else {
      return null;
    }
  } on DioException catch (e) {
    if (e.response?.statusCode == 401) {
      final refreshToken = ref.read(localDataProvider).marketRefreshToken;
      if (refreshToken == null) rethrow;
      try {
        final newToken = ref.read(localDataProvider).marketRefreshToken;
        if (newToken != null) {
          ref.read(localDataProvider).setAccessTokenMarket(newToken);
          var res = await ref
              .read(overviewRepository)
              .highlightTop(highlightRequest);
          if (res.msg == "Success") {
            return res;
          } else {
            return null;
          }
        } else {
          rethrow;
        }
      } catch (refreshError) {
        rethrow;
      }
    } else {
      rethrow;
    }
  }
}

@riverpod
Future<MarketCapResponse?> marketCapChart(
  Ref ref,
  MarketCapRequest symbol,
) async {
  try {
    var res = await ref.read(overviewRepository).marketCapChart(symbol);
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
  }
}

@riverpod
Future<CryptoMarketModel?> cryptoMarkets(Ref ref, SymbolDto symbol) async {
  try {
    var res = await ref.read(overviewRepository).cryptoMarkets(symbol);
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
  }
}

@riverpod
Future<PriceComparisonModel?> priceRatio(
  Ref ref,
  PriceComparisonDto symbol,
) async {
  try {
    var res = await ref.read(overviewRepository).priceRatio(symbol);
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
  }
}

  //crypto apis end