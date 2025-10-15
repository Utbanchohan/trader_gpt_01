import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model_crypto.freezed.dart';
part 'info_model_crypto.g.dart';

@freezed
abstract class InfoCryptoResponse with _$InfoCryptoResponse {
  const factory InfoCryptoResponse({
    required InfoCryptoData? data,
    required String? msg,
    required int? status,
    required dynamic errors,
  }) = _InfoCryptoResponse;

  factory InfoCryptoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoCryptoResponseFromJson(json);
}

@freezed
abstract class InfoCryptoData with _$InfoCryptoData {
  const factory InfoCryptoData({
    @JsonKey(name: 'market_data') MarketData? marketData,
    Links? links,
    List<String>? categories,
    @JsonKey(name: 'market_cap') MarketCap? marketCap,
  }) = _InfoCryptoData;

  factory InfoCryptoData.fromJson(Map<String, dynamic> json) =>
      _$InfoCryptoDataFromJson(json);
}

@freezed
abstract class MarketData with _$MarketData {
  const factory MarketData({
    @JsonKey(name: 'high_24h') CurrencyValue? high24h,
    @JsonKey(name: 'low_24h') CurrencyValue? low24h,
    @JsonKey(name: 'atl') CurrencyValue? atl,
    @JsonKey(name: 'ath') CurrencyValue? ath,
    @JsonKey(name: 'max_high_7d') num? maxHigh7d,
    @JsonKey(name: 'min_low_7d') num? minLow7d,
    @JsonKey(name: 'open_24h') num? open24h,
    @JsonKey(name: 'price_change_24h') num? priceChange24h,
    @JsonKey(name: 'total_volume') CurrencyValue? totalVolume,
    @JsonKey(name: 'max_supply') num? maxSupply,
  }) = _MarketData;

  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);
}

@freezed
abstract class CurrencyValue with _$CurrencyValue {
  const factory CurrencyValue({num? usd}) = _CurrencyValue;

  factory CurrencyValue.fromJson(Map<String, dynamic> json) =>
      _$CurrencyValueFromJson(json);
}

@freezed
abstract class Links with _$Links {
  const factory Links({
    String? homepage,
    String? whitepaper,
    @JsonKey(name: 'repos_url') ReposUrl? reposUrl,
    @JsonKey(name: 'subreddit_url') String? subredditUrl,
    @JsonKey(name: 'cummunity') Community? community,
    @JsonKey(name: 'blockchain_site') List<String>? blockchainSite,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
abstract class ReposUrl with _$ReposUrl {
  const factory ReposUrl({List<String>? github, List<String>? bitbucket}) =
      _ReposUrl;

  factory ReposUrl.fromJson(Map<String, dynamic> json) =>
      _$ReposUrlFromJson(json);
}

@freezed
abstract class Community with _$Community {
  const factory Community({
    @JsonKey(name: 'facebook_url') String? facebookUrl,
    @JsonKey(name: 'twitter_url') String? twitterUrl,
    @JsonKey(name: 'telegram_url') String? telegramUrl,
    @JsonKey(name: 'bitcointalk_thread_url') String? bitcointalkThreadUrl,
  }) = _Community;

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}

@freezed
abstract class MarketCap with _$MarketCap {
  const factory MarketCap({
    @JsonKey(name: 'max_supply') num? maxSupply,
    @JsonKey(name: 'circulating_supply') num? circulatingSupply,
    @JsonKey(name: 'total_supply') num? totalSupply,
    @JsonKey(name: 'volume_24h') num? volume24h,
    @JsonKey(name: 'market_cap') num? marketCap,
    @JsonKey(name: 'fully_diluted_market_cap') num? fullyDilutedMarketCap,
    @JsonKey(name: 'market_cap_dominance') num? marketCapDominance,
  }) = _MarketCap;

  factory MarketCap.fromJson(Map<String, dynamic> json) =>
      _$MarketCapFromJson(json);
}
