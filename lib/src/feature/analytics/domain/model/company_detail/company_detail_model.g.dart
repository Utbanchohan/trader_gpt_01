// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyDetailModel _$CompanyDetailModelFromJson(Map<String, dynamic> json) =>
    _CompanyDetailModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: CompanyDetailData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$CompanyDetailModelToJson(_CompanyDetailModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_CompanyDetailData _$CompanyDetailDataFromJson(
  Map<String, dynamic> json,
) => _CompanyDetailData(
  fundamentalsSplitsDividends:
      (json['fundamentals_SplitsDividends'] as List<dynamic>?)
          ?.map(
            (e) =>
                FundamentalsSplitsDividends.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  fundamentalsInsiderTransactions:
      (json['fundamentals_InsiderTransactions'] as List<dynamic>?)
          ?.map(
            (e) => FundamentalsInsiderTransactions.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  fundamentalsHolders: (json['fundamentals_Holders'] as List<dynamic>?)
      ?.map((e) => FundamentalsHolders.fromJson(e as Map<String, dynamic>))
      .toList(),
  fundamentalsEsgScores: (json['fundamentals_ESGScores'] as List<dynamic>?)
      ?.map((e) => FundamentalsEsgScores.fromJson(e as Map<String, dynamic>))
      .toList(),
  fundamentalsOutstandingSharesQuarter:
      (json['fundamentals_outstandingShares_quarter'] as List<dynamic>?)
          ?.map(
            (e) => FundamentalsOutstandingSharesQuarter.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  fundamentalsOutstandingShares:
      (json['fundamentals_outstandingShares'] as List<dynamic>?)
          ?.map(
            (e) => FundamentalsOutstandingShares.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  fundamentalsInsiderTransactionsInsights:
      (json['fundamentals_InsiderTransactions_insights'] as List<dynamic>?)
          ?.map(
            (e) => FundamentalsInsiderTransactionsInsights.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  fundamentalsEarningsTrend:
      (json['fundamentals_Earnings_Trend'] as List<dynamic>?)
          ?.map(
            (e) =>
                FundamentalsEarningsTrend.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  getAnalyticsHoldersSummary:
      (json['get_analytics_holders_summary'] as List<dynamic>?)
          ?.map(
            (e) =>
                GetAnalyticsHoldersSummary.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  fundamentalsInsiderTransactionsInsightsSummary:
      json['fundamentals_insider_transactions_insights_summary'] as String?,
  holderSummary: (json['holder_summary'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  fundamentalsInsiderTransactionsSummary:
      json['fundamentals_InsiderTransactions_summary'] as String?,
  outstandingSharesSummary: json['outstandingShares_Summary'] as String?,
);

Map<String, dynamic> _$CompanyDetailDataToJson(
  _CompanyDetailData instance,
) => <String, dynamic>{
  'fundamentals_SplitsDividends': instance.fundamentalsSplitsDividends,
  'fundamentals_InsiderTransactions': instance.fundamentalsInsiderTransactions,
  'fundamentals_Holders': instance.fundamentalsHolders,
  'fundamentals_ESGScores': instance.fundamentalsEsgScores,
  'fundamentals_outstandingShares_quarter':
      instance.fundamentalsOutstandingSharesQuarter,
  'fundamentals_outstandingShares': instance.fundamentalsOutstandingShares,
  'fundamentals_InsiderTransactions_insights':
      instance.fundamentalsInsiderTransactionsInsights,
  'fundamentals_Earnings_Trend': instance.fundamentalsEarningsTrend,
  'get_analytics_holders_summary': instance.getAnalyticsHoldersSummary,
  'fundamentals_insider_transactions_insights_summary':
      instance.fundamentalsInsiderTransactionsInsightsSummary,
  'holder_summary': instance.holderSummary,
  'fundamentals_InsiderTransactions_summary':
      instance.fundamentalsInsiderTransactionsSummary,
  'outstandingShares_Summary': instance.outstandingSharesSummary,
};

_FundamentalsSplitsDividends _$FundamentalsSplitsDividendsFromJson(
  Map<String, dynamic> json,
) => _FundamentalsSplitsDividends(
  dividendDate: json['Dividend Date'] as String?,
  exDividendDate: json['Ex Dividend Date'] as String?,
  lastSplitDate: json['Last Split Date'] as String?,
  forwardAnnualDividendRate: (json['Forward Annual Dividend Rate'] as num?)
      ?.toDouble(),
  forwardAnnualDividendYield: (json['Forward Annual Dividend Yield'] as num?)
      ?.toDouble(),
  payoutRatio: (json['Payout Ratio'] as num?)?.toDouble(),
  lastSplitFactor: json['Last Split Factor'] as String?,
  stockType: (json['stock_type'] as num?)?.toInt(),
);

Map<String, dynamic> _$FundamentalsSplitsDividendsToJson(
  _FundamentalsSplitsDividends instance,
) => <String, dynamic>{
  'Dividend Date': instance.dividendDate,
  'Ex Dividend Date': instance.exDividendDate,
  'Last Split Date': instance.lastSplitDate,
  'Forward Annual Dividend Rate': instance.forwardAnnualDividendRate,
  'Forward Annual Dividend Yield': instance.forwardAnnualDividendYield,
  'Payout Ratio': instance.payoutRatio,
  'Last Split Factor': instance.lastSplitFactor,
  'stock_type': instance.stockType,
};

_FundamentalsInsiderTransactions _$FundamentalsInsiderTransactionsFromJson(
  Map<String, dynamic> json,
) => _FundamentalsInsiderTransactions(
  date: json['Date'] as String?,
  transactionDate: json['Transaction Date'] as String?,
  secLink: json['SEC Link'] as String?,
  ownerCik: json['Owner Cik'] as String?,
  ownerName: json['Owner Name'] as String?,
  transactionCode: json['Transaction Code'] as String?,
  transactionAmount: (json['Transaction Amount'] as num?)?.toDouble(),
  transactionPrice: (json['Transaction Price'] as num?)?.toDouble(),
  transactionAcquiredDisposed:
      json['Transaction Acquired / Disposed'] as String?,
  postTransactionAmount: (json['Post Transaction Amount'] as num?)?.toDouble(),
  stockType: (json['stock_type'] as num?)?.toInt(),
);

Map<String, dynamic> _$FundamentalsInsiderTransactionsToJson(
  _FundamentalsInsiderTransactions instance,
) => <String, dynamic>{
  'Date': instance.date,
  'Transaction Date': instance.transactionDate,
  'SEC Link': instance.secLink,
  'Owner Cik': instance.ownerCik,
  'Owner Name': instance.ownerName,
  'Transaction Code': instance.transactionCode,
  'Transaction Amount': instance.transactionAmount,
  'Transaction Price': instance.transactionPrice,
  'Transaction Acquired / Disposed': instance.transactionAcquiredDisposed,
  'Post Transaction Amount': instance.postTransactionAmount,
  'stock_type': instance.stockType,
};

_FundamentalsHolders _$FundamentalsHoldersFromJson(Map<String, dynamic> json) =>
    _FundamentalsHolders(
      date: json['Date'] as String?,
      currentShares: (json['Current Shares'] as num?)?.toDouble(),
      change: (json['Change'] as num?)?.toDouble(),
      name: json['Name'] as String?,
      totalShares: (json['Total Shares'] as num?)?.toDouble(),
      totalAssets: (json['Total Assets'] as num?)?.toDouble(),
      changePercentage: (json['Change Percentage'] as num?)?.toDouble(),
      institutionsFunds: json['InstitutionsFunds'] as String?,
    );

Map<String, dynamic> _$FundamentalsHoldersToJson(
  _FundamentalsHolders instance,
) => <String, dynamic>{
  'Date': instance.date,
  'Current Shares': instance.currentShares,
  'Change': instance.change,
  'Name': instance.name,
  'Total Shares': instance.totalShares,
  'Total Assets': instance.totalAssets,
  'Change Percentage': instance.changePercentage,
  'InstitutionsFunds': instance.institutionsFunds,
};

_FundamentalsEsgScores _$FundamentalsEsgScoresFromJson(
  Map<String, dynamic> json,
) => _FundamentalsEsgScores(
  Disclaimer: json['Disclaimer'] as String?,
  RatingDate: json['RatingDate'] as String?,
  TotalEsg: (json['TotalEsg'] as num?)?.toDouble(),
  TotalEsgPercentile: (json['TotalEsgPercentile'] as num?)?.toDouble(),
  EnvironmentScore: (json['EnvironmentScore'] as num?)?.toDouble(),
  EnvironmentScorePercentile: (json['EnvironmentScorePercentile'] as num?)
      ?.toDouble(),
  SocialScore: (json['SocialScore'] as num?)?.toDouble(),
  SocialScorePercentile: (json['SocialScorePercentile'] as num?)?.toDouble(),
  GovernanceScore: (json['GovernanceScore'] as num?)?.toDouble(),
  GovernanceScorePercentile: (json['GovernanceScorePercentile'] as num?)
      ?.toDouble(),
  ControversyLevel: (json['ControversyLevel'] as num?)?.toInt(),
  stockType: (json['stock_type'] as num?)?.toInt(),
);

Map<String, dynamic> _$FundamentalsEsgScoresToJson(
  _FundamentalsEsgScores instance,
) => <String, dynamic>{
  'Disclaimer': instance.Disclaimer,
  'RatingDate': instance.RatingDate,
  'TotalEsg': instance.TotalEsg,
  'TotalEsgPercentile': instance.TotalEsgPercentile,
  'EnvironmentScore': instance.EnvironmentScore,
  'EnvironmentScorePercentile': instance.EnvironmentScorePercentile,
  'SocialScore': instance.SocialScore,
  'SocialScorePercentile': instance.SocialScorePercentile,
  'GovernanceScore': instance.GovernanceScore,
  'GovernanceScorePercentile': instance.GovernanceScorePercentile,
  'ControversyLevel': instance.ControversyLevel,
  'stock_type': instance.stockType,
};

_FundamentalsOutstandingSharesQuarter
_$FundamentalsOutstandingSharesQuarterFromJson(Map<String, dynamic> json) =>
    _FundamentalsOutstandingSharesQuarter(
      Year: (json['Year'] as num?)?.toInt(),
      Date: json['Date'] as String?,
      sharesMillion: (json['Shares Million'] as num?)?.toDouble(),
      Shares: (json['Shares'] as num?)?.toDouble(),
      stockType: (json['stock_type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FundamentalsOutstandingSharesQuarterToJson(
  _FundamentalsOutstandingSharesQuarter instance,
) => <String, dynamic>{
  'Year': instance.Year,
  'Date': instance.Date,
  'Shares Million': instance.sharesMillion,
  'Shares': instance.Shares,
  'stock_type': instance.stockType,
};

_FundamentalsOutstandingShares _$FundamentalsOutstandingSharesFromJson(
  Map<String, dynamic> json,
) => _FundamentalsOutstandingShares(
  Date: json['Date'],
  sharesMillion: (json['Shares Million'] as num?)?.toDouble(),
  Shares: (json['Shares'] as num?)?.toDouble(),
  quarterlyAnnual: json['Quarterly / Annual'] as String?,
);

Map<String, dynamic> _$FundamentalsOutstandingSharesToJson(
  _FundamentalsOutstandingShares instance,
) => <String, dynamic>{
  'Date': instance.Date,
  'Shares Million': instance.sharesMillion,
  'Shares': instance.Shares,
  'Quarterly / Annual': instance.quarterlyAnnual,
};

_GetAnalyticsHoldersSummary _$GetAnalyticsHoldersSummaryFromJson(
  Map<String, dynamic> json,
) => _GetAnalyticsHoldersSummary(
  symbol: json['symbol'] as String?,
  date: json['date'] as String?,
  currentShares: (json['currentshares'] as num?)?.toDouble(),
  Name: json['Name'] as String?,
  type: json['type'] as String?,
  InstitutionsFunds: json['InstitutionsFunds'] as String?,
);

Map<String, dynamic> _$GetAnalyticsHoldersSummaryToJson(
  _GetAnalyticsHoldersSummary instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'date': instance.date,
  'currentshares': instance.currentShares,
  'Name': instance.Name,
  'type': instance.type,
  'InstitutionsFunds': instance.InstitutionsFunds,
};

_FundamentalsEarningsTrend _$FundamentalsEarningsTrendFromJson(
  Map<String, dynamic> json,
) => _FundamentalsEarningsTrend(
  date: json['Date'] as String?,
  period: json['Period'] as String?,
  growth: (json['Growth'] as num?)?.toDouble(),
  earningsEstimateAvg: (json['Earnings Estimate Avg'] as num?)?.toDouble(),
  earningsEstimateLow: (json['Earnings Estimate Low'] as num?)?.toDouble(),
  earningsEstimateHigh: (json['Earnings Estimate High'] as num?)?.toDouble(),
  earningsEstimateYearAgoEps: (json['Earnings Estimate Year Ago Eps'] as num?)
      ?.toDouble(),
  earningsEstimateNumberOfAnalysts:
      (json['Earnings Estimate Number Of Analysts'] as num?)?.toInt(),
  earningsEstimateGrowth: (json['Earnings Estimate Growth'] as num?)
      ?.toDouble(),
  revenueEstimateAvg: (json['Revenue Estimate Avg'] as num?)?.toDouble(),
  revenueEstimateLow: (json['Revenue Estimate Low'] as num?)?.toDouble(),
  revenueEstimateHigh: (json['Revenue Estimate High'] as num?)?.toDouble(),
  revenueEstimateYearAgoEps: (json['Revenue Estimate Year Ago Eps'] as num?)
      ?.toDouble(),
  revenueEstimateNumberOfAnalysts:
      (json['Revenue Estimate Number Of Analysts'] as num?)?.toInt(),
  revenueEstimateGrowth: (json['Revenue Estimate Growth'] as num?)?.toDouble(),
  epsTrendCurrent: (json['eps Trend Current'] as num?)?.toDouble(),
  epsTrend7DaysAgo: (json['eps Trend 7 days Ago'] as num?)?.toDouble(),
  epsTrend30DaysAgo: (json['eps Trend 30 days Ago'] as num?)?.toDouble(),
  epsTrend60DaysAgo: (json['eps Trend 60 days Ago'] as num?)?.toDouble(),
  epsTrend90DaysAgo: (json['eps Trend 90 days Ago'] as num?)?.toDouble(),
  epsRevisionsUpLast7Days: (json['eps Revisions Up Last 7 days'] as num?)
      ?.toInt(),
  epsRevisionsUpLast30Days: (json['eps Revisions Up Last 30 days'] as num?)
      ?.toInt(),
  epsRevisionsDownLast7Days: (json['eps Revisions Down Last 7 days'] as num?)
      ?.toInt(),
  epsRevisionsDownLast30Days: (json['eps Revisions Down Last 30 days'] as num?)
      ?.toInt(),
  stockType: (json['stock_type'] as num?)?.toInt(),
);

Map<String, dynamic> _$FundamentalsEarningsTrendToJson(
  _FundamentalsEarningsTrend instance,
) => <String, dynamic>{
  'Date': instance.date,
  'Period': instance.period,
  'Growth': instance.growth,
  'Earnings Estimate Avg': instance.earningsEstimateAvg,
  'Earnings Estimate Low': instance.earningsEstimateLow,
  'Earnings Estimate High': instance.earningsEstimateHigh,
  'Earnings Estimate Year Ago Eps': instance.earningsEstimateYearAgoEps,
  'Earnings Estimate Number Of Analysts':
      instance.earningsEstimateNumberOfAnalysts,
  'Earnings Estimate Growth': instance.earningsEstimateGrowth,
  'Revenue Estimate Avg': instance.revenueEstimateAvg,
  'Revenue Estimate Low': instance.revenueEstimateLow,
  'Revenue Estimate High': instance.revenueEstimateHigh,
  'Revenue Estimate Year Ago Eps': instance.revenueEstimateYearAgoEps,
  'Revenue Estimate Number Of Analysts':
      instance.revenueEstimateNumberOfAnalysts,
  'Revenue Estimate Growth': instance.revenueEstimateGrowth,
  'eps Trend Current': instance.epsTrendCurrent,
  'eps Trend 7 days Ago': instance.epsTrend7DaysAgo,
  'eps Trend 30 days Ago': instance.epsTrend30DaysAgo,
  'eps Trend 60 days Ago': instance.epsTrend60DaysAgo,
  'eps Trend 90 days Ago': instance.epsTrend90DaysAgo,
  'eps Revisions Up Last 7 days': instance.epsRevisionsUpLast7Days,
  'eps Revisions Up Last 30 days': instance.epsRevisionsUpLast30Days,
  'eps Revisions Down Last 7 days': instance.epsRevisionsDownLast7Days,
  'eps Revisions Down Last 30 days': instance.epsRevisionsDownLast30Days,
  'stock_type': instance.stockType,
};

_FundamentalsInsiderTransactionsInsights
_$FundamentalsInsiderTransactionsInsightsFromJson(Map<String, dynamic> json) =>
    _FundamentalsInsiderTransactionsInsights(
      topThreeTraders: json['Top Three Traders'] as String?,
      change: json['Change'] as String?,
      postTransactionAmount: (json['post_transaction_amount'] as num?)
          ?.toDouble(),
    );

Map<String, dynamic> _$FundamentalsInsiderTransactionsInsightsToJson(
  _FundamentalsInsiderTransactionsInsights instance,
) => <String, dynamic>{
  'Top Three Traders': instance.topThreeTraders,
  'Change': instance.change,
  'post_transaction_amount': instance.postTransactionAmount,
};
