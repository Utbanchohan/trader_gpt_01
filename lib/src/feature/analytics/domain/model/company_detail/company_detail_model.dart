import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_detail_model.freezed.dart';
part 'company_detail_model.g.dart';

@freezed
abstract class CompanyDetailModel with _$CompanyDetailModel {
  const factory CompanyDetailModel({
    required int status,
    required String msg,
    required CompanyDetailData data,
    dynamic errors,
  }) = _CompanyDetailModel;

  factory CompanyDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailModelFromJson(json);
}

@freezed
abstract class CompanyDetailData with _$CompanyDetailData {
  const factory CompanyDetailData({
    @JsonKey(name: 'fundamentals_SplitsDividends')
    List<FundamentalsSplitsDividends>? fundamentalsSplitsDividends,

    @JsonKey(name: 'fundamentals_InsiderTransactions')
    List<FundamentalsInsiderTransactions>? fundamentalsInsiderTransactions,

    @JsonKey(name: 'fundamentals_Holders')
    List<FundamentalsHolders>? fundamentalsHolders,

    @JsonKey(name: 'fundamentals_ESGScores')
    List<FundamentalsEsgScores>? fundamentalsEsgScores,

    @JsonKey(name: 'fundamentals_outstandingShares_quarter')
    List<FundamentalsOutstandingSharesQuarter>?
    fundamentalsOutstandingSharesQuarter,

    @JsonKey(name: 'fundamentals_outstandingShares')
    List<FundamentalsOutstandingShares>? fundamentalsOutstandingShares,

    @JsonKey(name: 'fundamentals_InsiderTransactions_insights')
    List<FundamentalsInsiderTransactionsInsights>?
    fundamentalsInsiderTransactionsInsights,

    @JsonKey(name: 'fundamentals_Earnings_Trend')
    List<FundamentalsEarningsTrend>? fundamentalsEarningsTrend,

    @JsonKey(name: 'get_analytics_holders_summary')
    List<GetAnalyticsHoldersSummary>? getAnalyticsHoldersSummary,

    @JsonKey(name: 'fundamentals_insider_transactions_insights_summary')
    String? fundamentalsInsiderTransactionsInsightsSummary,

    @JsonKey(name: 'holder_summary') List<String>? holderSummary,

    @JsonKey(name: 'fundamentals_InsiderTransactions_summary')
    String? fundamentalsInsiderTransactionsSummary,

    @JsonKey(name: 'outstandingShares_Summary')
    String? outstandingSharesSummary,
  }) = _CompanyDetailData;

  factory CompanyDetailData.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailDataFromJson(json);
}

@freezed
abstract class FundamentalsSplitsDividends with _$FundamentalsSplitsDividends {
  const factory FundamentalsSplitsDividends({
    @JsonKey(name: 'Dividend Date') String? dividendDate,
    @JsonKey(name: 'Ex Dividend Date') String? exDividendDate,
    @JsonKey(name: 'Last Split Date') String? lastSplitDate,
    @JsonKey(name: 'Forward Annual Dividend Rate')
    double? forwardAnnualDividendRate,
    @JsonKey(name: 'Forward Annual Dividend Yield')
    double? forwardAnnualDividendYield,
    @JsonKey(name: 'Payout Ratio') double? payoutRatio,
    @JsonKey(name: 'Last Split Factor') String? lastSplitFactor,
    @JsonKey(name: 'stock_type') int? stockType,
  }) = _FundamentalsSplitsDividends;

  factory FundamentalsSplitsDividends.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsSplitsDividendsFromJson(json);
}

@freezed
abstract class FundamentalsInsiderTransactions
    with _$FundamentalsInsiderTransactions {
  const factory FundamentalsInsiderTransactions({
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Transaction Date') String? transactionDate,
    @JsonKey(name: 'SEC Link') String? secLink,
    @JsonKey(name: 'Owner Cik') String? ownerCik,
    @JsonKey(name: 'Owner Name') String? ownerName,
    @JsonKey(name: 'Transaction Code') String? transactionCode,
    @JsonKey(name: 'Transaction Amount') double? transactionAmount,
    @JsonKey(name: 'Transaction Price') double? transactionPrice,
    @JsonKey(name: 'Transaction Acquired / Disposed')
    String? transactionAcquiredDisposed,
    @JsonKey(name: 'Post Transaction Amount') double? postTransactionAmount,
    @JsonKey(name: 'stock_type') int? stockType,
  }) = _FundamentalsInsiderTransactions;

  factory FundamentalsInsiderTransactions.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsInsiderTransactionsFromJson(json);
}

@freezed
abstract class FundamentalsHolders with _$FundamentalsHolders {
  const factory FundamentalsHolders({
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Current Shares') double? currentShares,
    @JsonKey(name: 'Change') double? change,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Total Shares') double? totalShares,
    @JsonKey(name: 'Total Assets') double? totalAssets,
    @JsonKey(name: 'Change Percentage') double? changePercentage,
    @JsonKey(name: 'InstitutionsFunds') String? institutionsFunds,
  }) = _FundamentalsHolders;

  factory FundamentalsHolders.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsHoldersFromJson(json);
}

@freezed
abstract class FundamentalsEsgScores with _$FundamentalsEsgScores {
  const factory FundamentalsEsgScores({
    String? Disclaimer,
    String? RatingDate,
    double? TotalEsg,
    double? TotalEsgPercentile,
    double? EnvironmentScore,
    double? EnvironmentScorePercentile,
    double? SocialScore,
    double? SocialScorePercentile,
    double? GovernanceScore,
    double? GovernanceScorePercentile,
    int? ControversyLevel,
    @JsonKey(name: 'stock_type') int? stockType,
  }) = _FundamentalsEsgScores;

  factory FundamentalsEsgScores.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsEsgScoresFromJson(json);
}

@freezed
abstract class FundamentalsOutstandingSharesQuarter
    with _$FundamentalsOutstandingSharesQuarter {
  const factory FundamentalsOutstandingSharesQuarter({
    int? Year,
    String? Date,
    @JsonKey(name: 'Shares Million') double? sharesMillion,
    double? Shares,
    @JsonKey(name: 'stock_type') int? stockType,
  }) = _FundamentalsOutstandingSharesQuarter;

  factory FundamentalsOutstandingSharesQuarter.fromJson(
    Map<String, dynamic> json,
  ) => _$FundamentalsOutstandingSharesQuarterFromJson(json);
}

@freezed
abstract class FundamentalsOutstandingShares
    with _$FundamentalsOutstandingShares {
  const factory FundamentalsOutstandingShares({
    dynamic Date,
    @JsonKey(name: 'Shares Million') double? sharesMillion,
    double? Shares,
    @JsonKey(name: 'Quarterly / Annual') String? quarterlyAnnual,
  }) = _FundamentalsOutstandingShares;

  factory FundamentalsOutstandingShares.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsOutstandingSharesFromJson(json);
}

@freezed
abstract class GetAnalyticsHoldersSummary with _$GetAnalyticsHoldersSummary {
  const factory GetAnalyticsHoldersSummary({
    String? symbol,
    String? date,
    @JsonKey(name: 'currentshares') double? currentShares,
    String? Name,
    String? type,
    String? InstitutionsFunds,
  }) = _GetAnalyticsHoldersSummary;

  factory GetAnalyticsHoldersSummary.fromJson(Map<String, dynamic> json) =>
      _$GetAnalyticsHoldersSummaryFromJson(json);
}

@freezed
abstract class FundamentalsEarningsTrend with _$FundamentalsEarningsTrend {
  const factory FundamentalsEarningsTrend({
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Period') String? period,
    @JsonKey(name: 'Growth') double? growth,

    // Earnings estimates
    @JsonKey(name: 'Earnings Estimate Avg') double? earningsEstimateAvg,
    @JsonKey(name: 'Earnings Estimate Low') double? earningsEstimateLow,
    @JsonKey(name: 'Earnings Estimate High') double? earningsEstimateHigh,
    @JsonKey(name: 'Earnings Estimate Year Ago Eps')
    double? earningsEstimateYearAgoEps,
    @JsonKey(name: 'Earnings Estimate Number Of Analysts')
    int? earningsEstimateNumberOfAnalysts,
    @JsonKey(name: 'Earnings Estimate Growth') double? earningsEstimateGrowth,

    // Revenue estimates
    @JsonKey(name: 'Revenue Estimate Avg') double? revenueEstimateAvg,
    @JsonKey(name: 'Revenue Estimate Low') double? revenueEstimateLow,
    @JsonKey(name: 'Revenue Estimate High') double? revenueEstimateHigh,
    @JsonKey(name: 'Revenue Estimate Year Ago Eps')
    double? revenueEstimateYearAgoEps,
    @JsonKey(name: 'Revenue Estimate Number Of Analysts')
    int? revenueEstimateNumberOfAnalysts,
    @JsonKey(name: 'Revenue Estimate Growth') double? revenueEstimateGrowth,

    // EPS Trend
    @JsonKey(name: 'eps Trend Current') double? epsTrendCurrent,
    @JsonKey(name: 'eps Trend 7 days Ago') double? epsTrend7DaysAgo,
    @JsonKey(name: 'eps Trend 30 days Ago') double? epsTrend30DaysAgo,
    @JsonKey(name: 'eps Trend 60 days Ago') double? epsTrend60DaysAgo,
    @JsonKey(name: 'eps Trend 90 days Ago') double? epsTrend90DaysAgo,

    // EPS Revisions
    @JsonKey(name: 'eps Revisions Up Last 7 days') int? epsRevisionsUpLast7Days,
    @JsonKey(name: 'eps Revisions Up Last 30 days')
    int? epsRevisionsUpLast30Days,
    @JsonKey(name: 'eps Revisions Down Last 7 days')
    int? epsRevisionsDownLast7Days,
    @JsonKey(name: 'eps Revisions Down Last 30 days')
    int? epsRevisionsDownLast30Days,

    @JsonKey(name: 'stock_type') int? stockType,
  }) = _FundamentalsEarningsTrend;

  factory FundamentalsEarningsTrend.fromJson(Map<String, dynamic> json) =>
      _$FundamentalsEarningsTrendFromJson(json);
}

@freezed
abstract class FundamentalsInsiderTransactionsInsights
    with _$FundamentalsInsiderTransactionsInsights {
  const factory FundamentalsInsiderTransactionsInsights({
    @JsonKey(name: 'Top Three Traders') String? topThreeTraders,
    @JsonKey(name: 'Change') String? change,
    @JsonKey(name: 'post_transaction_amount') double? postTransactionAmount,
  }) = _FundamentalsInsiderTransactionsInsights;

  factory FundamentalsInsiderTransactionsInsights.fromJson(
    Map<String, dynamic> json,
  ) => _$FundamentalsInsiderTransactionsInsightsFromJson(json);
}
